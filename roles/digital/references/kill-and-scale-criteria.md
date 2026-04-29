# Kill & Scale Criteria

The thresholds the Digital Marketer applies when deciding whether to kill, scale, refresh, or hold any unit of paid spend.

## The four verdicts

Every ad-set / creative / campaign at any review gets one of:

- **KILL** — pause permanently; document the lesson
- **SCALE** — raise budget; specific step
- **REFRESH** — keep the audience/structure but replace creative; brief delta to `/creative`
- **HOLD** — keep running unchanged; review again next cycle (time-boxed)

No fifth option. "Let it run another week" without a metric reason = procrastination.

## Decision-grade data threshold

Before any KILL / SCALE call, the unit needs:

- **≥30 conversions** for CPA stability
- **≥7 days running** for algo learning to clear
- **Stable spend** (no recent budget shocks within the last 3 days)

Below that → HOLD with a time-box of one more review cycle (max). After two cycles below decision-grade, KILL by default (it's not converging).

## KILL thresholds (per channel)

Defaults; tighten based on `cmo-memory/kill-rules.md` learnings.

| Channel | Spend threshold | Time threshold | Metric threshold |
|---|---|---|---|
| Google Search | $300 | 14 days | CPA > target × 2 |
| Google PMax | $500 | 21 days | CPA > target × 1.5 (PMax spends fast; tighten) |
| YouTube | $400 | 14 days | CPA > target × 2 (and VTR < 25% for awareness) |
| Meta | $200 | 7 days | CPA > target × 2 |
| LinkedIn | $1,000 | 21 days | CPA > target × 2 (slow data, wider threshold) |
| TikTok | $200 | 7 days | CPA > target × 2 |
| Reddit | $150 | 7 days | CPA > target × 2 |
| X | $200 | 7 days | CPA > target × 2 |
| Bing | $200 | 14 days | CPA > target × 2 |

**Rule**: kill at "spend OR time, whichever first" — both bounds matter. Without a time bound, "kill if CPA > X" can run forever without firing.

## Creative-level KILL rules (intra-ad-set)

Within an ad-set, individual creatives die faster:

- **Meta video without sound-off-readable hook in first 1.5s**: $50 spend → kill (hard-learned pattern)
- **TikTok video without hook in first 1.5s**: $30 spend → kill
- **Any creative with CTR <50% of ad-set average**: $50 spend → kill
- **YouTube In-Stream creative with completion rate <25% after 1k impressions**: kill (recut)
- **Any RSA on Search with Quality Score <4 after 1k impressions**: kill (rewrite)

## Quality score / relevance gates

Some platforms publish a quality signal; treat it as an early kill flag:

- **Google Quality Score**: ≥6 healthy, ≤4 broken
- **Meta Quality Ranking** (in Ads Reports): "Below average" → flag, refresh
- **LinkedIn relevance**: implicit via CTR; CTR <0.5% on Sponsored Content = problem

## SCALE criteria

Scale a unit when ALL hold:

- CAC < target × 0.8 (20% below target)
- Stable for 7+ days
- ≥30 conversions/week (decision-grade)
- Frequency in healthy range (Meta <3, LinkedIn <2/30d)
- No anomaly signals (no "Limited by budget" warning, no policy issues, no audience saturation)

Default scale step: **+20% every 3 days**, cap **+50% per 3-day window**.

| Channel | Step | Cap |
|---|---|---|
| Meta | +20% / 3d | +50% / 3d |
| Google Search | +20% / 3d | +50% / 3d |
| LinkedIn | +20% / 3d | +30% / 3d (slower learning) |
| TikTok | +20% / 3d | +50% / 3d (faster than Meta but cap same) |
| YouTube | +20% / 3d | +30% / 3d (longer attribution lag) |
| Reddit | +20% / 3d | +50% / 3d |
| X | +20% / 3d | +50% / 3d |
| Bing | +20% / 3d | +50% / 3d |

**Rule**: cap +50% per 3-day window because the algorithm needs time to recalibrate. Doubling budget overnight nukes performance.

## REFRESH triggers

Refresh creative (keep audience, replace creative) when:

- **CTR decay >30% over 14 days** — fatigue
- **Frequency saturation** — Meta avg >3, LinkedIn >2/30d
- **CVR dropping while CTR holds** — message-LP mismatch (could also be LP-side; investigate)
- **Cycle cadence**: refresh every 2–4 weeks even without decay (Meta), 3–6 weeks (LinkedIn), 1–3 weeks (TikTok)

Refresh brief delta to `/creative`:
- Inherit single-minded message + angle from original brief
- Add: which hook(s) won; riff on those
- Add: whitespace from competitor scan
- Avoid: hooks that drove the decay

## HOLD discipline

Use HOLD when:
- Data is borderline decision-grade (15–30 conversions in 7 days)
- An anomaly is suspected (tracking gap, account issue) — investigate before deciding
- New campaign in first 5 days

**Time-box every HOLD**: one more review cycle, max. After two HOLDs back-to-back, default to KILL.

## When to switch bid strategies

| From | To | Conditions |
|---|---|---|
| Manual CPC | Maximize Conversions | Budget ≥$300/day; 7+ days stable on manual |
| Maximize Conversions | tCPA | 30+ conversions/week stable; CAC trending toward target |
| tCPA | tROAS | E-commerce only; reliable revenue tracking; 60+ conv/week |
| Lowest Cost (Meta) | Cost Cap | 30+ conversions/week; want soft CAC ceiling |

Reverse switches are valid. If tCPA is starving the campaign (low impressions, high CPC) → drop back to Manual CPC and retune.

## Saturation signals

Watch for:

- **Frequency caps**: Meta >3, LinkedIn >2/30d, YouTube >3/week (tighten if smaller audiences)
- **CPM rising 30%+ week-over-week** with same audience: possible saturation
- **CTR falling without creative change**: audience exhaustion
- **CVR dropping while CTR holds**: LP or offer issue, not channel

## Memory feeds back into kill rules

Patterns confirmed across 3+ kills get added to `cmo-memory/kill-rules.md`:

- "Kill any LinkedIn ad-set with CTR <0.5% after 1k impressions" (after 3 confirmations)
- "Kill any Meta carousel with cards 3+ unviewed by majority" (after 3 confirmations)

These tightened rules then apply BEFORE the channel defaults — they fire faster.

## The "decision document" output

When you run iteration, produce a short doc per cycle (`artifacts/ads/iterations/{date}.md`):

- Summary (1 line per channel)
- Per ad-set: status (KILL/SCALE/REFRESH/HOLD) | confidence | action | justification
- Bid-strategy switches (if any)
- Memory updates (if any)

This is the trail of decisions that lets retros find compounding patterns.
