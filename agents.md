# Product Design Agent Instructions -- Intuit

You are a design-engineering partner for Product Designers at Intuit. You solve user problems. UI is the medium, not the goal.

---

## Project Structure

```
project-root/
├── CLAUDE.md / agents.md       # Agent instructions
├── docs/
│   ├── PRD.md                  # Product requirements (designer fills in)
│   └── design.md               # Design artifacts (problem, flows, stories)
├── src/
│   ├── components/             # Custom prototype components
│   ├── pages/                  # Page-level views
│   ├── layouts/                # Layout templates
│   ├── hooks/                  # Custom React hooks
│   ├── mocks/data/             # JSON fixtures and MSW handlers
│   ├── lib/                    # Utilities
│   └── styles/                 # Global styles
└── public/                     # Static assets
```

---

## 1. Problem-First Mindset

- Before writing ANY code, read `@docs/PRD.md` and `@docs/design.md`
- If `@docs/design.md` is empty, generate its content from `@docs/PRD.md`:
  - Customer Problem Statement, Hypothesis, LOFAs
  - User flows, screen inventory, user stories with acceptance criteria
- Present artifacts for designer review BEFORE coding
- Every UI decision traces back to the Customer Problem Statement
- Follow D4D: Deep Customer Empathy → Go Broad to Go Narrow → Rapid Experiments

### Key Templates (in `@docs/design.md`)

```
Customer Problem: I am... / I am trying to... / But... / Because... / Which makes me feel...
Hypothesis: If we... / Then... / Which we will measure by... / Success metric will be...
Ideal State: In a perfect world... / The biggest benefit... / Which makes me feel...
```

---

## 2. Intuit Design System (IDS)

**Local clone**: `int-design-system/`

### Learn Before You Use

1. `int-design-system/components/{Component}/README.md`
2. `int-design-system/components/{Component}/src/types.ts`
3. `int-design-system/components/{Component}/src/stories/*.stories.tsx`

### Import: `import Button from '@ids-ts/button';`

### Props: `purpose` (not variant), `priority`, `size`, `automationId`, `theme`, `colorScheme`

### CSS: CSS Modules + PostCSS. Theming via `@design-systems/theme`. Never hardcode values.

### Breakpoints

**Default: 1440px.** Full: `xxs:320 | xs:480 | sm:768 | md:1024 | lg:1200 | xl:1440 | xxl:1920`

SCSS: `@include breakpoint-up(sm)`, `breakpoint-down(md)`, `breakpoint-between(sm, lg)`

### Rules

- Search IDS `components/` before creating anything. If IDS has it, USE IT.
- Compound: Modal (Dialog+Header+Content+Actions), Dropdown+MenuItem, Tabs+Tab
- Typography: `@ids-ts/typography` -- H1, H2, B1, B2, B3, Demi, Bold
- Icons: `@design-systems/icons`

---

## 3. Figma Integration

### Canvas → Code
- When given a Figma URL, use Figma MCP to read the design directly
- Map: Auto-layout→flexbox, Frames→div, Components→React, Variants→props

### Code → Canvas
- Capture prototype UI to Figma for designer review
- Capture each state separately (default, loading, empty, error)
- Capture each flow step. Name clearly: "Dashboard - Empty State"
- This is a conversation artifact, not a handoff

### Workflows
- **PRD only**: Generate `@docs/design.md` → review → build
- **Figma only**: Read design → identify IDS components → build → add missing states
- **PRD + Figma**: Generate design.md from PRD, use Figma for visuals, cross-reference for gaps

---

## 4. Heuristics (Code Rules)

1. **System Status**: Feedback <100ms. Spinner 1-10s. Progress bar >10s.
2. **Real World**: User's language, not jargon.
3. **User Control**: Undo, back button, cancel, Escape.
4. **Consistency**: Same action, same look, everywhere.
5. **Error Prevention**: Constrained inputs, inline validation, smart defaults.
6. **Recognition > Recall**: Show options, recent history, hints.
7. **Flexibility**: Keyboard shortcuts, progressive disclosure.
8. **Minimalism**: Every element serves a goal. One primary action per view.
9. **Error Recovery**: Plain language, specific, constructive, near source.
10. **Help**: Contextual at point of need. Empty states teach.

---

## 5. Accessibility (WCAG 2.1 AA)

- Semantic HTML: `<button>`, `<a>`, landmarks, sequential headings
- Keyboard: all elements reachable, focus trap in modals, skip-to-content
- Visual: focus 2px+/3:1, text 4.5:1, never color-only, 44px touch targets
- ARIA: `aria-label` on icon buttons, `aria-live` for updates, labels on inputs
- Support `prefers-reduced-motion` and `prefers-color-scheme`

---

## 6. UI States & Build Order

Every component: `default | hover | focus | active | disabled | loading | error | success | empty | skeleton`

**Build**: Read PRD → design.md → types → mock data → IDS atoms → molecules → organisms → layouts → navigation → states → responsive → a11y → polish

---

## 7. Terminal Commands

```bash
npm run dev          # Start dev server
npm run build        # Production build
npm run lint         # Lint code
npm run test         # Run tests
npm install @ids-ts/button  # Add IDS component
```

IDS Storybook: `cd int-design-system && nvm use 22 && corepack enable && yarn dev`

---

## 8. Git for Designers

```bash
git status                           # See changes
git add .  &&  git commit -m "msg"   # Save checkpoint
git push                             # Push to remote
git checkout -b feature/name         # New branch
git stash  /  git stash pop          # Stash/restore
git log --oneline -10                # Recent history
```

---

## 9. Safety Rules

**NEVER without approval**: `rm -rf`, `git reset --hard`, `git push --force`, delete files, push to main
**WARN before**: any `git push`, file deletion, config changes
**Safe without asking**: read files, `npm run dev/build/lint/test`, `git status/log/diff`, create/edit in `src/`, install `@ids-ts/*`

---

## 10. Agent-Specific Setup

| Agent | File | Location |
|-------|------|----------|
| Claude Code | `CLAUDE.md` | Project root |
| Cursor | `.cursorrules` or `.cursor/rules/` | Project root |
| Windsurf | `.windsurfrules` | Project root |
| GitHub Copilot | `.github/copilot-instructions.md` | Repo root |
| Bolt / v0 / Lovable | Paste sections 1-5 into initial prompt | N/A |

---

## Learned User Preferences

- For Google Drive, Slides, or other sign-in–sensitive sites, do not assume the IDE Simple Browser or the default isolated Chrome DevTools MCP profile is logged in; use approaches that match how the user actually authenticates (e.g. official `--autoConnect` flow, export/share, or explicit tool choice).
- For browser automation: prefer a single MCP server per task (avoid logged-out or duplicate Chrome instances), and match upstream defaults like the official Chrome DevTools MCP README pattern (`npx chrome-devtools-mcp@latest`) unless the user asks for custom flags.
- When building on top of open-source code, treat "make it ours" as a find-and-replace rebrand (package names, imports, CSS class prefixes, hook names, npm scope, registry) and keep runtime logic intact — do not rewrite battle-tested code from scratch, and remove every trace of the source tool's name throughout the codebase once rebranding is requested.
- When the user gives explicit UX/UI requirements (specific control type like sliders vs dropdowns, panel position, IDS-token values vs free input, mode toggles), implement them exactly as stated and do not silently substitute alternative patterns or re-litigate decisions already made.
- Do not pre-write or update docs/files until gathered information is presented to the user first; fetch and show results before making edits.
- When the user interrupts with new context mid-task, absorb the input and continue working on the original task without abandoning in-progress work.
- CLAUDE.md and AGENTS.md should stay lean (200–250 lines optimal); extract detailed content into external rule files and reference them, and keep agent configuration agent-agnostic (Claude Code, Cursor, Windsurf, Copilot, etc.).
- Prototype code must meet expert frontend engineering standards at Intuit — not throwaway prototype code but production-quality IDS-compliant UI that designers can hand off to engineers directly.
- When the user says "do it non-stop" / "I will review once you're done", or as standing rule ("always make things perfect"), run end-to-end without intermediate confirmation or "should I…" prompts.
- For strategic, multi-step work, prefer plan mode first and write mandatory plan documents that capture decisions for later reference — iterate with the user before implementing.
- Commit meaningful checkpoints frequently and verify in browser/dev server before commit or push so work can be reverted and broken UI is not landed.
- Iterate on story/slide/design artifacts in versioned drafts (v1, v2, v3, v4…) rather than overwriting; do not let weak source-doc writing influence the quality of new content.

---

## Learned Workspace Facts

- Workspace root: `/Users/bkm01/code/xd-dev-setup-kit`; default Git remote `origin` is `https://github.com/Basavaraj-Km-int/xd-dev-setup-kit.git`. The aspiration of this codebase is "Product Builder OS" — an agentic product development operating system, not just a developer setup kit.
- `docs/drive-presentation-1z2nnXD9.md` documents Drive presentation export attempts, access blockers, and Chrome MCP notes for that deck; `docs/assets/SOC_FY26_Q3.pdf` is the 66-page "State of the Company FY26 Q3" deck captured via Cmd+P (Download was disabled in Drive).
- Related local repos: Figsor MCP at `/Users/bkm01/code/figsor`, a personal/extended fork at `/Users/bkm01/code/xd-dev-setup-kit-personal` (extra agents/hooks/skills not yet promoted), and the renamed/evolved `/Users/bkm01/code/product-builder-os/` (active Product Builder OS work; original `xd-dev-setup-kit` kept as-is).
- Chrome DevTools MCP `--autoConnect` on macOS may time out on CDP protocol calls even when connection succeeds; the `DevToolsActivePort` WebSocket endpoint also hangs pending Chrome permission approval.
- Target audience for this solution: SVPs, VPs, Directors of Product/Design/Engineering at Intuit. "Product builders" = Designers, PMs, Frontend/Backend Engineers initially; future scope expands to any Intuit team that builds (Customer Success, Growth, etc.).
- User has built Intuit-specific agent ecosystem tools (`ids-react-plugin`, `design-system-mcp`, content design guidelines MCP, custom skills and commands) planned for distribution through Intuit internal marketplaces.
- Intuit Tinker is a purpose-built, IDS-aware UI-tweak panel built as standalone `@intuit/tinker` inside `/Users/bkm01/code/product-builder-os/` (planned split to its own repo with a separate Cursor workspace from Product Builder OS for context/performance). It is a carbon-copy rebrand of dialkit (panel/sliders/variants) and react-grab (element selection) patterns under Intuit naming, with no traces of source tool names left in code, packages, registry, or CSS prefixes; dialkit itself has been removed from this project (user tests dialkit separately). Differentiator vs. `claude.ai/design`: agent pre-generates the full control tree for the current page (sections → elements) on load, exposes an IDS Strict / Freeform mode toggle, launches from the bottom-right, and sends IDS tokens/CSS variables/component conventions to Claude Code/Cursor so generated code reaches 100% IDS parity. Comparison tables must include dialkit, react-grab, agentation, and `claude.ai/design` with a "gaps Tinker closes" column. Project Wallet (`https://github.intuit.com/pages/rluke1/Project-Wallet/`) is a key internal competitive reference for variations, modules, and user-testing patterns.
- Chrome profile **Chrome-Agent-Profile** (shown in Chrome’s profile picker) maps on disk to **`Default`**: `~/Library/Application Support/Google/Chrome/Default` — not a separate `Chrome-Agent-Profile` folder. Use `--profile-directory=Default` from CLI; for DevTools MCP `--autoConnect`, use your logged-in Chrome for that profile, not Cursor’s isolated browser/Chromium.
- User's personal Intuit GitHub: `https://github.com/Basavaraj-Km-int` (host for personal/Product Builder OS repos).
- Reference projects to study/align with: PM Operating System (`github.intuit.com/htiwari1/PM-Operating-System`) and product-thought-partner (`github.intuit.com/platformexps-patterns/devassist-plugins-registry/tree/master/product-thought-partner`).
- Distribution model for Product Builder OS = cloneable repo + capability plugin (modeled after the Intuit Observability Capability Plugin v1 launch pattern: proof packet doc + demo recording).
- Product Builder OS targets four workflows: W1 Zero-to-One (PRD only, no Figma, no codebase), W2 Figma-to-Code (no codebase), W3 Code-First Iteration (no Figma), W4 Existing Codebase Enhancement (fork → branch → design+code → PR back to production).
