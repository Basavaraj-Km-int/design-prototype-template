#!/usr/bin/env node
/**
 * Capture Google Drive PDF viewer slides as PNGs (when Download is disabled).
 *
 * Prereqs:
 * 1. Google Chrome open with THIS FILE already visible in the Drive viewer
 *    (same tab you use when you see "State of the Company" / PDF toolbar).
 * 2. Chrome must expose CDP on localhost. Either:
 *    - chrome://inspect/#remote-debugging → enable Remote debugging (Chrome 144+), then find the
 *      WebSocket/browser URL (some setups use a pipe; if localhost:9222 fails, see Playwright docs), OR
 *    - Quit Chrome completely, then start ONLY:
 *        /Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome \
 *          --remote-debugging-port=9222 \
 *          --user-data-dir=/tmp/chrome-cdp-once
 *      (that uses a fresh profile — log in to Google + open the file in that window only if needed)
 *
 * Most reliable for your logged-in profile: enable Remote debugging in chrome://inspect, then set
 * CHROME_CDP_URL from DevTools → the debugging target that lists your Drive tab.
 *
 * Usage:
 *   npm install
 *   CHROME_CDP_URL=http://127.0.0.1:9222 SLIDE_COUNT=66 npm run capture:drive-slides
 *
 * Output: docs/assets/slides/slide-001.png … slide-NNN.png
 *
 * Fallback if CDP is painful: Cmd+P → "Save as PDF" (often allowed when Download is not).
 */

import { chromium } from "playwright";
import fs from "node:fs";
import path from "node:path";

function getCdpUrl() {
  if (process.env.CHROME_CDP_URL) return process.env.CHROME_CDP_URL;
  try {
    const portFile = path.join(
      process.env.HOME,
      "Library/Application Support/Google/Chrome/DevToolsActivePort",
    );
    const lines = fs.readFileSync(portFile, "utf8").trim().split("\n");
    if (lines.length >= 2) {
      return `ws://127.0.0.1:${lines[0]}${lines[1]}`;
    }
    return `http://127.0.0.1:${lines[0]}`;
  } catch {
    return "http://127.0.0.1:9222";
  }
}
const CDP = getCdpUrl();
const SLIDE_COUNT = Math.max(1, parseInt(process.env.SLIDE_COUNT || "66", 10));
const OUT_DIR = path.join(process.cwd(), "docs/assets/slides");
const KEY = process.env.SLIDE_KEY || "ArrowRight"; // Drive PDF viewer: ArrowRight or PageDown

function delay(ms) {
  return new Promise((r) => setTimeout(r, ms));
}

async function main() {
  fs.mkdirSync(OUT_DIR, { recursive: true });

  console.error(`Connecting to Chrome CDP at ${CDP} …`);
  const browser = await chromium.connectOverCDP(CDP);

  const contexts = browser.contexts();
  let page = null;
  for (const ctx of contexts) {
    for (const p of ctx.pages()) {
      const u = p.url();
      if (u.includes("drive.google.com") && u.includes("/file/")) {
        page = p;
        break;
      }
    }
    if (page) break;
  }
  if (!page) {
    const first = contexts[0]?.pages()?.[0];
    if (!first) {
      console.error(
        "No page found. Open the Drive file in Chrome first, then re-run.",
      );
      process.exit(1);
    }
    page = first;
    console.error("Using first tab:", first.url());
  } else {
    console.error("Using Drive tab:", page.url());
  }

  await page.bringToFront();
  await delay(800);

  for (let i = 1; i <= SLIDE_COUNT; i++) {
    const file = path.join(
      OUT_DIR,
      `slide-${String(i).padStart(3, "0")}.png`,
    );
    await page.screenshot({ path: file, fullPage: false });
    console.error(`Wrote ${file}`);
    if (i < SLIDE_COUNT) {
      await page.keyboard.press(KEY);
      await delay(600);
    }
  }

  await browser.close();
  console.error("Done.");
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
