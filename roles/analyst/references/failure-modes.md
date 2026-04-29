# Failure-Mode Diagnostics

**The most common analytical mistake in paid acquisition is treating every problem as a CAC problem.**

A campaign with bad numbers can be failing for at least five distinct reasons. Each has a different fix, a different decision rule, and a different person who should be solving it. The Marketing Analyst's first job in any diagnostic is to **classify which failure mode is at play** before recommending action.

## The five failure modes

| # | Failure mode | One-line definition | Fix lives with |
|---|---|---|---|
| 1 | **CAC failure** | We're paying too much per conversion at the unit-of-spend level | `/digital` (creative refresh / bid tuning / channel kill) |
| 2 | **Targeting failure** | We're getting conversions but from the wrong people | `/digital` (audience tightening) |
| 3 | **Creative failure** | The unit-of-spend metrics (CTR, video VTR, frequency) are off, regardless of conversions | `/creative` + `/copy` (refresh) |
| 4 | **LP / offer failure** | Traffic arrives but doesn't convert; ad is doing its job, the page or offer is not | `/digital` (CRO) or `/cmo` (offer redesign) |
| 5 | **Measurement failure** | The numbers we're reading aren't true; underlying performance is different than reported | `/ops` (tracking infra) + `/analyst` (attribution audit) |

These can co-occur. A campaign can have a Targeting failure AND a CAC failure simultaneously — the targeting mess produces wrong-people conversions which then look like a CAC problem in the platform UI but resolve to a different problem entirely when you look at CRM truth.

The Analyst's job is to identify the *primary* failure mode and the *secondary* one(s), then route each to the right owner.

## Diagnostic flowchart

When a campaign is "performing badly," ask the questions in this order:

```
1. Are CTR / impressions / frequency / video-VTR healthy at unit-of-spend level?
   ├── NO  → CREATIVE failure (route to /creative)
   └── YES → ↓

2. Are people clicking but the LP CVR is low?
   ├── YES → LP / OFFER failure (route to /digital CRO + maybe /cmo)
   └── NO  → ↓

3. Are conversions happening at acceptable volume but in the WRONG SEGMENT?
   ├── YES → TARGETING failure (route to /digital)
   └── NO  → ↓

4. Do platform-reported numbers match GA4 + CRM truth?
   ├── NO  → MEASUREMENT failure (route to /ops + audit)
   └── YES → ↓

5. Is CAC genuinely above target with right people, healthy creative, working LP?
   └── YES → CAC failure (route to /digital — kill / scale / refresh per kill-and-scale-criteria)
```

The order matters: don't diagnose CAC until you've ruled out the other four. Most "CAC problems" are actually one of the other four wearing a CAC mask.

---

## Each failure mode in depth

### 1. CAC failure

**What it looks like:** Cost per conversion exceeds target, with otherwise healthy unit-of-spend metrics. CTR is normal, audience is right, LP is converting, measurement is clean — the channel just costs more than the offer can sustain.

**How to confirm:**
- CTR and CVR within channel-typical ranges
- Conversions are in-ICP (verified against `cmo-memory/icp.md`)
- LP CVR within target
- Platform-reported CAC matches GA4 and CRM truth (within 25%)
- CAC is the *only* metric that's off

**Decision rule:**
- Standard kill thresholds apply (`kill-and-scale-criteria.md`)
- 5× threshold breach + min-volume → directional kill OK
- 2× threshold + decision-grade volume (≥30 conversions) → KILL or REFRESH
- <2× threshold → HOLD or tune bid strategy

**Fix lives with:** `/digital`. Common moves: bid-strategy switch (manual → tCPA), creative refresh (decay, not concept), channel kill if structural.

**Worked example:**
> Meta campaign at $90 CPA vs. $60 target. CTR 1.7% (above channel avg 1.5%). LP CVR 4.2% (above target 4%). Conversions match GA4 within 8%. ICP check: 92% of conversions match ICP. **This is a clean CAC failure.** Recommendation: reduce bid cap by 15%, tighten audience by one filter, give it 5 more days. If still off, REFRESH creative concept.

---

### 2. Targeting failure

**What it looks like:** Conversions are happening at acceptable cost, but a meaningful % are out of ICP. Or in-ICP but wrong sub-segment (wrong stage, wrong role, wrong company size). The numbers look fine in the platform; the funnel is poisoned.

**How to confirm:**
- Pull the last 15–30 conversions
- For each, classify against `cmo-memory/icp.md`: in-ICP / adjacent-ICP / out-of-ICP
- Compute the out-of-ICP %
- **Threshold: >25% out-of-ICP = Targeting failure**, regardless of CAC

**The trap:** If platform-reported CAC is $50 (target met) but 40% of those conversions are out-of-ICP, **effective CAC on real prospects is $83**. The campaign is failing target by 38%, you just can't see it in the platform.

**Decision rule:**
- This rule fires INDEPENDENTLY of CAC thresholds
- ≥25% out-of-ICP for ≥7 days → tighten audience NOW (don't wait for decision-grade volume on CAC)
- ≥40% out-of-ICP → emergency-tighten or pause the audience entirely
- 10–25% out-of-ICP → flag, monitor; usually fixable with one filter addition

**Fix lives with:** `/digital`. The fix is audience tightening (add filters, exclude segments, raise company-size minimum), NOT creative or bid changes.

**Why this is its own category:** Standard CAC kill rules require 30 conversions. Targeting failures are visible at much smaller n (you can spot 4 of 8 out-of-ICP conversions and act on it). Conflating them with CAC means you wait for volume that never produces a clean decision.

**Worked example (from Dale's Agency, 2026-04-29):**
> 8 LinkedIn diagnostic conversions at $310 each. 38% out-of-ICP (pre-seed, bootstrapped agency, pre-PMF). 25% wrong role (VP Marketing, not founder). Only 38% in true ICP.
> CAC at $310 looks 3% over target — borderline HOLD by CAC rules.
> Targeting rule fires: 38% > 25% threshold → tighten audience IMMEDIATELY.
> Don't wait for n=30. Don't refresh creative. Add company-size minimum, fix the skills filter, exclude wrong-role titles.

---

### 3. Creative failure

**What it looks like:** Unit-of-spend metrics are off — low CTR, low video VTR, high CPM, frequency saturation — *before* you can even read CAC. The audience isn't even engaging.

**How to confirm:**
- CTR < 50% of channel benchmark for the format (e.g., Meta video CTR <0.7% in B2C)
- Video first-1.5s view-through < 60% of channel avg
- CPM rising 30%+ week-over-week without audience change
- Frequency >3 (Meta) or >2/30d (LinkedIn) and CTR decaying
- These show up *before* CAC matters

**Decision rule:**
- Don't wait for CAC; creative kills can fire on leading indicators
- CTR <50% of benchmark after 1k impressions → kill creative variant (not whole campaign)
- Video without sound-off-readable hook in first 1.5s + $50 spend → kill (memory rule)
- Frequency saturation → REFRESH (not kill the audience)

**Fix lives with:** `/creative` (concept) + `/copy` (variants).

**Why this is its own category:** Creative kills are LEADING-indicator kills. You can act before reaching decision-grade conversion volume. Treating them as CAC problems means waiting weeks for conversion data while burning through unhealthy ad-set spend.

**Worked example:**
> TikTok video at $145 trial-CAC vs. $45 target. But: VTR at first-1.5s is 42% (channel avg 60%+). Hook isn't earning the scroll-stop.
> CAC failure analysis would say "spend more, gather decision-grade volume." Wrong. **Creative failure: kill the creative variant, refresh the hook.**
> Don't wait for n=30 conversions on a video that's losing 58% of viewers in 1.5 seconds.

---

### 4. LP / offer failure

**What it looks like:** Click-through is healthy (CTR strong, audience engaging) but landing-page CVR is low. Traffic arrives, doesn't convert. The ad is doing its job; the page or offer is not.

**How to confirm:**
- CTR within or above channel benchmark
- CVR significantly below target (typically <50% of target)
- Bounce rate >70% on the LP
- Scroll-50 < 40% (visitors aren't engaging past the hero)
- OR: Scroll-75 high but no CTA click (visitors read but don't believe)
- OR: CTA click high but signup_completed low (form friction)

**Decision rule:**
- Don't kill the ad campaign if creative/audience is working — the leak is downstream
- Tighten by funnel stage:
  - High bounce → message congruence broken (LP doesn't echo ad hook)
  - Low scroll-depth → hero not earning attention
  - Read-but-no-click → proof / objection-handling missing
  - Click-but-no-completion → form friction or offer credibility issue

**Fix lives with:** `/digital` (CRO for paid LPs is in /digital scope) + `/copy` for body rewrite + sometimes `/cmo` if the OFFER itself (not the page) is the leak.

**The offer-vs-page distinction matters:** If you're sending paid traffic to an offer that's structurally wrong (wrong price point, wrong commitment level, wrong audience-stage match), no amount of CRO fixes it. That's a `/cmo` conversation. Page-level fixes only work when the offer itself fits the audience.

**Worked example:**
> Google Search comparison ad-group at 2.1% CVR vs. 4% target. CTR is 4.8% (excellent for B2B Search). Audience confirmed in-ICP.
> Bounce rate 78%, scroll-50 28%. **Hero is broken.**
> Diagnosis: ad promised "the X-vs-Y comparison"; LP is the generic homepage, doesn't mention the comparison at all. Message congruence severed.
> Fix: build a dedicated comparison LP. Don't blame the ad.

---

### 5. Measurement failure

**What it looks like:** Platform-reported numbers don't match GA4 don't match CRM truth. The diagnosis itself is broken before any tactical call can be made.

**How to confirm (the attribution-audit pattern):**

| Source | Conversions (period) | Revenue (period) |
|---|---|---|
| Platform UI | A | A_$ |
| GA4 | B | B_$ |
| Server-side / CRM truth | C (truth) | C_$ |

Compute:
- Platform-vs-Truth delta: (A − C) / C × 100%
- GA4-vs-Truth delta: (B − C) / C × 100%

**Thresholds:**
- Within 15%: clean enough to make decisions
- 15–30%: yellow flag, document the structural cause (iOS14 / window mismatch / dedup)
- >30%: **measurement failure** — fix before any other diagnosis is reliable

**The trap:** The other four failure modes use platform-reported metrics. If measurement is off >30%, you might be:
- Killing campaigns that are actually working (platform under-counting iOS conversions)
- Scaling campaigns that are actually failing (platform over-counting via view-through inflation)
- Misclassifying out-of-ICP because the conversion ID can't be joined to CRM
- Refreshing creative when the real problem is server-side dedup

**Decision rule:**
- If measurement delta >30% on a primary KPI: PAUSE further tactical decisions on that channel until fixed
- Run an attribution audit (`/analyst`'s monthly cadence)
- Route to `/ops` for the technical fix (CAPI, dedup keys, server-side, conversion API parity)

**Fix lives with:** `/ops` (the plumbing) + `/analyst` (the audit).

**Worked example:**
> Meta UI says 312 conversions, GA4 says 248, CRM says 232.
> Platform-vs-Truth: +34%. GA4-vs-Truth: +7%.
> 18% of the gap traces to view-through 1d-view inflation; 10% to iOS dedup miss; 6% to cross-device.
> **Measurement failure (Meta side):** until view-through is removed and dedup is fixed, every Meta CAC number is off by ~34%. Don't make Meta-channel calls on platform-reported data; use GA4 (still has 7% delta but tolerable) or CRM truth.

---

## Common conflations to avoid

### "Bad CAC" that's actually a Targeting failure
The Dale pattern. Platform shows acceptable CAC; CRM-truth CAC on real prospects is much worse. Always audit ICP-mix at small n before declaring a CAC failure.

### "Bad CAC" that's actually a Creative failure
Low CTR + high CPM in a healthy audience = creative is the bottleneck. Don't tune bids; refresh creative.

### "Bad CVR" that's actually a Measurement failure
LP CVR appearing low because conversion event isn't firing for half the conversions (server-side missing). Always check measurement before blaming the page.

### "Bad LP" that's actually an Offer failure
A page can't sell an offer that doesn't fit the audience. If the LP is competently written and CVR is still bad across multiple variants, the offer is the problem (price, commitment, audience-stage mismatch). Escalate to `/cmo`.

### "Bad campaign" that's actually multiple failures
The most expensive scenario: a campaign with simultaneous Creative + Targeting + LP failures looks like a catastrophic CAC problem and gets killed wholesale. The right move is to diagnose all three, fix in priority order (usually Creative > Targeting > LP), and resurrect the campaign with fixes in place.

## How `/analyst` reports a diagnosis

Always tag the failure mode explicitly in the output:

> **Diagnosis:** Targeting failure (primary) + CAC failure (secondary, partial)
>
> **Why:** 38% of conversions are out-of-ICP. CAC of $310 looks borderline (3% over target), but effective CAC on in-ICP prospects is ~$500 — 67% over target.
>
> **Decision-grade?** Targeting call: yes (fires at any n with >25% out-of-ICP). CAC call: no (n=8, below 30).
>
> **Action:** Tighten audience NOW. Re-evaluate CAC in 7 days with cleaner targeting.
>
> **Routes to:** `/digital` for audience tightening.

This format makes the failure mode an explicit field in every diagnosis, prevents conflation, and routes the fix to the right role.
