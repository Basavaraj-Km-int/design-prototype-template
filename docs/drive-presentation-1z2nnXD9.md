# Presentation export (blocked — Google access required)

**Source:** [Google Drive file](https://drive.google.com/file/d/1z2nnXD9XQPpdu4nAGTPsEqT6l1SFWxbh/view)  
**File ID:** `1z2nnXD9XQPpdu4nAGTPsEqT6l1SFWxbh`  
**Date attempted:** 2026-04-15

## Chrome DevTools MCP (official default)

`~/.cursor/mcp.json` uses the **upstream** [`chrome-devtools-mcp`](https://github.com/ChromeDevTools/chrome-devtools-mcp) snippet:

- **`command`:** `npx`
- **`args`:** `["-y", "chrome-devtools-mcp@latest"]`

By default that starts Chrome with the tool’s profile under `~/.cache/chrome-devtools-mcp/…`, not your daily browser session. To attach to **your already running** Chrome (e.g. for Google login), see the README section **“Automatically connecting to a running Chrome instance”** and add **`--autoConnect`** (plus `chrome://inspect/#remote-debugging`) — optional, not applied in the checked-in MCP config.

**Not logged in:** **Cursor Simple Browser** (`cursor-ide-browser`) is separate from Google Chrome; use Chrome DevTools MCP tools for real Chrome automation.

## What was attempted

1. **Browser automation (Cursor IDE browser)** — Navigating to the Drive `view` URL redirected to **Google Sign-in** (`accounts.google.com`). The automated session is not logged into Google, so the deck never loads and per-slide screenshots cannot be taken.
2. **Anonymous download** — `drive.google.com/uc?export=download&id=…` returned an HTML sign-in page, not the file bytes.
3. **Direct Slides URLs** — `docs.google.com/presentation/d/<id>/preview` and `/edit` returned **Page Not Found** for this ID in the unauthenticated browser (the item may not be a native Google Slides doc, or access is denied until signed in).
4. **Google Workspace CLI (`gws`)** — `gws drive files get` for this file ID returned **404 File not found** for the Google account configured in this environment (no access or wrong account).

## What you need to do to finish this

Pick one of the following so a person or tool can see the file **without** an extra sign-in step inside the automation profile:

1. **Sharing (simplest for re-running automation)**  
   In Drive: **Share** → **General access** → **Anyone with the link** → **Viewer** (or your org’s equivalent). Then open the same link in a browser where the automation runs *or* retry this task after that change.

2. **Export and add files to the repo**  
   - **Google Slides:** File → **Download** → Microsoft PowerPoint (`.pptx`) or PDF.  
   - **PDF upload:** File may already be a PDF; download it and place under e.g. `docs/assets/presentation-1z2nnXD9.pdf`.  
   Then ask to regenerate screenshots from local/PDF or from Slides with a logged-in session.

3. **Signed-in capture on your machine**  
   Open the Drive link in **Chrome while logged in**, step through slides (e.g. arrow keys), and save screenshots manually, or use a local Playwright script with your user data directory (only on your machine — do not commit credentials).

## Slide content (to be filled in)

After you have access, replace the placeholder below with each slide’s text and optional image paths.

| # | Screenshot | Notes / transcript |
|---|------------|--------------------|
| 1 | *(add path under `docs/assets/slides/`)* | |
| 2 | | |
| 3 | | |

## Optional: asset folder

Create:

```text
docs/assets/slides/
```

and name files `slide-01.png`, `slide-02.png`, … after capture.

---

*This document was generated after an automated capture could not access the file due to Google authentication and API permissions.*
