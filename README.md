# Office of CMO

> A small marketing org you can talk to. Inspired by [gstack](https://github.com/garrytan/gstack).

Office of CMO is a skill pack for [Claude Code](https://docs.claude.com/en/docs/claude-code) (and other AI coding agents) that gives you a marketing team as slash commands — a CMO at the top, a Digital Marketer running paid acquisition end-to-end, plus Creative, Copy, Content, Analyst, and Ops as collaborators. Talk to any of them; they route to each other when needed, like real coworkers.

## Status

**v0.2.0 — role-shaped redesign.** Two roles ship in depth (`/cmo` and `/digital`); the rest are stubs that handle their core scope and defer the deeper craft to v0.3. The whole team is wired into the routing layer so conversations flow even when only two roles are fully built.

## The team

| Slash | Role | Depth |
|---|---|---|
| `/cmo` | CMO — strategic owner, entry-point router | **Full** |
| `/digital` | Digital Marketer — paid acquisition end-to-end | **Full** |
| `/creative` | Creative Director — briefs, hooks, concepts, art direction | **Full** |
| `/copy` | Copywriter | Stub |
| `/content` | Content Marketer | Stub |
| `/analyst` | Marketing Analyst | Stub |
| `/ops` | Marketing Ops | Stub |

## How it works

Talk to a role; ask anything in their scope. If it's not their job, they route in one message:

> **You**: "Our Meta CAC is creeping up; what should we do?"
>
> **Digital Marketer**: "Pulling the last 30 days. Looks like creative decay — frequency is at 4.1 on Concept A. I'll brief a refresh; pulling in `/creative` for new concepts and `/copy` for hook variants."

Or talk to the CMO if you don't know who you need:

> **You**: "Our marketing isn't working."
>
> **CMO**: "Two questions: (1) what does winning look like in numbers, (2) what's the primary objective this quarter? Once I know those, I'll either handle it or pull in the right specialist."

## What `/digital` covers in depth (v0.2)

The Digital Marketer is a senior paid-acquisition operator. They cover:

**Channels (8):** Google Ads, LinkedIn, Meta, YouTube, Reddit, X (Twitter), TikTok, Bing/Microsoft Ads. Each has a deep playbook in `roles/digital/references/` covering when to use, audience strategy, account architecture, bidding, creative, kill criteria, and common mistakes.

**Disciplines:** strategy and primary-objective discipline, audience and ICP shaping, ABM (Account-Based Marketing) for B2B, conversion-rate optimization for paid landing pages, retargeting and 1P-data activation, bid/budget management, kill/scale criteria, incrementality testing.

Channels and disciplines deferred to a future version are tracked in [`roles/digital/TODO.md`](roles/digital/TODO.md).

## Install

```sh
git clone --depth 1 https://github.com/<your-username>/office-of-cmo.git ~/.claude/skills/office-of-cmo
cd ~/.claude/skills/office-of-cmo && ./setup
```

`./setup` auto-detects your AI coding host (Claude Code, Codex, Cursor) and installs to the right location. Pass `--prefix` if you want commands namespaced (`/ocmo-cmo`, `/ocmo-digital`).

## Memory

Both `/cmo` and `/digital` read/write a shared memory layer at `cmo-memory/`:

- `cmo-context.md` — base business profile (built by `/cmo` onboarding)
- `icp.md` — ideal customer profile and segments
- `voice.md` — brand voice + banned phrases + mandatories
- `winners.md` — creatives/angles/audiences that repeatedly outperform
- `kill-rules.md` — hard-learned shortcuts that beat default kill thresholds
- `compliance-notes.md` — platform-specific learnings
- `playbook.md` — patterns confirmed across multiple retros

CRUD via `/cmo-memory`. Memory is intentionally short; if it doesn't compound, it doesn't go in.

## Philosophy

See [`ETHOS.md`](ETHOS.md). Short version: most marketing software optimizes for "more dashboards." We optimize for **fewer, sharper decisions**, made by named specialists with skin in the game.

## Roadmap

| Version | Adds | Status |
|---|---|---|
| v0.2 | `/cmo` + `/digital` in depth; 5 stub roles; full Resolver | **Released** |
| v0.3 | `/creative`, `/copy`, `/content`, `/analyst`, `/ops` in depth | Planned |
| v0.4 | `/lifecycle`, `/brand`, `/product-marketer` (when scope expands beyond ad campaigns) | Planned |
| v0.5+ | `/community`, `/influencer-manager`, `/partnerships`, `/pricing-strategist` | Future |

Full roadmap: [`docs/ROADMAP.md`](docs/ROADMAP.md).
