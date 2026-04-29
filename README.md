# Office of CMO

> A small marketing org you can talk to. Inspired by [gstack](https://github.com/garrytan/gstack).

Office of CMO is a skill pack for [Claude Code](https://docs.claude.com/en/docs/claude-code) (and other AI coding agents) that gives you a marketing team as slash commands — a CMO at the top, a Digital Marketer running paid acquisition end-to-end, a Creative Director directing concepts, a Senior Copywriter executing variants. Plus Content, Analyst, and Ops as stub-stage collaborators. Talk to any of them; they route to each other when needed, like real coworkers.

## Status — v1.0.0

**`/digital` runs end-to-end.** The full creative production loop is operational: `/digital` writes the brief skeleton → `/creative` directs concepts and visual approach → `/copy` writes hooks and platform variants → `/digital` ships, runs, and monitors → `/analyst` diagnoses by failure mode → `/digital` iterates with kill/scale/refresh → `/cmo` runs retros and updates memory. No stub gaps in the core paid-acquisition workflow.

The team that's still stub: `/content`, `/analyst`, `/ops`. They handle their core scope; they defer the deeper craft to v1.x.

## The team

| Slash | Role | Depth |
|---|---|---|
| `/cmo` | CMO — strategic owner, entry-point router, retros | **Full** |
| `/digital` | Digital Marketer — paid acquisition across 8 channels | **Full** |
| `/creative` | Creative Director — briefs, concepts, art direction, scoring | **Full** |
| `/copy` | Senior Copywriter — hooks, ad copy, LP body, email basics, voice calibration | **Full** |
| `/content` | Content Marketer | Stub |
| `/analyst` | Marketing Analyst | Stub |
| `/ops` | Marketing Ops | Stub |

## What "end-to-end" means

A complete paid program at v1.0.0:

```
/cmo                  — strategic frame, primary objective, kill criteria, budget envelope
  ↓
/digital              — channel plan, audience strategy, brief skeleton, budget viability
  ↓
/creative             — angle selection, concept fan-out (3–5 directed concepts), scoring
  ↓
/copy                 — 8 hooks across frameworks, platform-specific variants to char limits, LP body
  ↓
/digital              — pre-launch QA, ad-set composition, ship
  ↓
/analyst              — failure-mode diagnostics, attribution audits, decision-grade calls
  ↓
/digital              — iterate (KILL / SCALE / REFRESH / HOLD per ad-set)
  ↓
/cmo                  — quarterly retro, sunk-cost accounting, memory updates, next-quarter strategy
```

Every step has its persona, its frameworks, its pushback rules. The user talks to whichever role fits their question; the team routes when scope shifts.

## How it works

Talk to a role; ask anything in their scope. If it's not their job, they route in one message:

> **You**: "Our Meta CAC is creeping up; what should we do?"
>
> **Digital Marketer**: "Pulling the last 30 days. Looks like creative decay — frequency is at 4.1 on Concept A. Diagnosis: Creative failure (not CAC failure). I'll brief a refresh — pulling in `/creative` for new concepts in a new angle and `/copy` for hook variants. Won't take any kill action on the channel itself; the channel is fine, the creative is decayed."

Or talk to the CMO if you don't know who you need:

> **You**: "Our marketing isn't working."
>
> **CMO**: "Two questions before I route: (1) what does winning look like in numbers, (2) what's the primary objective this quarter? Once I know those, I'll either handle it strategically or pull in the right specialist."

The roles push back. They demand specifics. They refuse vague answers. See [`docs/PUSHBACK.md`](docs/PUSHBACK.md) for the discipline. The user shipping the right work matters more than the user feeling validated.

## What `/digital` covers

The Digital Marketer is a senior paid-acquisition operator. Eight channels in depth, each with a full playbook:

- Google Ads (Search, PMax, YouTube, Display)
- LinkedIn Ads (Sponsored Content, Document Ads, Conversation, ABM)
- Meta Ads (Facebook + Instagram: Feed, Reels, Stories)
- YouTube (In-Stream, Bumper, In-Feed, Shorts)
- Reddit Ads
- X (Twitter) Ads
- TikTok Ads (incl. Spark Ads)
- Bing / Microsoft Ads (incl. LinkedIn-targeting layer)

Plus disciplines: strategy and primary-objective discipline, audience and ICP shaping, ABM (Account-Based Marketing) for B2B, conversion-rate optimization for paid landing pages, retargeting and 1P-data activation, bid/budget management, kill/scale criteria, incrementality testing, budget viability sanity checks.

Channels and disciplines deferred to v1.x are tracked in [`roles/digital/TODO.md`](roles/digital/TODO.md).

## What `/creative` covers

The Creative Director directs creative briefs, concepts, and visual approach. Eight angle taxonomy (Problem / Outcome / Identity / Status / Fear / Curiosity / Comparison / Social Proof). Format-fit by channel and audience-state. Concept fan-out across 4 axes (Subject × Treatment × Pacing × Proof). Four-dimension scoring rubric (Relevance × Hook strength × Differentiation × Production feasibility). Refresh briefs that inherit message + audience but change angle and visual treatment.

References cover: brief template, concept fan-out patterns, format-fit matrix, scoring rubric, art direction patterns by angle (with handoff to Midjourney / Flux / Veo / Runway / Pika).

## What `/copy` covers

The Senior Copywriter writes ad copy across all channels (Meta primary text + headline + description; Google RSA assets to character limits; LinkedIn intro / headline / description / Document Ad body; X / TikTok / Reddit / Bing copy), hook variants from the 9-framework stack, LP body copy with message-congruence enforcement, short-form email and 3-touch cold-outbound starters, voice calibration from existing material, banned-phrase enforcement, and copy A/B test design.

References cover: hook frameworks, voice calibration, LP body patterns, email basics, banned phrases default, A/B test design.

## Install

```sh
git clone --depth 1 https://github.com/<your-username>/office-of-cmo.git ~/.claude/skills/office-of-cmo
cd ~/.claude/skills/office-of-cmo && ./setup
```

`./setup` auto-detects your AI coding host (Claude Code, Codex, Cursor) and installs to the right location. Pass `--prefix` if you want commands namespaced (`/ocmo-cmo`, `/ocmo-digital`, etc.).

## Memory

All four full roles read/write a shared memory layer at `cmo-memory/`:

- `cmo-context.md` — base business profile (built by `/cmo` onboarding)
- `icp.md` — ideal customer profile and segments
- `voice.md` — brand voice signature + banned phrases + mandatories
- `winners.md` — creatives/angles/audiences/voice patterns that repeatedly outperform
- `kill-rules.md` — hard-learned shortcuts that beat default kill thresholds (Why + Evidence per entry)
- `compliance-notes.md` — platform-specific learnings
- `playbook.md` — patterns confirmed across multiple retros (≥2 confirmations to promote)
- `open-homework.md` — pending homework when a role sent the user away to think

CRUD via `/cmo-memory`. Memory is intentionally short; if it doesn't compound, it doesn't go in.

## Philosophy

See [`ETHOS.md`](ETHOS.md). Short version: most marketing software optimizes for "more dashboards." We optimize for **fewer, sharper decisions**, made by named specialists with skin in the game who push back when the framing is lazy. Modeled on YC office-hours.

## Roadmap

| Version | Adds | Status |
|---|---|---|
| v0.2 | Role-shaped redesign | Released |
| v0.3 | `/creative` to depth | Released |
| v1.0 | `/copy` to depth — `/digital` runs end-to-end | **Released** |
| v1.x | `/content`, `/analyst`, `/ops` to depth | Planned |
| v2.0 | `/lifecycle`, `/brand`, `/product-marketer` (scope expands beyond ad campaigns) | Planned |
| v2.x+ | `/community`, `/influencer-manager`, `/partnerships`, `/pricing-strategist` | Future |

Full roadmap: [`docs/ROADMAP.md`](docs/ROADMAP.md).
