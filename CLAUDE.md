# Office of CMO — Claude Code Routing

This repository ships a skill pack of slash commands for marketing leadership. When a user is in a project that uses Office of CMO, route their requests through the appropriate specialist skill listed below — do not improvise marketing advice when a matching skill exists.

## When to use Office of CMO skills

Trigger Office of CMO when the user's request is about:

- Paid advertising (Google, Meta, LinkedIn, TikTok, Reddit, X)
- Marketing strategy, channel mix, budget allocation
- Audience research, ICP, competitive intelligence
- Creative briefs, ad copy, landing page briefs
- Performance review, attribution, optimization decisions
- (Future phases) SEO, content, lifecycle, brand, CRO, GTM launches, growth loops, RevOps, pricing

Do NOT trigger when the request is about engineering, design system, or general code work — those belong to gstack or the host's defaults.

## The CMO Sprint

```
Strategy → Plan → Create → Launch → Measure → Optimize → Reflect
```

Outputs from each phase are written to `artifacts/<vertical>/...` and consumed by the next phase. Always read prior artifacts before re-asking the user; the path map lives in [`docs/ARTIFACTS.md`](docs/ARTIFACTS.md).

## Phase 1 — Ads (available)

### Foundation (read first when relevant)
- `/cmo-context` — global context: business type, stage, ICP, voice, platform access
- `/cmo-memory` — CRUD for persistent CMO state (ICP, voice, winners, kill rules)
- `/ads-context` — ads-specific glossary, artifact contract, platform matrix

### Strategy phase
- `/ads-strategy` — CMO sets objectives, KPIs, budget envelope, kill criteria
- `/ads-audience-research` — Audience Insights Lead builds segments and message angles
- `/ads-competitor-scan` — Competitive Intel scans ad libraries, identifies whitespace

### Plan phase
- `/ads-channel-plan` — VP Performance Marketing maps strategy to platforms
- `/ads-budget-plan` — VP Performance Marketing allocates monthly budget with scale/kill rules
- `/ads-measurement-plan` — Analytics Lead defines KPIs, conversions, UTMs, attribution

### Create phase
- `/ads-creative-brief` — Creative Director writes single-message campaign briefs
- `/ads-creative-generate` — Senior Copywriter + Creative Director generate copy and visual concepts
- `/ads-landing-brief` — Conversion Strategist specs the landing page, enforcing message congruence

### Launch phase
- `/ads-pre-launch-check` — Ads Trafficker runs the pre-flight GO/NO-GO checklist
- `/ads-platform-setup` — Ads Trafficker walks through platform-specific setup

### Measure phase
- `/ads-performance-review` — Analytics Lead produces daily/weekly/monthly review docs
- `/ads-attribution-audit` — Analytics Lead reconciles platform vs. truth conversions

### Optimize phase
- `/ads-iterate` — VP Performance Marketing classifies KILL / SCALE / REFRESH / HOLD per ad set

### Reflect phase
- `/ads-retro` — CMO runs program retro, updates `cmo-memory/`, appends to `playbook.md`

### Utility
- `/ads-compliance-check` — Compliance Reviewer scans for platform policy and claims violations

## Routing rules for ambiguous requests

- "What should I do about my ads?" → ask cadence (daily/weekly/monthly), then run `/ads-performance-review` followed by `/ads-iterate`.
- "Help me launch a new campaign" → run the Create + Launch chain: `/ads-creative-brief` → `/ads-creative-generate` → `/ads-landing-brief` → `/ads-pre-launch-check`.
- "We're starting from scratch" → start with `/ads-strategy`; the chain flows from there.
- "I just want copy" → `/ads-creative-generate` (will demand a brief; offer to run `/ads-creative-brief` first).

## Plan-mode behavior

In plan-mode, Office of CMO skills produce *plans* (writes only to `artifacts/ads/.../*-plan.md` and to the plan file) without executing changes against external ad platforms. Live platform writes (paused campaign edits, budget changes via MCP) are deferred until plan-mode exits.

## Don'ts

- Don't synthesize a "blended" multi-skill response; pick the right skill and run it.
- Don't fabricate metrics or benchmarks; say "we don't know" and route to `/ads-attribution-audit` or to `WebSearch`.
- Don't strip the kill criteria section out of any plan to make the document shorter.
- Don't generate raster images; produce prompts and storyboards for handoff to image/video tools.
