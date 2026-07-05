# Video Script V2 — Disney Narrative (Persona-Driven)

> **Duration**: ~5:00 (12 scenes)
> **Format**: Voiceover narration + on-screen text + visual/terminal animations
> **Storytelling**: Disney method (Dreamer → Realist → Critic) + Hero's Journey with three personas
> **Music**: Warm, human, story-driven. Piano and ambient. Builds hope, not just urgency.

---

## THE CAST

**Priya** — PM, TurboTax AI Experiences. Has a customer insight. Needs to validate it this week.
**Marcus** — Product Designer, QuickBooks Money. 14 years experience. Skeptical of "designers can code."
**Anika** — Design Technologist, Mailchimp Growth. Knows React. Tired of 2-day setup tax.

---

## SCENE 1 — THE WORLD THEY LIVE IN (0:00–0:25)

**Voiceover:**
"Priya found a pattern in customer research. Users who see their refund estimate in the first three minutes are four times more likely to finish their return. She has a hypothesis. She has conviction. What she doesn't have — is a way to test it."

**Text on screen:**
`She has the insight.`
`She can't validate it.`
— two lines, appear sequentially. Clean white on dark.

**Visuals:**
Abstract: a spark of light (the insight) → it tries to move forward but hits a wall → the wall is labeled with error messages in terminal font. The spark dims but doesn't go out.

**Timing:** 25 seconds. Music: single piano note, atmospheric.

---

## SCENE 2 — THE ORDINARY WORLD (0:25–0:55)

**Voiceover:**
"Marcus designs cash flow forecasting for small businesses. He works in Figma. He wants to see his designs rendered in a real browser — real IDS components, real responsive breakpoints — without filing a Jira ticket. But every prototype tool he's tried has failed him. He's skeptical. Anika straddles design and engineering. She knows React, she knows IDS — but every new prototype means two days of environment setup. Node conflicts, peer dependency errors, CSS compilation failures. She's spent more time fixing AI output than she would have spent writing the code herself."

**Text on screen:**
Three persona cards appear, each with name + one-line need:
- `Priya: "I have a hypothesis. I need a prototype this week."`
- `Marcus: "I want to see my Figma designs work in a real browser."`
- `Anika: "I need zero setup tax. And an AI that stops guessing."`

**Visuals:**
Terminal window showing Anika's reality:

```text
$ npm install @ids-ts/button
ERR! peer dep requires react@^18.2.0
$ npm install @ids-ts/table
ERR! CSS parsing error in LightningCSS
# 2 days later: environment works. Energy gone.
```

**Timing:** 30 seconds. Music: piano continues, slight tension.


---

## SCENE 3 — THE CALL TO ADVENTURE (0:55–1:20)

**Voiceover:**
"In December 2025, AI crossed a threshold. It went from autocomplete — finishing your sentences — to agentic: executing entire workflows end to end. The CEO declared 2026 'pivotal and consequential.' The CTO said the days of clickable UI are over. The 3X Initiative was born: 10,000 builders delivering the impact of 30,000. But here's the gap: Intuit gave every builder a powerful AI assistant. It just doesn't speak their language."

**Text on screen:**
`December 2025: AI crossed the agentic threshold.`
Pause.
`Access without fluency is waste, not leverage.`

**Visuals:**
Terminal comparison, side by side:

```text
WITHOUT the harness:                   WITH the harness:
<Button variant="danger"               <Button purpose="destructive"
  type="primary"                         priority="primary"
  data-testid="del">                     automationId="del">
✗ Wrong props. Generic React.          ✓ Correct IDS API. Intuit-native.
```

**Timing:** 25 seconds. Music: tension rising, piano adds strings.

---

## SCENE 4 — THE GUIDE APPEARS (1:20–1:45)

**Voiceover:**
"What if we applied Intuit's own product thesis — automate the outcome, hide the complexity, deliver the result — to the builders themselves? Not a better tool. A Done-for-You experience. One command. Two minutes. Everything you need."

**Text on screen:**
`What if we applied Done for You — to ourselves?`
— serif italic, large. Holds 3 beats.

Then: `XD Dev Setup Kit` — with blue accent.

**Visuals:**
Clean terminal, centered:

```text
$ git clone xd-dev-setup-kit my-prototype
$ cd my-prototype && ./scaffold.sh

✓ React 18 + TypeScript + Vite
✓ 68+ IDS components (real @ids-ts)
✓ 6 brand tokens from Intuit CDN
✓ 2,400-line AI agent harness
✓ 5 AI agents supported
✓ 213 pre-built prompts

Done in ~2 minutes. Ready to build.
```

Green ✓ lines animate one by one.

**Timing:** 25 seconds. Music: opens up. Hope. Resolution beginning.

---

## SCENE 5 — CROSSING THE THRESHOLD: PRIYA (1:45–2:15)

**Voiceover:**
"Priya opens her laptop. She writes one file — docs/PRD.md — in plain language: 'I am a PM on TurboTax. I'm trying to test whether showing a refund estimate in the first three minutes increases completion.' She saves it. She types one command. She gets coffee. When she comes back, there's a working prototype in her browser. Multiple screens. Real TurboTax branding — the red, the typography, the spacing. Loading skeletons. Error states. Empty states. All accessible. All keyboard navigable. She didn't write a single line of code."

**Text on screen:**
`Priya's afternoon:`
Then a sequence:
1. `docs/PRD.md saved`
2. `claude "Read the PRD and build it"`
3. `→ 4 screens generated`
4. `→ TurboTax brand tokens applied`
5. `→ WCAG 2.1 AA: passed`

**Visuals:**
Terminal showing the agent workflow animated step by step:

```text
STEP 2 ─── write PRD ★
  "I am a PM trying to validate refund-first onboarding..."

STEP 3 ─── agent builds
  → generating design.md...
  → selecting IDS components...
  → applying TurboTax tokens...
  → building accessible UI...
  → 4 screens complete

STEP 4 ─── review ★
  Priya: "Add a loading skeleton for the refund estimate"
  → Done.
```

**Timing:** 30 seconds. Music: building, warm, triumphant undercurrent.

---

## SCENE 6 — CROSSING THE THRESHOLD: MARCUS (2:15–2:40)

**Voiceover:**
"Marcus pastes a Figma URL into his terminal. The agent reads his design, identifies every IDS component, maps the layout to CSS grid, and generates a working React prototype. He opens it in Chrome. He resizes the window — 1024, 768, 480, 320. The layout responds. The components adapt. The type scale shifts. He annotates feedback on the Figma canvas. The agent reads it, updates the code, captures the result back to Figma. Marcus never left Figma. He never wrote code. He never filed a ticket."

**Text on screen:**
`Figma → Code → Browser → Feedback → Code → Figma`
— as a flow, animated arrows connecting each step.

**Visuals:**
Split screen: Left shows a Figma canvas with IDS components. Right shows a browser rendering the same design. An annotation appears on the Figma side ("collapse sidebar at md"). The browser side updates. The Figma side updates with the new capture.

**Timing:** 25 seconds. Music: confident, flowing.

---

## SCENE 7 — CROSSING THE THRESHOLD: ANIKA (2:40–3:00)

**Voiceover:**
"Anika clones the repo. Runs scaffold. Starts building in two minutes — not two days. The agent knows that @ids-ts/table breaks in Vite — it uses the token-styled alternative automatically. It knows Mailchimp's brand tokens are on the CDN — already downloaded. It adds aria-live attributes without being asked. She doesn't correct the AI once. She ships a proof-of-concept by lunch."

**Text on screen:**
`Zero corrections. Shipped by lunch.`

**Visuals:**
Terminal showing Anika's session:

```text
$ ./scaffold.sh
Done in 1m 47s.

$ claude "Build the campaign performance dashboard"
  → Using token-styled table (Vite compat)
  → Mailchimp tokens: applied
  → aria-live="polite" on status updates
  → 10 UI states generated per component

Zero corrections needed.
```

**Timing:** 20 seconds. Music: peak confidence.


---

## SCENE 8 — THE PROOF (3:00–3:25)

**Voiceover:**
"These aren't hypothetical scenarios. Here's what we measured. Environment setup: from days to two minutes. IDS fidelity: from hallucinated props to 100% real IDS. Brand coverage: from one brand to six with a two-line change. Engineering dependency: from blocked to zero. PRD to testable prototype: from weeks to hours. Accessibility: from bolted on after the fact to built in at generation time."

**Text on screen:**
Terminal metrics, each row animating in:

```text
METRIC              BEFORE          AFTER
──────────────────────────────────────────
Setup time          2–5 days     →  ~2 min
IDS fidelity        generic      →  100% real
Brand coverage      1 brand      →  6 brands
Eng dependency      wait sprints →  zero
PRD → prototype     weeks        →  hours
Accessibility       bolt-on      →  built-in
──────────────────────────────────────────
VELOCITY MULTIPLIER:               3X
```

**Visuals:**
Each row slides in from right. Final "3X" line appears in green with a subtle pulse.

**Timing:** 25 seconds. Music: triumphant, resolved.

---

## SCENE 9 — THE ROAD MAP (3:25–3:45)

**Voiceover:**
"This isn't a side project. The 3X Initiative's 90-day roadmap — led by Chief Architect Chris Kasten — says April 2026 is for removing friction in how we build. Alpha teams building multi-agent workflows. We're not early. We're not late. We're executing exactly what the initiative's own roadmap calls for."

**Text on screen:**
`April 2026: Remove friction in how we build.`
Pause.
`This is that deliverable.`

**Visuals:**
Timeline terminal:

```text
DEC 2025 ─── AI crosses agentic threshold
MAR 2026 ─── Claude Code rolled out         ✓
APR 2026 ─── Remove friction                ← YOU ARE HERE
MAY 2026 ─── Scale company-wide
─────────────────────────────────────────────
Chief Architect: Chris Kasten
```

"YOU ARE HERE" pulses in amber.

**Timing:** 20 seconds. Music: grounded, purposeful.

---

## SCENE 10 — THE TRANSFORMATION (3:45–4:10)

**Voiceover:**
"The CEO asks every year: 'If today was day one, would this be the system we'd want in place?' Yes. This is the system we'd build from scratch. Not because we chose to — because the December 2025 threshold made it necessary. And it doesn't stop with one builder. Every prototype compounds knowledge. Shared components. Shared patterns. Shared agent instructions. The design system is the competitive moat — 40 years of customer understanding encoded into components. This kit ensures AI uses that moat."

**Text on screen:**
Three cards, progressive:

```text
Today:    Individual builders prove the workflow
Next:     Shared libraries compound across teams
Future:   Standard operating model for 10,000 builders
```

**Visuals:**
Three cards animate in sequence, each slightly larger. Final card fills the frame. Then the CEO quote appears below:

`"If today was day one, would this be the system we'd want?" — Yes.`

**Timing:** 25 seconds. Music: expansive, emotional peak.

---

## SCENE 11 — THE RETURN (4:10–4:35)

**Voiceover:**
"Priya validated her hypothesis in one afternoon. She shared it with three customers the same week. The insight was real — she saved her team from a two-sprint investment in the wrong direction. Marcus saw his Figma designs in a real browser, at real breakpoints, without filing a ticket. For the first time, he said: 'I can see if my designs actually work.' Anika shipped a proof-of-concept by lunch without correcting the AI once. She said: 'This is what I've been waiting for — tools that speak my language.'"

**Text on screen:**
Three persona outcomes:
- `Priya: Hypothesis validated. Two sprints saved.`
- `Marcus: Designs rendered in browser. No tickets filed.`
- `Anika: POC shipped by lunch. Zero AI corrections.`

**Visuals:**
The three persona cards from Scene 2 reappear — but now each has a green ✓ and their outcome statement. The wall from Scene 1 is gone. The spark of light (Priya's insight) passes through freely.

**Timing:** 25 seconds. Music: warm, emotional, resolving.

---

## SCENE 12 — THE MIRROR (4:35–5:00)

**Voiceover:**
"The CTO says the model is moving from Software as a Service to Service as Software. Not better tools with AI features — automated delivery of outcomes. This kit IS Service as Software, applied internally. We are providing a Done-for-You experience for the product builders who are tasked with creating Done-for-You experiences for a hundred million customers. The people building 'done for you' finally have 'done for them.'"

**Text on screen:**
`Done for You, for the builders who build Done for You.`
— serif italic, large, centered. Holds for 4 beats.

**Visuals:**
Terminal fades in below:

```text
$ git clone xd-dev-setup-kit my-prototype
$ cd my-prototype && ./scaffold.sh
$ claude "Read the PRD and build it"

Done for you.
```

"Done for you." appears in green. Holds. Fade to black.

Final card: `Design Engineering · GTM Tech XD · Intuit · 2026`

**Timing:** 25 seconds. Music: single piano chord. Sustain. Silence.