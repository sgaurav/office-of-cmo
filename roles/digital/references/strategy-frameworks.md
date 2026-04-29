# Strategy Frameworks

The frameworks the Digital Marketer defaults to when shaping a paid program.

## The Primary Objective rule

Pick ONE primary objective per program (or per quarter), not multiple:

| Objective | What it means | KPI bar |
|---|---|---|
| **Demand Capture** | People already know they need the category; we win the search | CPA, ROAS, CVR |
| **Demand Creation** | People don't know they need it yet; we tell the story | MER, payback, branded-search lift |
| **Brand** | Awareness and recall; not direct response | Aided/unaided awareness, brand-search volume, video VTR |
| **Retention** | Re-engage existing users / customers | Re-engagement CTR, repeat purchase rate, churn delta |

**Why one and not many**: at sub-$50k/month spend, multi-objective programs starve the most important goal. Mature programs with $200k+/month can run multi-objective with separate campaigns per goal — but each *campaign* is still single-objective.

## The four-quadrant fit (channel × objective)

Which channels best fit which objectives:

| | Capture | Creation | Brand | Retention |
|---|---|---|---|---|
| Google Search | ★★★★★ | ★ | ★ | ★★ |
| Google PMax | ★★★★ | ★★ | ★★ | ★★ |
| YouTube | ★★ | ★★★★★ | ★★★★★ | ★★★ |
| Meta | ★★★ | ★★★★★ | ★★★ | ★★★★★ |
| LinkedIn | ★★★ | ★★★★ | ★★★★ | ★★ |
| Reddit | ★★★ | ★★★ | ★ | ★★ |
| X | ★★ | ★★★ | ★★ | ★★ |
| TikTok | ★★ | ★★★★ | ★★★★ | ★★ |
| Bing | ★★★★★ | ★ | ★ | ★★ |

This is opinionated, not exhaustive. The wedge segment + product context modify these stars.

## The 70/30 → 30/70 split

First 60 days of any new program:
- 70% of budget in **test** (multiple ad-sets, multiple creatives, multiple audiences)
- 30% of budget in **scale** (your best guess at what'll win, gets the bulk later)

After Day 60:
- 30% test (continued exploration, new creative refresh)
- 70% scale (winners get the budget)

**Why**: early days, you don't know what works. Late days, you do — pretending you still need to "test" is how budget hides.

## Channels need theses

Every channel in the plan needs a one-sentence reason. Examples:

- **LinkedIn**: "VPs of Eng at Series B–D companies cluster on LinkedIn for thought-leadership consumption; we have a research report angle."
- **Meta**: "SMB owner-operators don't search for our category yet; we need to tell them the story in vertical video."
- **Google Search**: "Solution-aware controllers search for closing automation tools nightly; we have a $42 CAC opportunity."
- **TikTok**: "Our wedge audience (gen-Z creators) lives on TikTok; native UGC from our existing customer is already breaking out organically."

If you can't write the thesis in a sentence, the channel is **out of scope**. Not "we'll see how it goes."

## Out-of-scope is part of strategy

A strategy doc that doesn't list 2+ out-of-scope channels isn't a strategy, it's a wishlist. Examples of legitimate out-of-scope:

- "TikTok — our ICP doesn't dwell here in numbers that matter; revisit Q3"
- "Reddit Ads — small inventory in our category; cost-effective only at scale we don't have"
- "Display / GDN — no thesis beyond 'cheap impressions'; banned"
- "Influencer paid — needs partnerships discipline we don't have yet"

## The wedge segment principle

Every program has a wedge — the segment we win FIRST. The wedge has three properties:

1. **Highest intent** — most likely to convert per impression
2. **Easiest to reach** — clear watering holes, identifiable on platforms
3. **Best fit for our message** — our angle resonates most strongly here

Wedge first, expand second. Programs that try to win five segments at once usually lose all five.

## Channel sequencing

Almost always: start with one channel, learn, then layer the next. Sequence by:

- **Highest intent + cheapest setup** → start here
- **Closest to existing organic strength** → layer next
- **Demand-creation breadth** → after capture is stable

Example sequence for a B2B SaaS:

```
Week 1-2: Google Search (Branded + Non-Branded) — cheapest to set up, highest intent
Week 3-4: LinkedIn Demand Gen — match audience to ICP, longer learning runway
Week 5-6: Meta retargeting — close the loop on Search/LinkedIn traffic
Week 7+: Layer YouTube In-Stream + Bing Search if budget supports
```

## The MER discipline

**Marketing Efficiency Ratio (MER)** = total revenue / total ad spend (blended).

This is the ONLY blended truth in paid. Platform-reported ROAS double-counts cross-channel; MER doesn't lie.

How to use:
- Track MER monthly (CMO's responsibility)
- Compare MER to platform-reported blended ROAS — large gap (>30%) means platforms are double-counting
- Set MER targets in strategy doc; don't let platform ROAS targets override

Example: if Meta says ROAS 4x and MER is 1.9x, Meta is overstating by ~50%. Discount Meta's CAC by ~25% in your next budget plan.

## The "decision-grade" data threshold

A judgment about a creative / audience / campaign is decision-grade only when:

- ≥30 conversions on the unit being judged (rule of thumb for CPA stability)
- ≥7 days running (algo learning period clears)
- Stable spend (no recent budget shocks)

Below that → HOLD with a time-box, not "kill" or "scale."

## When to design an incrementality test

At $50k+/month per channel, lift becomes hard to read. Design a geo-holdout:

1. Pick 2 matched-population regions (e.g., California vs. Texas)
2. Pause the channel in one (control); keep running in the other (test)
3. Run for 4–8 weeks
4. Measure: weekly conversions in each cell, compute % lift from the running channel

Threshold: if test-cell conversions are <15% above control, the channel's incrementality is questionable. Revisit channel mix.

## When to commission an MMM build

Marketing Mix Modeling answers: what's the marginal contribution of each channel to revenue?

Conditions:
- $200k+/month total ad spend
- 12+ months of clean attribution data
- Stable measurement infrastructure (no major tracking gaps)

Below those bars, MMM noise > signal. Use MER + incrementality testing instead.

## How to pick a wedge channel

When stuck between two starting channels, ask:

1. Where does our wedge segment dwell most heavily?
2. Where do we have the best creative fit (existing assets, voice, format)?
3. Where is the CAC math least painful at floors?
4. Which channel can we kill cleanly (decision-grade) within 30 days?

The channel that scores best across all four wins. If it's a tie, pick the one with the cheapest learning cycle.
