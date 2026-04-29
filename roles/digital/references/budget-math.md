# Budget Math — Is This Test Even Possible?

The single fastest way to waste paid spend is to launch a test that's **mathematically incapable of producing a decision**. The Digital Marketer runs this sanity check before any test launches.

## The viability formula

A paid test is viable only if all four hold:

```
1.  Total test budget   ≥   Σ (daily floor × test length × campaigns_in_channel) for each channel
2.  Per-campaign spend  ≥   ~30× target CPA   (decision-grade conversion volume)
3.  Test length         ≥   channel's algo-learning floor (Meta 7d, Google 14d, LinkedIn 21d, etc.)
4.  Reserve buffer      ≥   10% of total budget (or a defensible reason it isn't)
```

If any of these fail, the test isn't a test — it's "spend money and hope."

## Daily-floor reference (consolidated)

| Channel | Daily floor (per campaign / ad-set) | Why this floor |
|---|---|---|
| Meta | $25/day per ad-set | Below = algo can't exit learning phase |
| Google Search | $50/day per campaign | Below = misses inventory bursts; learning starves |
| LinkedIn | $100/day per campaign | Audience precision + high CPM means below this you don't deliver consistently |
| TikTok | $50/day per ad-group | Algo prefers volume; below dies fast |
| YouTube | $50/day per campaign | Long attribution + view-through math needs runway |
| Reddit | $25/day per campaign | Low CPM but small inventory in most niches |
| X | $25/day per campaign | Inventory cap means floor is more about consistency |
| Bing | $25/day per campaign | Sister to Google but smaller volume; same reasoning |

## Decision-grade volume floor

For ANY kill/scale call to be defensible, you need:
- **≥30 conversions per unit being judged** (campaign / ad-set / creative)
- **≥7 days running** (so algo learning has cleared)
- **Stable spend** (no recent budget shocks within the last 3 days)

So to make a CAC-based decision on a campaign, you need to spend approximately:

```
Decision-grade spend per campaign  ≈  30 × target CPA
```

If target CPA is $50, you need ~$1,500 of spend per campaign for a real call. If you split that across a 30-day test, that's $50/day — which happens to be the daily floor for several channels. **The floors aren't arbitrary; they are what 30 conversions/month at typical CPAs requires.**

## The math that fails most often

### Pattern 1: Multi-channel / sub-floor budget

> "We have $5k for the quarter. Let's test Meta + LinkedIn + Google."

Math:
- Meta @ $25/day × 30 days = $750
- LinkedIn @ $100/day × 30 days = $3,000
- Google @ $50/day × 30 days = $1,500
- Total floor = $5,250 **before any reserve buffer**

Conclusion: this test is mathematically not possible at $5k. Two paths:

- **Cut a channel** (drop LinkedIn → $5k tests Meta + Google viably)
- **Lengthen the timeline** (4 months at lower per-month load) — usually wrong because the algo decay between campaigns wastes the leadup
- **Cut to one channel** (the most defensible at this budget — pick the wedge channel and hammer it)

### Pattern 2: One-channel but underfunded for decision

> "We have $3k for 30 days on LinkedIn."

Math:
- LinkedIn floor: $100/day × 30 = $3,000 — exactly at floor, no buffer
- LinkedIn target CPA in B2B: typically $300–800
- Decision-grade conv volume: 30 × $500 = $15,000 of spend

Conclusion: $3k buys you ~6–10 conversions on LinkedIn. **Below decision-grade.** You'll finish the test unsure whether the channel works.

Three paths:
- **Increase budget** to $9–15k for a real test
- **Tighten kill criteria** to "kill at any single ad-set with CTR <0.5% after 1k impressions" — leading-indicator kills don't need 30 conversions
- **Skip LinkedIn** and put the $3k somewhere with a lower decision-grade-spend bar

### Pattern 3: 30 ad-sets at $10/day each

> "We'll test 30 ad-set variations on Meta at $10/day each for 14 days."

Math:
- $10/day × 14 days = $140 per ad-set
- Below Meta's $25/day floor → algorithm starves on every ad-set
- Net: 30 × $140 = $4,200 spent producing zero decision-grade signal

Conclusion: this is the most expensive way to learn nothing. Cut to 3 ad-sets at $50/day each — same total, real signal.

### Pattern 4: 90-day test on a 14-day decay channel

> "Let's run TikTok for 90 days to give it a real shot."

Math:
- TikTok creative decay: 1–3 weeks
- Without refresh, the same creative serves an exhausted audience 70% of the time
- Net: weeks 4–13 are spending against ad fatigue, not against your hypothesis

Conclusion: TikTok needs creative refresh every 2–3 weeks. A 90-day test without 4+ creative refreshes is spending against decay.

## How to size a test correctly

### Step 1: Pick the channel(s) and confirm daily floor
What's the algorithm-floor daily spend for each channel in the test?

### Step 2: Pick the test length per channel
- Meta / TikTok / Reddit / X: 14 days minimum, 30 days for SCALE-eligibility
- Google Search: 14 days minimum
- LinkedIn / YouTube: 21–30 days minimum
- Multi-channel test: pick the longest of the above

### Step 3: Compute floor budget
`daily floor × test length × number of campaigns/ad-sets in this channel`

### Step 4: Compare to decision-grade
`30 × target CPA` per campaign

The HIGHER of (floor budget, decision-grade) is your minimum viable spend per channel.

### Step 5: Add 10% reserve

### Step 6: Multiply across channels
Total = Σ (per-channel minimums) + reserve

If user's actual budget < total, **kick it back** before launching.

## Worked example — getting it right

User says: "We have $15k for a 30-day test."

Question: Meta + LinkedIn + Google — viable?

| Channel | Daily floor | × 30 days | Decision-grade ($500 target CPA) | Per-channel minimum |
|---|---|---|---|---|
| Meta | $25 (× 5 ad-sets) | $3,750 | $15,000 | **$15,000** (decision-grade dominates) |
| LinkedIn | $100 | $3,000 | $15,000 | **$15,000** |
| Google Search | $50 | $1,500 | $15,000 | **$15,000** |

Sum of decision-grade minimums: $45k. **Plus 10% reserve.**

User has $15k. **Pick ONE channel** at decision-grade level, or pick two channels and accept that you're below decision-grade for both.

## The pushback

When the user proposes a budget, the Digital Marketer runs this math out loud and pushes back if it doesn't work:

> "$5k across Meta + LinkedIn + Google over 30 days won't produce a decision. LinkedIn alone needs $3k of floor and $15k of decision-grade. Three options:
>
> 1. **Cut to ONE channel** at $5k — likely Meta if your wedge needs broad reach, Google if it needs intent capture. We'll get decision-grade signal on that one and layer the next channel after.
> 2. **Run all three but accept they're below decision-grade.** We'll make calls on leading indicators (CTR, CVR) at the ad-set level, not lagging CAC. Higher-risk; we may kill a channel that actually works.
> 3. **Increase budget** to $20k+. Real test, real decision-grade.
>
> Which?"

After two probes, accept what the user picks, log "budget undersized vs. decision-grade" to memory, proceed.

## Common counter-arguments and their answers

**"We just want to validate the channel exists"** → "Validate" still requires a signal you can read. <30 conversions = no real signal. Pick leading indicators in advance and commit to acting on those.

**"The algo will figure it out at any budget"** → No. Below floor, the algorithm doesn't exit learning phase. You're not testing the channel; you're testing whether $5/day can do something. It can't.

**"We'll just extend the test if needed"** → Extending the test changes the cost of the lesson. A 60-day under-funded test costs the same as a 30-day funded one, and you've delayed the next decision by 30 days.

**"Other agencies do it for less"** → Other agencies tell you what you want to hear. The math doesn't change because someone offered to do it cheaper.

## When I (`/digital`) accept a sub-decision-grade budget

Sometimes the user is right to test below decision-grade. Two cases:

1. **First-time channel sanity check**: spend $1k–2k for 7 days just to see if the channel ships (creative loads, conversions fire, attribution wires up). Not a real CAC test — a *plumbing* test. Always note it as such.
2. **Defensive Branded Search**: it's so cheap and the threat (competitor stealing branded searches) so real that any spend is justified. Doesn't need decision-grade volume because the call is binary.

In both cases I tell the user explicitly: **"This won't be decision-grade. We're testing X, not paid acquisition."**

## Hand-offs

- If the math fails and the user can't increase budget → I escalate to `/cmo`. This is a strategy-shape problem: the program is underfunded for its objective, and that's a CMO call.
- If the user wants to run sub-decision-grade anyway → I proceed but log to `cmo-memory/` so the retro can reference it: "this test was budget-constrained; treat results as directional."
