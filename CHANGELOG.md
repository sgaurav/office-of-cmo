# Changelog

All notable changes to Office of CMO are documented here. Format: [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

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
