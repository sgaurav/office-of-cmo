# Changelog

All notable changes to Office of CMO are documented here. Format: [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

## [0.3.0] — 2026-04-29

`/creative` graduates from stub to full depth. The Creative Director can now run real creative briefing, fan-out concepts across an angle, score against the rubric, ship to `/copy` and `/digital`, and refresh decaying creative without re-asking strategic questions.

### Changed

- **`/creative`** — full persona; no longer a stub. Frontmatter `preamble-tier: 1`, `version: 1.0.0`, `status: stub` removed. Owns: briefs, art direction, hook prompts, visual exploration, format-fit, concept fan-out, scoring, refresh briefs. Pushback rules tightened (10 explicit refusals). Three named workflows: brief writing, concept fan-out, refresh.

### Added — `roles/creative/references/`

- **`creative-brief-template.md`** — the standard brief format. Full template, per-section guidance ("how to fill each section"), anti-patterns, length discipline ("one page, scannable in 2 minutes").
- **`concept-fan-out-patterns.md`** — how to spread 3–5 concepts across an angle without producing hook variants. Five fan-out patterns (Subject ↔ No-Subject, Hero ↔ Proof, Slow Build ↔ Hook-First, Conformist ↔ Contrarian, Production-Tier spread). The four-axis spread (Subject × Treatment × Pacing × Proof). The stretch-concept rule.
- **`format-fit-by-channel.md`** — audience-state taxonomy (vertical-feed scroll / in-feed / searching / educational / pre-roll / subreddit-native / DM / retargeting) × per-channel matrix (Meta, TikTok, LinkedIn, YouTube, Google, Reddit, X, Bing). Production-tier ↔ channel matrix. Quick decision shortcut.
- **`concept-critique-rubric.md`** — the four-dimension rubric (Relevance / Hook strength / Differentiation / Production feasibility), 1–5 each, total /20. Worked example. Cut/ship thresholds. When to override the rubric.
- **`art-direction-patterns.md`** — visual prompt patterns by angle (Outcome / Problem / Identity / Status flip / Comparison / Curiosity / Stat-led / Contrarian). Per-tool quirks (Midjourney / Flux / DALL-E / Veo / Runway / Pika / Firefly). When to skip the renderer.

### Updated

- `CLAUDE.md` — `/creative` now listed as **In depth** in the role registry
- `docs/ROLES.md` — full persona summary for `/creative`
- `.claude-plugin/plugin.json` — version 0.3.0
- `README.md` — `/creative` marked Full

## [0.2.4] — 2026-04-29

Six refinements surfaced by the Reema dogfood (multi-channel sub-decision-grade test designed to break v0.2.3). Each is a discipline already present that needed sharper expression or wider application.

### Added — `/digital`

- **Complexity-escalation exception to the two-probe rule.** When the user's override doesn't just spend more money but *structurally compounds risk* (≥4 channels simultaneously, ≥3 new pixel installations, mixed test/scale phases, accepted measurement gaps), `/digital` takes a third probe — naming the compound problem and offering "stage the launch" or "accept we may not be able to diagnose specific failures." Then accepts and proceeds. Two-probe rule isn't infinite, but qualitatively-different risk earns one extra sharpening turn.
- **Conflation pushback template.** When the user demands a blanket action across multiple failing channels ("kill them all", "scale everything that's working"), `/digital` now uses a reusable response template: name each channel's failure mode separately, state the cost of conflation ("we lose lessons that took 3 weeks of spend to generate"), exit with a per-channel action plan rather than a single verb. Three explicit cases for when the conflation pushback should NOT fire (diagnoses really do all match; user's blanket call is strategic not tactical; after two probes).

### Added — `/analyst`

- **Always read `/ops`-flagged risks first.** Before diagnosing a channel, `/analyst` greps `cmo-memory/compliance-notes.md` and `cmo-memory/open-homework.md` for risks `/ops` flagged at launch that the user accepted. When found, the diagnosis leads with that risk: "Before tactical analysis: `/ops` flagged at Day 0 that LinkedIn Conversions API was skipped. Platform-vs-CRM delta is now +300% — this is the failure mode that gap predicts." Prevents the team from re-deriving foreseen problems from the data.

### Added — `/cmo`

- **Incident retro mode.** A separate retro shape from quarterly retros, fired by specific triggers: a flagged risk materially broke the program, a kill rule should have fired earlier, two consecutive reviews surfaced the same root cause with no system change, measurement gap discovered mid-program, or user explicitly asks "why didn't we catch this earlier." Tighter format than quarterly retros (single incident, ≤6 sections), always written, single-incident-shaped lessons logged to `kill-rules.md` and (after second occurrence) `playbook.md`. Explicit anti-patterns: not blame allocation, not re-litigating original decisions, not quarterly retros in disguise.
- **Sunk-cost discipline in strategic resets.** When a reset removes ≥30% of program spend or invalidates 3+ weeks of effort, `/cmo` names the cost explicitly before setting the next strategy. Four-part frame: $ spent that we now know was wrong-shaped; weeks of runway burned; what we learned worth the cost; what we'd refund if we could. This last list often becomes new entries in `kill-rules.md`. Prevents the next strategy from being silently more aggressive than the user realizes.

### Added — `docs/PUSHBACK.md`

- **Common substitute homework anti-pattern.** A 9-row table of homework users were sent to do vs. the substitutes they offer in place ("5 customer conversations" → "I analyzed our usage data"; "productize one offering" → "I have a few different things"; "talk to lost-deal prospects" → "I read their objection emails"). Each substitute has a specific tell explaining why it's non-equivalent in the way that matters. The handshake when a substitute appears: acknowledge the work, name the difference, ask if real homework is doable OR identify the actual blocker, redesign if blocked OR accept override with logged risk. Critical insight: substitute attempts usually point to a real blocker (discomfort, not knowing how, fear of asking) — the redesign tightens the homework to address that blocker, not lower the bar.

## [0.2.3] — 2026-04-29

Three depth additions surfaced by the third dogfood ("Dale's Agency"). Each is a discipline the team applies before doing tactical work.

### Added

- **Budget viability discipline (`/digital`)**. The Digital Marketer now runs the budget math out loud before any test launches: `daily floor × test length × campaign count` per channel, plus `30 × target CPA` for decision-grade volume, plus 10% reserve. If the math fails, the test isn't a test — it's "spend money and hope" — and `/digital` refuses with a three-option pushback (cut a channel, accept sub-decision-grade with explicit framing, or increase budget). Two named exceptions: first-time plumbing tests and defensive Branded Search.
  - New reference: `roles/digital/references/budget-math.md` — formula, per-channel daily floors, decision-grade volume math, four worked examples of math failing, common counter-arguments.

- **Failure-mode diagnostic taxonomy (`/analyst`)**. The Analyst now classifies *which of five failure modes* is at play before recommending action: CAC failure / Targeting failure / Creative failure / LP-or-offer failure / Measurement failure. Each has a different decision rule, a different fix, and a different owner. Treating every problem as a CAC problem (the most common analytical mistake) is now refused at the role level.
  - New reference: `roles/analyst/references/failure-modes.md` — diagnostic flowchart, each mode in depth, common conflations, worked examples (Dale's targeting failure inside an apparent CAC borderline; Meta measurement failure masking everything else).
  - Targeting failures fire at `≥25% out-of-ICP` regardless of CAC threshold. Creative failures fire on leading indicators before CAC is readable.

- **"Send the user away to think" pattern (`docs/PUSHBACK.md`)**. The most powerful pushback move: refuse to do the work, give the user specific homework, tell them to come back when X is true. Four conditions for using it (rotten foundation / two probes failed / proceeding wastes real money / homework is doable). Three properties of good homework (concrete output, bounded effort, forces a decision the user has been avoiding). Anti-patterns called out: gatekeeping, vague homework, infinite loops.
  - New memory file: **`cmo-memory/open-homework.md`** — tracks pending homework with full schema (Sent away by / Missing piece / Homework / Effort / Resume condition / Status). Schema enforced in `/cmo-memory` SKILL: refuses "go think about it" entries, refuses homework >1 quarter of effort.
  - **`/cmo` now reads `open-homework.md` BEFORE pivoting to the user's question** in any returning-user session. The receiving role acknowledges the homework: "Memory shows you were sent to draft X two weeks ago. Did you bring it back, or do you want to talk about why it didn't happen?" Three explicit outcomes (resolved / wants-to-talk / ignore-and-ask-something-else).

### Updated

- `cmo-memory/SKILL.md` — adds `open-homework.md` schema with required entry format, enforcement rules, pruning rules
- `cmo-memory/README.md` — adds `open-homework.md` to the file table

## [0.2.2] — 2026-04-29

The defining-trait pass: every role now pushes back. Modeled on YC office-hours — the senior in the room is here to *force the thinking*, not validate. Surfaced as a gap in the second dogfood ("Pocket Pulse"), where roles still accepted vague answers too readily.

### Added

- **`docs/PUSHBACK.md`** — articulates the discipline. The forcing questions, the two-probe rule, what pushback is and isn't, what to do when the user is confidently wrong, what to do when the user is right but doesn't realize it.
- **`/cmo` — Office-hours forcing questions** ("say the bet in 10 words", "name the ONE buyer", "why now", "what's the unfair advantage", "what's the mistake we keep making", "what would 10× budget force us to change"). Used when the conversation feels vague.
- **Per-role "What I refuse — pushback rules"** — every role got a bespoke section. `/cmo` refuses multi-objective programs, vanity metrics, voice-as-adjectives, CAC-only rebalances. `/digital` refuses framework-list creative-refresh recs, untested-thesis channel choices, kill-without-LTV-check. `/creative` refuses multi-message briefs and "make it pop". `/copy` refuses adjective stacks and curiosity-gap baits. `/content` refuses "thought leadership" without keyword + reader + decision. `/analyst` refuses vanity metrics and single-source-of-truth claims. `/ops` refuses "install the pixel and figure out events later".
- **`/digital` — thesis-not-framework rule** for creative refresh: never respond with a list of frameworks; respond with a directional thesis about *why the current creative is failing for this audience on this channel right now*.
- **`/cmo` — LTV-before-CAC rule**: refuses to approve a CAC-driven channel-mix rebalance until the LTV signal of cheap-CAC users is checked. Cheap CAC of churning users is worse than expensive CAC of staying users.
- **`/cmo` onboarding question 6** — now demands voice *examples* (one ad/page/email that nailed the voice + one that didn't), not just adjectives. Adjectives without examples are aspirations.
- **`/analyst` — "When directional data IS actionable"** section: 5×-threshold-breach + minimum-volume = directional kill is OK; less than 5× = wait for real data. Never scale on directional. Closes the "too cautious" gap from Pocket Pulse.

### Changed

- `ETHOS.md` — pushback is now principle #1. The 10 prior principles renumbered to 2–11.

## [0.2.1] — 2026-04-29

Refinements surfaced by the first end-to-end dogfood scenario (a fake "Acme Observability" B2B SaaS walked through `/cmo` → `/digital` → `/ops` → `/creative` → `/copy` → `/analyst` and back). Seven concrete fixes:

### Changed

- **`/cmo` onboarding is now lazy.** When `cmo-memory/cmo-context.md` already exists and is fresh (<90 days), the CMO does a 1-question delta refresh instead of re-running the 8-question intake. Three explicit branches: full / delta / targeted-refresh. Returning users no longer wait through onboarding they already did.
- **All 5 stub roles (`/creative`, `/copy`, `/content`, `/analyst`, `/ops`) now lead with explicit "STUB" callouts.** Every response begins with one mandatory disclosure line so users know what they're getting. Each stub also has a hard "What I will NOT do as a stub" list that triggers a "wait for v0.3 OR hand to a real specialist" response when exceeded.
- **`/analyst` now has an explicit data-not-available fallback ladder**: MCP/API → CSV paste → gut estimate (tagged `[directional]`) → "pause and come back." Never silently treats estimates as decision-grade.
- **`/digital` now auto-suggests `/cmo` escalation** when ≥50% of channels die, when CAC stays >2× target across two reviews, when budget asks exceed envelope, when attribution is off >40% from CRM truth across multiple channels, or when the user asks "should we even be doing paid." Doesn't wait for the user to ask.
- **All roles ask before writing artifacts.** Default behavior: answer in chat. When the conversation is doc-shaped, role asks "Want me to write this up as `artifacts/<path>.md`, or just keep the recap?" Two exceptions (explicit user ask; quarterly retros) — otherwise no silent file writes.
- **`cmo-memory/kill-rules.md` schema now requires a `Why:` and `Evidence:` line on every entry.** Refuses to log rules that are events ("Reddit didn't work"), restatements of the strategy default, or learnings without a traceable failure mode.

### Updated

- `SKILL.md.tmpl` — added "When I write artifacts" section as a reusable pattern for v0.3 role build-outs

## [0.2.0] — 2026-04-29

### Changed (BREAKING — full restructure)

The v0.1 task-shaped design (16 ads commands, fixed artifact-passing DAG) is replaced with a role-shaped one. You now talk to *people* (`/cmo`, `/digital`), not invoke specific tasks.

### Added
- `/cmo` (full) — CMO persona; entry-point router; strategic owner
- `/digital` (full) — Digital Marketer persona; paid acquisition end-to-end across Google, LinkedIn, Meta, YouTube, Reddit, X, TikTok, Bing
- `/creative`, `/copy`, `/content`, `/analyst`, `/ops` (stubs) — handle their core scope; full personas in v0.3
- `roles/digital/references/` — 8 channel playbooks + 5 cross-channel discipline playbooks (strategy frameworks, kill-and-scale criteria, ABM, CRO for paid traffic, retargeting & 1P data) + ~10 tactical references migrated from v0.1
- `roles/digital/TODO.md` — channels and disciplines deferred from v0.2
- `docs/HANDOFFS.md` — role-to-role hand-off matrix
- `docs/ROADMAP.md` — what ships next, what's deferred
- Resolver block in `CLAUDE.md` — flat trigger-to-role mapping (gstack-style)

### Removed
- 16 task-SKILLs from v0.1 (`ads/ads-strategy/`, `ads/ads-channel-plan/`, `ads/ads-iterate/`, etc.) — knowledge absorbed into `/digital`'s reference library
- `cmo-context/SKILL.md` — onboarding moved into `/cmo`
- `docs/WORKFLOW.md` — replaced by `docs/HANDOFFS.md`

### Migrated (kept content, new path)
- All v0.1 references moved into `roles/digital/references/`
- `cmo-memory/` kept as the cross-role memory layer (no schema changes)
- Setup script, lib/ helpers, hosts/ installers — unchanged

## [0.1.0] — initial release

16-skill ads vertical; task-shaped workflow with hard artifact handoffs. Superseded by v0.2.
