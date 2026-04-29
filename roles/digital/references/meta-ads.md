# Meta Ads — Playbook

The Digital Marketer's playbook for Meta (Facebook + Instagram).

## Quick take

Meta = the broad-reach demand-creation and retargeting workhorse. The audience is everyone, the algorithm is the targeting, and creative does most of the work.

Strengths: massive reach, fast learning, strong creative iteration, retargeting at scale. Weaknesses: post-iOS14 attribution is messy (CAPI mandatory), saturation/fatigue is fast, B2B targeting is weak (use LinkedIn for senior B2B).

## When to reach for Meta

**Strong fit:**
- B2C SaaS, D2C, e-commerce, marketplace consumer side
- SMB owner-operators (founders, agencies, prosumers)
- Demand creation: telling a story to people who don't know they need you yet
- Retargeting at scale across all funnel stages
- Outcome-led creative storytelling that benefits from native vertical video
- Programs with strong creative iteration capacity (Meta rewards new creative every 2–4 weeks)

**Weak fit:**
- Senior B2B (VP+ at enterprise) — they're on LinkedIn
- Highly regulated categories (healthcare, finance) — restricted/disapproved often
- Programs without budget for ongoing creative production — Meta will fatigue you out

## Account architecture (default for sub-$50k/month)

```
Account
├── Campaign: Conversions — Test (ABO)
│   ├── Ad-set: 1% LAL of paid customers
│   ├── Ad-set: 2% LAL of trial-converters
│   ├── Ad-set: Broad with interest stack
│   ├── Ad-set: Lookalike of email list
│   └── Ad-set: Retarget 30d site visitors  (move to separate retargeting campaign once it grows)
├── Campaign: Conversions — Scale (CBO)
│   └── (graduates from Test once gates met)
└── Campaign: Retargeting (separate)
    ├── Ad-set: 1–7d hot
    ├── Ad-set: 7–30d warm
    └── Ad-set: 30–90d cold
```

**Ad-set count cap**: 5 in Test, 3 in Scale. More than that and the algorithm spreads thin.
**Ads per ad-set**: 4–6 (3 hooks × 2 formats).

## Pre-flight (NON-NEGOTIABLE)

1. **Pixel + CAPI live**: Events Manager → confirm browser pixel events appear; CAPI events arrive within 5s; **dedup keys set on browser+server pairs**
2. **Aggregated Event Measurement** (post-iOS14): domain verified; primary conversion event prioritized (web events #1)
3. **Custom audiences built**:
   - Existing customers (uploaded list, hashed)
   - Trial-converters (last 90d)
   - Site visitors 30d / 60d / 90d
   - Email-list LAL seed (if available)
4. **Lookalikes** (build from highest-quality seeds):
   - 1% LAL of paid customers — best
   - 2% LAL of trial-converters
   - 1% LAL of email engagers (if relevant)

## Audience strategy

**Lookalikes** seed quality matters more than the % size:
- Paid customers > Trial signups > Email subscribers > Site visitors
- 1% is tightest; expand to 2% / 3% only after 1% saturates
- Refresh seed audiences quarterly

**Broad targeting** outperforms narrow interest stacks more often than you'd expect post-iOS14. Default test: one ad-set with no interest layer, just country + age + lookalike exclusions.

**Exclusions** (always):
- Existing customers
- Recent converters (last 30d)
- Anti-segments from audience-doc
- Pixel events that imply non-target intent

## Campaign — Conversions

1. **Buying type**: Auction
2. **Objective**: **Sales** (formerly Conversions)
3. **Special ad categories**: only if applicable (Credit / Employment / Housing / Social Issues — restricts targeting)
4. **Budget**: ABO in test phase (control ad-set budgets manually); CBO in scale phase
5. **Naming**: per `naming-conventions.md`

## Ad-set settings

1. **Conversion location**: Website
2. **Performance goal**: Maximize number of conversions
3. **Pixel**: confirmed
4. **Conversion event**: from `tagging-spec.md` (typically `signup_completed`)
5. **Cost per result goal**: leave blank in test (let algo learn); use as soft cap in scale
6. **Budget**: daily, ≥ $25/day per ad-set (algorithm floor)
7. **Schedule**: start date set; no end date unless campaign-bound
8. **Audience**: custom + LAL/broad per plan
9. **Detailed targeting**: minimal in test (algo prefers broad)
10. **Detailed targeting expansion**: ON in test (helps algo)
11. **Languages**: per creative
12. **Placements** (manual in test, NOT Advantage+):
    - ☑ Feeds (Facebook + Instagram)
    - ☑ Reels (Facebook + Instagram)
    - ☑ Stories
    - ☐ Audience Network (turn on only after validation)
    - ☐ Right-column Facebook (low quality)
13. **Optimization**: standard
14. **Attribution**: 7-day click + 1-day view (default) — track this; tighten in audit

## Creative formats

**Static image (1:1, 4:5)** — fast to produce; good for testing hooks
**Carousel (3–5 cards)** — for "explainer" or "before/after" structures
**Video 9:16 (Reels/Stories)** — best for native-feel storytelling; hook in first 1.5s
**Video 4:5 in-feed** — long-form (15–30s); best for thought-leadership angles
**Image with overlay text** — fastest to iterate; lowest production cost

**Production tier** that works at sub-$50k: iPhone-grade UGC + Adobe Express overlays. Don't over-produce; high-fidelity ads often look like ads and underperform.

## Bid strategy — when to switch

| Strategy | When |
|---|---|
| Lowest Cost (default) | Test phase; let it run uncapped to learn |
| Cost Cap | After 30+ conversions/week and CAC stable; sets a soft ceiling |
| Bid Cap | Rarely; only when you know exact bid that wins inventory |
| ROAS Goal | E-commerce with reliable revenue and 60+ conversions/week |

## Budget floors and pacing

- Daily floor: $25/day per ad-set (Meta floor; below this algo starves)
- Test phase: $25/day × 5 ad-sets = $125/day minimum to learn
- Scale phase: consolidate to 3 ad-sets, +20%/3d budget step

## Kill criteria

- **Test ad-set**: $200 spend OR 7 days at >2× target CPA
- **Creative within ad-set**: $50 spend at <0.5× ad-set average CTR
- **Video without sound-off-readable hook in first 1.5s**: $50 spend (hard rule once confirmed)
- **Frequency saturation**: avg frequency >3 → refresh creative immediately

## Scale rules

- +20% every 3 days when CAC < target × 0.8 for 7+ days
- Cap +50% per 3-day window (algo can't recalibrate faster)
- Move winning ad-sets from ABO Test campaign into a CBO Scale campaign
- Refresh creative every 2–4 weeks regardless of performance (decay is constant)

## Common mistakes

- ❌ Letting Advantage+ Audience override your seeded audience in test
- ❌ Audience size <10k for LAL — too small; broaden
- ❌ Daily budget below $25 — algorithm starves
- ❌ Posting same 1:1 creative across all placements (Reels/Stories want 9:16)
- ❌ Using only 1d-click attribution → undercounts; default 7d-click + 1d-view, but reconcile in attribution audit
- ❌ Running without CAPI above $5k/month → measurement is broken
- ❌ Forgetting to dedup browser pixel + CAPI events → double-counted conversions
- ❌ "Engagement" objective when you actually want conversions
- ❌ Boosted posts pretending to be a campaign

## Subtle violations (that get ads disapproved)

- "Are you a [trait]?" framing → personal-attribute violation
- Before/after imagery (especially body/health/finance)
- Discrimination on Special Ad Categories (housing/employment/credit have strict targeting limits)
- Mentioning Meta/Facebook/Instagram in copy ("Beat the Facebook algorithm" → rejected)
- Sensational imagery / "shock" angles
- Misleading claims that don't match the LP

## Compliance gotchas

- Restricted categories: alcohol, gambling, financial services, healthcare, social issues/political — require approval
- Tobacco, weapons, illegal drugs, adult content — prohibited entirely
- Crypto — limited; certain countries only

## Hand-offs from this channel

- Creative concepts and hook ideation → `/creative`
- Copy variants beyond hooks → `/copy`
- Pixel/CAPI setup, dedup keys, server-side → `/ops`
- Meta UI vs. GA4 conversion delta investigation → `/analyst`
- Cross-channel retargeting orchestration (Meta + Google + email) → `/ops` to wire CDP

## When NOT to run Meta

- Senior B2B (VP+) at enterprise — LinkedIn does this 2–3x more efficiently
- Heavily regulated verticals where account approval is uncertain
- No creative production capacity — Meta will fatigue you out within 6 weeks
- Sub-$25/day budget per ad-set — channel won't work at that floor
