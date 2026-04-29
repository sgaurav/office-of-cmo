# Changelog

All notable changes to Office of CMO are documented here. Format: [Keep a Changelog](https://keepachangelog.com/en/1.1.0/).

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
