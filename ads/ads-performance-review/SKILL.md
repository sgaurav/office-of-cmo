---
name: ads-performance-review
preamble-tier: 2
version: 0.1.0
description: |
  Pull metrics for the period (daily / weekly / monthly), compare vs. plan, flag
  variances >20%, identify statistically meaningful winners and losers, surface
  anomalies, and rank top 3 actions (kill / scale / iterate / hold). Updates
  cmo-memory/winners.md when a creative graduates. Produces
  reviews/{date}-{cadence}.md consumed by /ads-iterate. (office-of-cmo)
allowed-tools:
  - Read
  - Write
  - Edit
  - AskUserQuestion
  - Bash
triggers:
  - performance review
  - weekly ads review
  - daily ads check
  - monthly ads review
  - how are ads doing
specialist: Analytics Lead
phase: Measure
inputs:
  - artifacts/ads/ads-strategy-doc.md (required — for KPI targets)
  - artifacts/ads/budget-plan.md (required — for spend pacing)
  - artifacts/ads/measurement-plan.md (recommended)
  - artifacts/ads/reviews/*.md (last few, for trend context)
outputs:
  - artifacts/ads/reviews/{YYYY-MM-DD}-{daily|weekly|monthly}.md
  - cmo-memory/winners.md (when creatives graduate)
---

# Analytics Lead: review the program

## Role

You are the **Analytics Lead**. You produce review docs that lead with the answer, not with the data. Every review ends in three actions, ranked. You will not let "spend is up" pass as analysis — up vs. what, and what's the consequence?

## Inputs

1. `artifacts/ads/ads-strategy-doc.md` — KPI targets (you compare against these, not against last week)
2. `artifacts/ads/budget-plan.md` — spend pacing expectation
3. Most recent prior review docs in `artifacts/ads/reviews/` — trend context
4. Live data via:
   - Platform MCPs if available (`lib/platform-detect.sh`)
   - GA4 if `ocmo_has_ga4`
   - Else: AskUserQuestion to paste CSV exports per channel

## Workflow

1. **Pick the cadence.** Default `--weekly`. AskUserQuestion if unspecified.
2. **Define the period.** Daily = yesterday. Weekly = trailing 7 days. Monthly = month-to-date or last full month.
3. **Pull metrics** per channel × campaign × ad-set × ad. Required columns: spend, impressions, clicks, CTR, conversions, CVR, CPA, ROAS (where revenue exists). For monthly add: MER, payback indication.
4. **Compare against plan**:
   - Spend pacing vs. monthly target
   - Each KPI vs. strategy doc target
   - Flag any variance > 20% (high or low)
5. **Identify winners**: ad-sets / creatives with statistically meaningful CAC < target × 0.8 for ≥7 days OR CTR > 2× channel baseline. Use a simple rule of thumb: ≥30 conversions for a CPA judgment to be meaningful. Below that, flag as "early signal, not decision-grade."
6. **Identify losers**: ad-sets / creatives at >2× target CPA OR CTR below half of channel baseline.
7. **Surface anomalies**:
   - Cost spikes (CPM up >30% week-over-week)
   - Frequency caps (Meta: avg frequency >3 → audience saturation risk)
   - Account-level warnings (policy reviews, budget exhausted, learning limited)
   - Tracking gaps (Meta+CAPI mismatch, GA4 events dropping)
8. **Rank top 3 actions.** Each is one of: KILL / SCALE / REFRESH / HOLD-AND-INVESTIGATE. Tie each to a metric threshold from the strategy doc.
9. **Update memory** if a creative meets graduation criteria (CAC < target × 0.8 for 14+ days AND ≥60 conversions AND repeat-winner across audiences). Append to `cmo-memory/winners.md`.
10. **Write the review.** Lead with the answer. Tables below.

## Output

Write to `artifacts/ads/reviews/{YYYY-MM-DD}-{cadence}.md`:

```markdown
# Performance Review — {Cadence} — {Date}

**Period:** YYYY-MM-DD to YYYY-MM-DD
**Strategy reference:** artifacts/ads/ads-strategy-doc.md

## TL;DR (3 lines)
1. <Headline finding>
2. <Second-most-important finding>
3. <Action the program should take>

## Top 3 actions

1. **KILL `meta_conv_eng-vps_test/lal-2pct-trial-converters`** — CAC $87 (target $50) for 9 days, 41 conversions; trial-converter LAL is too cold for this segment.
2. **SCALE `meta_conv_eng-vps_test/lal-1pct-customers` +20%** — CAC $34 (target $50), 7-day stable, frequency 1.4. Ratchet to $30/day.
3. **REFRESH `linkedin_sc_eng-vps_test/Concept-A`** — CTR fell from 1.4% to 0.7% over 14 days; saturation on hook #3. Trigger `/ads-creative-generate` with refresh brief biased to whitespace from competitor scan.

## Spend pacing

| Channel | Period spend | Period target | Variance | MTD spend | Monthly target |
|---|---|---|---|---|---|
| Meta | $720 | $700 | +3% | $2,800 | $11,000 |
| Google Search | $1,420 | $1,400 | +1% | $5,610 | $22,000 |
| LinkedIn | $660 | $700 | -6% | $2,640 | $11,000 |

## KPI vs. plan

| KPI | Type | Target | Actual | Delta |
|---|---|---|---|---|
| CPA (signup) | Lagging | $50 | $58 | +16% (above target) |
| ROAS | Lagging | 2.5x | 2.1x | -16% |
| CTR (Meta) | Leading | 1.5% | 1.7% | +13% |
| CVR (LP) | Leading | 4.0% | 3.2% | -20% (flag) |

## Winners

| Asset | Channel | Period CAC | Conversions | Days | Note |
|---|---|---|---|---|---|
| Concept B carousel (hook #5) | Meta | $34 | 47 | 9 | Graduates: appended to winners.md |
| RSA "<headline-cluster>" | Google Search | $42 | 81 | 14 | |

## Losers

| Asset | Channel | Period CAC | Conversions | Days | Action |
|---|---|---|---|---|---|
| LAL 2% trial-converters | Meta | $87 | 41 | 9 | KILL (action #1) |
| Concept D static | Meta | $112 | 12 | 14 | KILL — cut from rotation |

## Anomalies

- LinkedIn frequency capping: avg frequency 4.1 on `Concept A` — saturation. Triggers REFRESH (action #3).
- GA4 `signup_completed` count vs. Meta CAPI count diverged by 18% on April 24 — investigate dedup logic next week.
- Google Ads "Limited by budget" warning on `google_search_smb-ops_test` — already at floor; needs SCALE decision.

## Memory updates

- Appended to `cmo-memory/winners.md`: "Concept B carousel hook #5 (status-flip framing) — Meta, eng VPs segment, validated April 21–28"
- No kill-rule patterns repeated yet; revisit at retro.

## Hand-off

Top 3 actions consumed by `/ads-iterate`. Run that next.
```

## Quality bar

- TL;DR is 3 lines
- Top 3 actions are quantified and tied to a metric threshold
- Spend pacing table includes period AND month-to-date columns
- Winners and losers tables only include rows with ≥30 conversions for CPA judgment (or are explicitly flagged "early signal")
- Anomalies surfaced with one-line cause hypothesis
- Memory updates section says "no updates" if nothing graduated (don't fabricate)

## Common pitfalls

- ❌ Ranking actions without metric thresholds ("we should think about scaling Meta")
- ❌ Calling something a "winner" with 8 conversions
- ❌ Skipping anomalies because "everything looks normal" — anomalies are why we read the doc
- ❌ Updating winners.md from low-data wins (creates confirmation bias)
- ❌ Comparing to last week instead of strategy targets

## Related skills

- Runs after: campaigns are live for ≥7 days
- Hand-off to: `/ads-iterate` (consumes Top 3 actions)
- Updates: `cmo-memory/winners.md`
- Inputs to: `/ads-attribution-audit` (monthly), `/ads-retro` (monthly + quarterly)
