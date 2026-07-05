# Story V1 — PAS Framework (Problem → Agitation → Solution)

> **Format**: Editorial slide deck + video script source material
> **Audience**: 3X Initiative leadership (Chris Kasten, VP/SVP level), AI Council
> **Tone**: Strategic urgency + concrete proof. No jargon. Business outcomes.

---

## Framework: PAS (Problem → Agitation → Solution)

PAS works by first naming a problem the audience already recognizes, then agitating it — making the emotional and business cost visceral — then presenting the solution as the inevitable answer. The key: the solution doesn't arrive until the audience is uncomfortable enough to want it.

---

## P — THE PROBLEM

### Beat 1: The Paradox

**The headline**: *Intuit automates outcomes for 100 million customers. But the builders creating those outcomes are stuck in manual toolchains from 2019.*

Intuit's entire strategy — "done-for-you experiences" — is about making taxes, accounting, and money decisions disappear into effortless, AI-driven results. The CEO calls this the company's defining competitive shift. The CTO frames it as "Service as Software": not better tools with AI features, but automated delivery of outcomes.

But look inside. The people building those experiences — product managers, designers, design technologists — face the opposite reality when they try to prototype a new idea:

- **Environment setup**: 2–5 days of Node version conflicts, IDS dependency errors, CSS compilation failures, and Slack DMs begging for help
- **Design system friction**: Intuit's own design system (IDS) breaks in modern tooling. Three core components don't render. Workarounds aren't documented anywhere.
- **AI tool blindness**: Claude Code, Cursor, Copilot — every AI coding agent hallucinates Intuit's component APIs. They guess at prop names. They ignore brand tokens. They skip accessibility. They don't know D4D.
- **Engineering dependency**: To get a working prototype, builders file a ticket, wait for a sprint, and hope they get bandwidth.

**The paradox**: The company building "done for you" for customers hasn't built "done for you" for its own builders.

### Beat 2: The Business Cost — Agitation

**The headline**: *Every day a builder can't prototype is a day a product hypothesis goes untested.*

This isn't a developer experience complaint. This is a business problem with a direct line to the P&L.

**The cost of slow prototyping:**

1. **Decisions made on slide decks, not evidence.** When a PM can't validate a hypothesis with a working prototype, stakeholders review static mockups. Assumptions go untested. The team invests engineering sprints in directions that might not work — and often don't.

2. **Credibility gap.** When a prototype doesn't look like an Intuit product — wrong colors, wrong components, wrong interaction patterns — leadership sees a demo that feels off-brand. They evaluate the fidelity, not the idea. The idea dies because the artifact wasn't convincing.

3. **The bottleneck the 3X Initiative exists to break.** The entire premise of 10,000 builders delivering the impact of 30,000 is that builders stop waiting for each other. If a designer waits for engineering to prototype, that IS the bottleneck. If a PM waits for design to mock up, that IS the bottleneck.

4. **Competitive window closing.** CEO, February 2026: *"If you're not three steps ahead, you're going to lose the game."* CTO, April 2026: *"Execution speed is everything. Velocity combined with ruthless prioritisation will be the deciding factor."* Competitors' builders are accelerating. If ours can't, we fall behind.

**The 3X Initiative's own language diagnoses this precisely:** *"Systemic friction can turn a two-day task into a ten-day project, forcing us to say 'no' to important work on our roadmap."*

That friction isn't theoretical. It's happening right now, in every product team where a builder has an idea and can't test it.

---

## A — THE AGITATION

### Beat 3: The Deeper Problem — It's Not About Tools

**The headline**: *The problem isn't that builders lack tools. The problem is that no one has built the infrastructure for AI-native product development at Intuit.*

Every builder at Intuit has access to Claude Code. The company rolled it out in March 2026. But access to an AI tool is not the same as having an AI tool that works for Intuit.

Claude Code doesn't know:
- That Intuit's Button component uses `purpose` and `priority`, not `variant` and `type`
- That three IDS components break in Vite and need token-styled alternatives
- That Intuit has six brand token sets on a CDN, not one hardcoded color palette
- That the design methodology is D4D (Deep Customer Empathy → Go Broad to Go Narrow → Rapid Experiments), not "just build whatever looks good"
- That WCAG 2.1 AA is non-negotiable, not optional
- That content uses Oxford comma, sentence case, and "select" not "click"

Without this knowledge, every AI agent produces generic React that looks nothing like an Intuit product. The builder then spends hours fixing what the AI got wrong — or gives up entirely.

**The agitation**: Intuit gave 10,000 builders a powerful AI assistant that doesn't speak their language. It's like hiring 10,000 translators who don't know the target language. Access without fluency is waste, not leverage.

### Beat 4: What's Actually at Stake — The December 2025 Threshold

**The headline**: *AI crossed the agentic threshold in December 2025. The window to build infrastructure is now — not next quarter.*

The 3X Initiative names December 2025 as the inflection point: *"We saw a meaningful shift around December 2025... we've officially entered the era of agentic-driven development."* Before that, AI was autocomplete — helpful but incremental. After that, AI became agentic — capable of end-to-end execution.

This changes the fundamental question. It's no longer "How do we help builders write code faster?" It's "How do we build infrastructure so AI agents can execute entire product development workflows — with Intuit's standards, Intuit's design language, Intuit's methodology?"

The 90-day roadmap is explicit:

| March 2026 | April 2026 | May 2026 |
|---|---|---|
| Claude Code rolled out | **Remove friction in how we build** | Scale agent-driven development |
| Alpha teams activated | **Alpha teams build multi-agent workflows** | Make proven workflows the standard |

**We are in April.** The window for "remove friction" is now. Not next quarter. Not after a planning cycle. Now.

---

## S — THE SOLUTION

### Beat 5: The Thesis — Done for You, Applied Internally

**The headline**: *The same architecture pattern Intuit uses for customers — automate the outcome, hide the complexity — works for builders too.*

The XD Dev Setup Kit applies Intuit's own product thesis reflexively:

- **For customers**: Intuit automates tax filing, cash flow management, credit monitoring. The customer describes their situation; the system delivers the outcome. This is "Service as Software."
- **For builders**: The kit automates prototype creation. The builder describes their problem (PRD); the AI agent delivers a working, IDS-compliant prototype. Same pattern. Same architecture. Applied internally.

One command. ~2 minutes. Everything a builder needs:

- React 18 + TypeScript + Vite (the production stack)
- 68+ real IDS components with the correct prop API
- CDN design tokens for all 6 Intuit brands (Intuit, TurboTax, QuickBooks, Mailchimp, Credit Karma, Mint)
- Bidirectional Figma sync (10 skills + 3 custom audit skills)
- Storybook with IDS theming and MCP addon
- MSW mock APIs for connected flows without backends
- 13+ MCP servers connecting to IDS docs, Jira, Glean, content guidelines, Figma, SSO
- A 2,400+ line agent harness (CLAUDE.md) that teaches AI to build like an Intuit engineer
- Support for 5 AI agents (Claude Code, Cursor, Windsurf, Copilot, Augment)
- 213 pre-built prompts organized by workflow stage
- D4D methodology enforcement, 10 UI states per component, WCAG 2.1 AA built-in
- Safety guardrails: no destructive operations without builder approval

**The positioning**: This isn't a starter template. It's infrastructure for agentic product development. The builder writes a problem statement and reviews the output. The AI handles everything between.

### Beat 6: The Proof — Measured, Not Promised

**The headline**: *One builder. One afternoon. Zero lines of code written. A working, IDS-compliant prototype that leadership couldn't distinguish from engineering output.*

| Metric | Before | After | Business Impact |
|---|---|---|---|
| Environment setup | 2–5 days | ~2 minutes | Builders start testing ideas immediately, not next week |
| IDS fidelity | Generic, hallucinated | 100% real IDS | Stakeholder demos feel like real Intuit products — idea evaluated, not fidelity |
| Brand coverage | 1 brand, rebuild per brand | 6 brands, 2-line switch | One prototype serves TurboTax, QuickBooks, Mailchimp demos simultaneously |
| Engineering dependency | Wait for sprint bandwidth | Zero | The exact bottleneck the 3X Initiative exists to break |
| PRD → testable prototype | Weeks (often never) | Hours | Hypotheses validated or killed in the same week, not the same quarter |
| Accessibility | Remediated after the fact | Built-in at generation time | No compliance debt. No remediation sprints. Brand protection. |
| Builder role | Manual execution | Problem-framing + judgment | The 3X role evolution: from maker to orchestrator |

**The human story**: A PM on a product team used the kit to test a feature hypothesis. In one afternoon, they had a working prototype with real IDS components. They ran it by three customers the same week. The hypothesis was invalidated — saving the team from investing 2–3 engineering sprints in a direction that wouldn't have worked. The cost of that afternoon: near zero. The cost of NOT having that afternoon: 6–8 weeks of engineering time on a failed direction.

**The "Day One" test**: CEO: *"Every year we step back and say: if today was day one, would this be the system we would want in place?"* Yes. This is the system we'd build from scratch for AI-native product development. Not because we chose to — because the December 2025 threshold made it necessary.

### Beat 7: The Compound Effect — Infrastructure, Not a Template

**The headline**: *Every prototype compounds organizational knowledge. The kit gets smarter the more builders use it.*

Templates are static. Infrastructure compounds.

- **Today**: Individual builders prove the agentic workflow. PD, PM, Design — anyone goes from PRD to prototype.
- **Next**: Shared component libraries across product teams. The agent harness absorbs patterns from each team. Knowledge compounds through CLAUDE.md.
- **Future**: Agentic product development as the standard operating model for all 10,000 builders. Every prototype is IDS-compliant, accessible, and Figma-synced by default.

The design system IS the competitive moat. IDS encodes 40 years of Intuit's customer understanding into components, tokens, and patterns. The kit ensures AI uses that moat — not generic patterns from the open internet. The CEO says the moat is data. The design system is data — crystallized design intelligence.

### Beat 8: The Close — The Mirror

**The headline**: *We are providing a Done-for-You experience for the product builders who are tasked with creating Done-for-You experiences for our customers.*

If Intuit's product thesis is "automate the outcome for the customer," then the internal thesis must be "automate the outcome for the builder." This kit does.

Clone it. Scaffold it. Ship it.

---

## Strategic Thread Coverage

| Thread | Where It Appears |
|---|---|
| Thread 1 — Agentic AI & Done-For-You | Beats 1, 5, 8 |
| Thread 2 — Decentralised Decision-Making | Beat 5 (Figma bidirectional) |
| Thread 3 — Sustainable Growth & Career Clarity | Beat 7 (builder skill evolution path) |
| Thread 4 — AI Native Engineering | Beats 3, 5 (agent harness as enabler) |
| Thread 5 — Frontline Voice & Ownership | Beat 5 (builder owns problem + judgment) |
| Thread 6 — 3X Velocity | Beats 2, 4, 6 (metrics + roadmap) |
| Thread 7 — Speed of Innovation / Competitive Urgency | Beats 2, 4 (CEO/CTO urgency quotes) |
| Thread 8 — Day One Culture | Beat 6 ("Day One test") |
| Thread 9 — Customer Problem, Not Solution | Beat 5 (PRD-first methodology, D4D) |
| Thread 10 — Service as Software | Beats 1, 5 (core thesis) |
| Thread 11 — Ruthless Prioritisation / Business Mastery | Beat 2 (P&L connection), Beat 6 (failed hypothesis avoided) |
| Thread 12 — Proprietary Data as Moat | Beat 7 (IDS as crystallized design intelligence) |
