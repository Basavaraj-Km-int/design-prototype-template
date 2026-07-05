# Video Script V1 — PAS Narrative

> **Duration**: ~4:30 (12 scenes)
> **Format**: Voiceover narration + on-screen text + visual/terminal animations
> **Storytelling**: PAS (Problem → Agitation → Solution)
> **Music**: Ambient electronic, builds tension through P/A, resolves in S

---

## SCENE 1 — COLD OPEN (0:00–0:20)

**Voiceover:**
"Intuit automates outcomes for a hundred million customers. Tax refunds appear like magic. Cash flow forecasts update overnight. Credit scores improve without effort. That's the promise: done for you."

**Text on screen:**
`Done for You.`
— large, centered, white on black. Fades in word by word.

**Visuals:**
Slow montage: TurboTax refund confirmation screen → QuickBooks cash flow dashboard → Credit Karma score increase. All showing outcomes, not interfaces. Clean, minimal motion.

**Timing:** 20 seconds. Music: low, ambient pulse.

---

## SCENE 2 — THE PARADOX (0:20–0:45)

**Voiceover:**
"But inside Intuit — the people building those experiences face the opposite reality. A product manager has an insight. A designer sketches a solution. A technologist wants to test it. And then..."

**Text on screen:**
`But who builds Done for You — for us?`
— fades in below the previous text. Pause on this for 2 beats.

**Visuals:**
Cut to: a terminal window filling the screen. The cursor blinks. Then errors start appearing, line by line, animated:

```
$ npm install @ids-ts/button
ERR! peer dep requires react@^18.2.0
$ npm install @ids-ts/table
ERR! CSS parsing error in LightningCSS
$ npm install @ids-ts/text-field
ERR! Unexpected token in PostCSS
```


Red error text animates line by line (0.4s per line). Terminal window has the classic three-dot title bar (red, yellow, green).

**Timing:** 25 seconds. Music: tension building, low bass.

---

## SCENE 3 — THE COST (0:45–1:15)

**Voiceover:**
"Every day a builder can't prototype is a day a product hypothesis goes untested. Decisions get made on slide decks. Assumptions go unvalidated. Engineering sprints get invested in directions that might not work — and often don't. The 3X Initiative's own diagnosis: 'Systemic friction can turn a two-day task into a ten-day project, forcing us to say no to important work on our roadmap.'"

**Text on screen:**
Three statements appear sequentially, each staying on screen:
1. `Decisions made on slide decks.`
2. `Hypotheses that never get tested.`
3. `2-day tasks → 10-day projects.`

**Visuals:**
Split screen. Left: a slide deck being presented (static, flat). Right: the same concept as a working prototype in a browser (interactive, alive). The slide deck side dims. The prototype side brightens. But then — the prototype side shows "404 — prototype not available" and dims too.

**Timing:** 30 seconds. Music: tension peak.

---

## SCENE 4 — THE DEEPER PROBLEM (1:15–1:45)

**Voiceover:**
"It's not that builders lack AI tools. Intuit rolled out Claude Code to every engineer in March 2026. But access to an AI tool is not the same as an AI tool that works for Intuit. Claude doesn't know that Intuit's Button uses 'purpose,' not 'variant.' It doesn't know that three IDS components break in Vite. It doesn't know D4D. It doesn't know Oxford comma, sentence case, 'select' not 'click.' Without this knowledge, every AI agent produces generic React that looks nothing like an Intuit product."

**Text on screen:**
`Access without fluency is waste, not leverage.`
— appears at the end of the voiceover. Bold. Centered.

**Visuals:**
Terminal showing Claude Code generating a component:
```
// What the AI writes without the harness
<Button variant="danger" type="primary" data-testid="delete">
```
Red ✗ appears. Then:
```
// What the AI writes WITH the harness
<Button purpose="destructive" priority="primary" automationId="delete">
```
Green ✓ appears.

**Timing:** 30 seconds. Music: tension sustains.

---

## SCENE 5 — THE MANDATE (1:45–2:10)

**Voiceover:**
"The CEO declared 2026 'pivotal and consequential.' The CTO said 'the days of clickable UI are over.' The 3X Initiative asks 10,000 builders to deliver the impact of 30,000. And in December 2025, AI crossed the agentic threshold — from autocomplete to end-to-end execution. The infrastructure for this new era doesn't exist yet."

**Text on screen:**
CEO quote: `"If you're not three steps ahead, you're going to lose the game."`
Then: `— Sasan Goodarzi, February 2026`

**Visuals:**
Timeline animation:
```
DEC 2025 ─── AI crosses agentic threshold
MAR 2026 ─── Claude Code rolled out
APR 2026 ─── Remove friction ← NOW
MAY 2026 ─── Scale company-wide
```
The "APR 2026" line pulses/highlights.

**Timing:** 25 seconds. Music: tension breaks into resolve.

---

## SCENE 6 — THE THESIS (2:10–2:30)

**Voiceover:**
"What if we applied Done for You — to ourselves? The same architecture pattern we use for customers — automate the outcome, hide the complexity, deliver the result — works for builders too. One command. Two minutes. Everything you need."

**Text on screen:**
`What if we applied Done for You — to ourselves?`
— large serif italic, centered. Holds for 3 beats.
Then transitions to:
`XD Dev Setup Kit`
— clean, modern, blue accent.

**Visuals:**
A single terminal window, clean and centered:
```
$ git clone xd-dev-setup-kit my-prototype
$ cd my-prototype && ./scaffold.sh
```
Pause. Then results appear line by line:
```
✓ React 18 + TypeScript + Vite
✓ 68+ IDS components (real @ids-ts)
✓ 6 brand tokens from Intuit CDN
✓ 13 MCP servers connected
✓ 2,400-line AI agent harness

Done in ~2 minutes. Ready to build.
```
Each ✓ line in green, animated sequentially.

**Timing:** 20 seconds. Music: opens up, hopeful.

---

## SCENE 7 — THE OPERATING MODEL (2:30–3:00)

**Voiceover:**
"The CTO calls this 'Service as Software' — not better tools with AI features, but automated delivery of outcomes. The builder writes a problem statement. The agent delivers a working prototype. IDS-compliant. Accessible. Figma-synced. Four steps. Two are the builder's: define the problem, judge the solution. That's agentic product development."

**Text on screen:**
```
STEP 1  Scaffold         (automated)
STEP 2  Write PRD        ★ builder
STEP 3  Agent builds     (automated)
STEP 4  Review + iterate ★ builder
```
★ steps highlighted in green. Others in dimmed white.

**Visuals:**
Full terminal animation showing the 4-step workflow. Each step group animates in sequence with 0.6s delays between groups.

**Timing:** 30 seconds. Music: confident, building.

---

## SCENE 8 — WHAT'S IN THE BOX (3:00–3:25)

**Voiceover:**
"One command delivers: 68 real IDS components. Design tokens for all six Intuit brands. Bidirectional Figma sync. Support for five AI agents — not locked to one vendor. 213 pre-built prompts. D4D methodology enforcement. WCAG 2.1 AA accessibility baked in. Safety guardrails. And a 2,400-line agent harness that teaches AI to build like an Intuit engineer."

**Text on screen:**
`The agent doesn't guess. It knows Intuit.`
— appears at the end. Holds.

**Visuals:**
Terminal inventory, animated line by line:
```
WHAT'S IN THE BOX
───────────────────────────────
✓ 68+ IDS components    real @ids-ts
✓ 6 brand tokens        CDN, 2-line switch
✓ 13 MCP servers        connected context
✓ 5 AI agents           not vendor-locked
✓ 213 prompts           copy-paste workflows
✓ D4D enforced          methodology built-in
✓ WCAG 2.1 AA           accessible by default
✗ destructive ops       blocked without approval
```

**Timing:** 25 seconds. Music: full, confident.

---

## SCENE 9 — THE PROOF (3:25–3:50)

**Voiceover:**
"One builder. No React experience. One afternoon. Zero lines of code written. A working, IDS-compliant prototype that leadership couldn't distinguish from engineering output. A PM used the kit to test a hypothesis — replacing a two-week engineering spike with a single afternoon. The hypothesis was invalidated the same week. That's not a failure. That's capital efficiency."

**Text on screen:**
Metrics appear one at a time, then final line:
`VELOCITY MULTIPLIER: 3X`
— in green, pulses once.

**Visuals:**
Terminal-style metrics table with → arrows. Each row animates in (0.4s delay).

**Timing:** 25 seconds. Music: peak energy.

---

## SCENE 10 — THE ROADMAP (3:50–4:05)

**Voiceover:**
"The 3X Initiative's 90-day roadmap — led by Chief Architect Chris Kasten — says April is for removing friction in how we build. This kit isn't ahead of schedule or behind it. It's executing exactly what the roadmap calls for — right now."

**Text on screen:**
`April 2026: Remove friction in how we build.`
Then: `This is that.`

**Visuals:**
Timeline terminal with `← YOU ARE HERE` pulsing at April.

**Timing:** 15 seconds. Music: resolving.

---

## SCENE 11 — THE COMPOUND (4:05–4:20)

**Voiceover:**
"This isn't a template. Templates are static. This is infrastructure that compounds. Every prototype teaches the next one. The design system is the competitive moat — 40 years of customer understanding encoded into components. This kit ensures AI uses that moat, not generic patterns from the open internet."

**Text on screen:**
`Today → Next → Future`
Cards animate in sequence.

**Visuals:**
Three progressive cards: Individual → Team → Org-wide.

**Timing:** 15 seconds. Music: expansive.

---

## SCENE 12 — THE MIRROR (4:20–4:30)

**Voiceover:**
"We are providing a Done-for-You experience for the product builders who are tasked with creating Done-for-You experiences for a hundred million customers. The meta is the message."

**Text on screen:**
`Done for You, for the builders who build Done for You.`
— serif italic, large, centered.

**Visuals:**
Terminal fades in. Three commands animate. "Done for you." in green. Hold. Fade to black.

`Design Engineering · GTM Tech XD · Intuit · 2026`

**Timing:** 10 seconds. Music: single note, silence.