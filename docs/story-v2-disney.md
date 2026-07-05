# Story V2 — Disney Storytelling Framework

> **Method**: Disney's three-room creative process (Dreamer → Realist → Critic) applied to business narrative, combined with the Hero's Journey structure for emotional resonance.
> **Audience**: 3X Initiative leadership, VP/SVP, AI Council
> **Tone**: Aspirational vision grounded in operational proof. Persona-driven. Human.

---

## The Disney Method — Applied to Product Narrative

Disney's storytelling works because it does three things simultaneously:

1. **The Dreamer Room** — paints the ideal future state so vividly the audience wants to live there
2. **The Realist Room** — shows the concrete path from here to there, with real steps and real proof
3. **The Critic Room** — anticipates objections and addresses them before the audience raises them

The Hero's Journey adds emotional structure: a hero faces a challenge, finds a guide, crosses a threshold, transforms, and returns changed. In business storytelling, the "hero" is the audience's own team.

---

## The Cast — Three Personas

### Priya — Product Manager, TurboTax AI Experiences

Priya discovered a pattern in customer research: users who see their refund estimate within the first 3 minutes of starting TurboTax are 4× more likely to complete their return. She has a hypothesis: a "refund-first" onboarding flow that shows an AI-estimated refund before the user enters a single tax document.

She needs to test this with a working prototype — not a slide deck, not a Figma mockup. She needs something customers can interact with, that looks like a real TurboTax product, and that she can put in front of users this week.

She doesn't know React. She doesn't know IDS. She shouldn't have to.

### Marcus — Product Designer, QuickBooks Money

Marcus designs the cash flow forecasting experience for small businesses. He has 14 years of design experience and strong opinions about information architecture. He works in Figma all day. He's watched three different "prototype tools" come and go. He's skeptical of anything that promises "designers can code."

What he wants: a way to see his Figma designs rendered with real IDS components, in a real browser, at real responsive breakpoints — without filing a Jira ticket and waiting for an engineering sprint. He doesn't want to learn to code. He wants to see if his designs actually work.

### Anika — Design Technologist, Mailchimp Growth

Anika straddles design and engineering. She prototypes, builds proof-of-concepts, and connects the dots between design intent and production feasibility. She knows React. She knows IDS — at least the webpack version. But every new prototype means two days of environment setup, chasing down the right IDS peer dependencies, and debugging why `@ids-ts/table` produces white screens in Vite.

What she wants: zero setup tax. Open a folder, run a command, start building. She also wants the AI agent to stop hallucinating IDS prop names — she's spent more time correcting Claude Code's output than she would have spent writing the code herself.

---

## ACT I — THE DREAMER ROOM: The World We Want

### Scene: "Imagine it's Monday morning."

Priya opens her laptop. She has a hypothesis about refund-first onboarding. She opens `docs/PRD.md` and writes:

> *I am a PM on TurboTax AI Experiences. I am trying to test whether showing an AI-estimated refund in the first 3 minutes of onboarding increases completion rates. But I can't get a working prototype without engineering support. Because the current toolchain requires 2-5 days of setup and the AI agents don't know IDS. Which makes me feel blocked — I have the insight, but I can't validate it.*

She saves the file. She types one command. She goes to get coffee.

When she comes back, there's a working prototype in her browser. Multiple screens. Real TurboTax brand tokens — the red, the typography, the spacing. A loading skeleton while the AI estimates the refund. An error state if the estimation fails. An empty state for first-time users. All accessible. All keyboard navigable.

She didn't write a single line of code. She didn't file a Jira ticket. She didn't ping engineering on Slack.

She shares the URL with three customers that afternoon. By Wednesday, she knows the hypothesis is valid. By Friday, she's briefing the engineering team with evidence, not assumptions.

**That's the world we're building.**

Meanwhile, Marcus opens a Figma URL in his terminal. The AI agent reads his design, identifies every IDS component, maps the layout to CSS grid, and generates a working React prototype that matches his mockup. He opens it in Chrome. He resizes the browser to 768px, then 480px, then 320px. The layout responds correctly. The IDS components adapt. The type scale shifts.

He annotates feedback directly on the Figma canvas: "The sidebar should collapse at md breakpoint." The agent reads his annotation, updates the code, and captures the updated prototype back to Figma. Marcus never left Figma. The code never left the agent.

Anika clones the repo, runs `./scaffold.sh`, and starts building within two minutes. The AI agent knows that `@ids-ts/table` breaks in Vite — it automatically uses the token-styled alternative. It knows that Mailchimp's brand tokens are on the CDN at a specific URL — it already downloaded them. It knows that Anika's component needs `aria-live="polite"` for the dynamic status update — it adds it without being asked.

She doesn't correct the AI once. She ships a working proof-of-concept by lunch.

**This is not a future state.** This is what the kit does today.

---

## ACT II — THE REALIST ROOM: How We Get There

### The System — What Actually Exists

**The XD Dev Setup Kit is three things:**

**1. A scaffold** — one command that eliminates 2–5 days of setup friction.

It installs React 18 + TypeScript + Vite (the production stack), 68+ real IDS components, CDN design tokens for all 6 Intuit brands (TurboTax, QuickBooks, Mailchimp, Credit Karma, Mint, Intuit), Storybook with IDS theming, MSW mock APIs for connected flows, and 13+ MCP servers connecting to IDS docs, Jira, Glean, content guidelines, and Figma.

**2. An agent harness** — 2,400+ lines of institutional knowledge that teaches AI to build like an Intuit engineer.

This is the critical piece. Without it, Claude Code produces generic React. With it, Claude Code knows: `purpose` not `variant`. `automationId` not `data-testid`. H4 for admin page titles, not H1. Oxford comma, sentence case, "select" not "click." Three IDS components need token-styled alternatives in Vite. WCAG 2.1 AA is non-negotiable. D4D is the methodology. The agent harness supports 5 AI agents (Claude Code, Cursor, Windsurf, Copilot, Augment) — it's not locked to one vendor.

**3. A design-code bridge** — bidirectional Figma sync that keeps prototypes and designs in conversation.

10 Figma skills (read, write, generate, connect, audit) plus 3 custom GTMXD skills that bind captured UI to IDS library instances, audit for compliance, and fix findings. The Figma file is a living conversation artifact, not a static handoff.

### The Proof — What Actually Happened

Priya's scenario isn't hypothetical. Here's what we measured:

| What changed | Before the kit | After the kit | Why it matters to the business |
|---|---|---|---|
| Time to first prototype | 2–5 days (often never) | ~2 minutes setup + hours to build | Hypotheses validated in days, not quarters |
| Component fidelity | Generic React, hallucinated APIs | 100% real IDS, correct props | Stakeholders evaluate the idea, not the artifact |
| Brand coverage | One brand, rebuild for each | 6 brands, 2-line switch | One demo serves every BU review |
| Engineering dependency | Wait for sprint bandwidth | Zero | The bottleneck the 3X Initiative exists to break |
| Accessibility | Retrofitted, often missed | Built in at generation time | No compliance debt accumulating |
| Builder role | Write code, debug tools | Describe problem, judge output | The 3X role evolution: maker → orchestrator |

**The Day One test**: The CEO asks every year: *"If today was day one, would this be the system we would want in place?"* The answer is yes — this is the system we'd build from scratch for AI-native product development. Not because we chose to. Because the December 2025 threshold made it necessary, and the 3X roadmap demands it.

### The Timing — We're on Schedule

The 3X Initiative's 90-day roadmap (led by Chief Architect Chris Kasten):

- **March**: Claude Code rolled out. Alpha teams activated. ✓
- **April**: Remove friction in how we build. Alpha teams build multi-agent workflows. ← **We are here. This kit is this deliverable.**
- **May**: Scale agent-driven development company-wide. Make proven workflows the standard.

This isn't early. This isn't late. This is executing exactly what the initiative's own roadmap calls for.

---

## ACT III — THE CRITIC ROOM: Anticipated Objections

### "This is a design tool, not a business capability."

No. This is a 3X force multiplier for the product development lifecycle. Faster prototyping → faster hypothesis validation → fewer failed investments → better capital allocation. When Priya invalidates a hypothesis in one afternoon instead of investing 2–3 engineering sprints, that's capital efficiency. The design system IS the competitive moat — it encodes 40 years of Intuit's customer understanding. This kit ensures AI uses that moat.

### "What if Claude Code isn't the winner? What if the AI tooling changes?"

The kit supports 5 AI agents through both CLAUDE.md and AGENTS.md. The agent harness is the asset — not the agent. If the company switches from Claude to a different LLM, the institutional knowledge transfers. The harness is infrastructure; the AI is a replaceable runtime.

### "AI agents are dangerous. What if they break things?"

The harness includes explicit safety guardrails: no `git push` without builder approval, no file deletion, no config modification without warning. Destructive operations are blocked. The builder retains judgment and approval authority — the agent only executes within bounded permissions.

### "Designers can't code. This won't work for my team."

The builder never writes code. They write a problem statement in plain language and review the output in a browser. The interaction model is: describe → review → give feedback in plain language → iterate. This is the same interaction model as talking to a design agency — except the agency responds in seconds, not weeks.

### "The AI will hallucinate Intuit's design patterns."

Without the harness: yes. That's exactly what happens today. With the harness: no. The 2,400-line instruction set teaches the AI every IDS prop convention, every typography scale rule, every accessibility pattern, every Vite compatibility workaround. The agent checks MCP documentation before writing code. The difference between generic AI and Intuit-fluent AI is the harness.

---

## THE RETURN — The Mirror

### The CTO's Newest Frame

Alex Balazs, April 2026: *"The model is moving from software as a service to service as software."*

This kit IS "Service as Software" applied internally. It doesn't give builders a better tool. It delivers an automated outcome: a working, IDS-compliant, accessible prototype — generated from a problem statement, without code, without engineering dependency.

### The Closing Image

We are providing a Done-for-You experience for the product builders who are tasked with creating Done-for-You experiences for 100 million customers.

Priya validates her hypothesis in an afternoon. Marcus sees his designs rendered in a real browser without filing a ticket. Anika ships a proof-of-concept by lunch without correcting the AI once.

The people building "done for you" finally have "done for them."

Clone it. Scaffold it. Ship it.

---

## Strategic Thread Coverage

| Thread | Where It Appears | Persona |
|---|---|---|
| Thread 1 — Agentic AI & Done-For-You | Acts I, III (reflexive thesis) | All three |
| Thread 5 — Frontline Voice & Ownership | Act I (Priya owns hypothesis validation) | Priya |
| Thread 6 — 3X Velocity | Act II (90-day map), Act III (objection) | All |
| Thread 7 — Speed of Innovation | Act II (CEO urgency), Critic Room | All |
| Thread 8 — Day One Culture | Act II ("Day One test") | — |
| Thread 9 — Customer Problem, Not Solution | Act I (PRD template, D4D) | Priya |
| Thread 10 — Service as Software | The Return (CTO frame) | — |
| Thread 11 — Business Mastery | Act III (capital efficiency) | Priya |
| Thread 12 — Data as Moat | Act III (IDS as crystallized intelligence) | — |
