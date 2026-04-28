---
name: ads-context
preamble-tier: 1
version: 0.1.0
description: |
  Foundation skill for the ads vertical. Read by every /ads-* skill before doing
  anything else. Defines the ads workflow, the artifact contract for the ads
  vertical, the platform glossary (CPC, CPA, ROAS, MER, CAC, etc.), and the
  default opinions that downstream skills enforce. Use when you want to brief
  a new collaborator on how Office of CMO runs ads. (office-of-cmo)
allowed-tools:
  - Read
triggers:
  - ads context
  - how does office of cmo run ads
  - ads workflow
specialist: Knowledge Manager
phase: Foundation
inputs:
  - cmo-memory/cmo-context.md (optional)
outputs: []
---

# Ads Foundation

## The ads sprint

```
Strategy → Plan → Create → Launch → Measure → Optimize → Reflect
```

| Phase | Skill(s) | Specialist | Cadence |
|---|---|---|---|
| Strategy | `/ads-strategy`, `/ads-audience-research`, `/ads-competitor-scan` | CMO + Audience Insights | Quarterly |
| Plan | `/ads-channel-plan`, `/ads-budget-plan`, `/ads-measurement-plan` | VP Performance + Analytics | Quarterly + as-needed |
| Create | `/ads-creative-brief`, `/ads-creative-generate`, `/ads-landing-brief` | Creative Director + Copywriter + Conversion Strategist | Per campaign |
| Launch | `/ads-pre-launch-check`, `/ads-platform-setup` | Ads Trafficker | Per campaign |
| Measure | `/ads-performance-review`, `/ads-attribution-audit` | Analytics Lead | Daily / weekly / monthly |
| Optimize | `/ads-iterate` | VP Performance + Creative | Per review cycle |
| Reflect | `/ads-retro` | CMO + Knowledge Manager | Monthly + Quarterly |
| Utility | `/ads-compliance-check` | Compliance Reviewer | Pre-launch + on-demand |

## Artifact directory

All ads artifacts go under `artifacts/ads/`. Schemas in [`docs/ARTIFACTS.md`](../../docs/ARTIFACTS.md).

```
artifacts/ads/
├── ads-strategy-doc.md
├── audience-doc.md
├── competitor-creative-report.md
├── channel-plan.md
├── budget-plan.md
├── measurement-plan.md
├── tagging-spec.md
├── creative-briefs/{slug}.md
├── creative-decks/{slug}.md
├── landing-briefs/{slug}.md
├── pre-launch-checks/{date}.md
├── platform-setup-log.md
├── reviews/{date}-{cadence}.md
├── attribution-audit-{YYYY-MM}.md
├── iterations/{date}.md
├── retros/{period}.md
├── compliance/{date}.md
└── playbook.md
```

## Glossary (read this once, never explain it again)

| Term | Definition |
|---|---|
| CPM | Cost per thousand impressions |
| CPC | Cost per click |
| CTR | Click-through rate (clicks / impressions) |
| CVR | Conversion rate (conversions / clicks) |
| CPA | Cost per acquisition (spend / conversions) |
| ROAS | Return on ad spend (revenue / spend) |
| MER | Marketing efficiency ratio (total revenue / total ad spend, blended) |
| CAC | Customer acquisition cost (sales+marketing / new customers) |
| LTV | Lifetime value of a customer |
| Payback | Months until LTV > CAC |
| AOV | Average order value |
| ABO | Ad-set budget optimization (Meta) |
| CBO | Campaign budget optimization (Meta) |
| RSA | Responsive search ad (Google) |
| PMax | Performance Max campaign (Google) |
| LAL | Lookalike audience |
| 1:1 / 4:5 / 9:16 | Aspect ratios (square / vertical-feed / vertical-story-reels) |
| iOS14 | Shorthand for the post-ATT measurement breakdown affecting Meta attribution |
| CAPI | Conversions API (server-side event ingestion) |
| Holdout | Audience segment deliberately excluded to measure incrementality |

## Default opinions (overridable, but defaults are not neutral)

These are the defaults every `/ads-*` skill ships with. The user can override per-skill, but the skill always tells them when it's overriding the default.

1. **Pick ONE primary objective** for the program (Demand Capture / Demand Creation / Brand / Retention). No multi-objective campaigns at sub-$50k/month spend.
2. **Test/scale split = 70/30** unless overridden.
3. **Reserve buffer = 10%** of monthly budget for opportunistic tests.
4. **Kill window default**: $300 spend OR 14 days OR CTR < 0.5% — whichever first. Tunable per channel.
5. **Scale step default**: +20% every 3 days when CAC < target × 0.8. Cap at +50% per 3-day window.
6. **Daily floor**: $25/day on Meta, $50/day on Google Search, $100/day on LinkedIn. Below these the algorithm is starved.
7. **One single-minded message per ad.** Multi-message ads compete with themselves.
8. **Message congruence**: ad hook = LP headline (word-for-word or near-).
9. **Always exclude existing customers + recent converters** from prospecting.
10. **Always use Meta CAPI server-side**, not just the browser pixel, for any spend > $5k/month.

## Plan-mode behavior

When the host is in plan-mode, all `/ads-*` skills:
- Write only to artifact files and to the plan file
- Do not call ad-platform MCPs that mutate state (paused/budget changes are deferred)
- Output a "plan applied" note when plan-mode exits

## How skills hand off

Every `/ads-*` skill:
1. Reads its declared inputs from `artifacts/ads/...` and from `cmo-memory/...`
2. Asks the user only for things memory doesn't already know
3. Writes its output to the path declared in its frontmatter
4. Returns a 3–5 bullet summary so the user can decide whether to continue

## Related

- `/cmo-context` — base business profile
- `/cmo-memory` — CRUD for shared memory
- All `/ads-*` skills — the sprint
