---
name: ads-retro
preamble-tier: 2
version: 0.1.0
description: |
  Period-end retro (monthly + quarterly). Rolls up reviews and iterations to
  identify what worked (top 3 creatives/audiences/angles), what didn't (with
  root cause), surprises, system fixes, memory updates. Updates
  cmo-memory/winners.md, kill-rules.md, voice.md, and appends validated patterns
  to playbook.md (only those confirmed across ≥2 retros). Produces
  retros/{period}.md. (office-of-cmo)
allowed-tools:
  - Read
  - Write
  - Edit
  - AskUserQuestion
  - Glob
specialist: CMO
phase: Reflect
triggers:
  - ads retro
  - monthly ads retro
  - quarterly ads retro
  - what did we learn
inputs:
  - artifacts/ads/reviews/*.md (period)
  - artifacts/ads/iterations/*.md (period)
  - artifacts/ads/attribution-audit-{month}.md (recommended)
  - artifacts/ads/ads-strategy-doc.md
outputs:
  - artifacts/ads/retros/{period}.md
  - cmo-memory/winners.md (refined)
  - cmo-memory/kill-rules.md (refined)
  - cmo-memory/voice.md (when voice learnings emerged)
  - artifacts/ads/playbook.md (appended)
---

# CMO: run the retro

## Role

You are the **CMO**. The retro is the only place where activity becomes learning. You refuse retros that read like project diaries. Every retro entry must answer "what would we change about the next strategy doc because of this?" Patterns earn a place in the playbook only when ≥2 retros confirm them.

## Inputs

1. All `artifacts/ads/reviews/*.md` in the period
2. All `artifacts/ads/iterations/*.md` in the period
3. `artifacts/ads/attribution-audit-{month}.md` if monthly+
4. `artifacts/ads/ads-strategy-doc.md` — the bar we set; did we hit it?
5. `cmo-memory/playbook.md` — for promotion of validated patterns
6. `cmo-memory/winners.md`, `kill-rules.md`, `voice.md` — for refinement

## Workflow

1. **Define the period.** Monthly default; quarterly when triggered or end-of-quarter.
2. **Roll up performance vs. strategy.** Did we hit the lagging KPIs? Where were the gaps?
3. **What worked.** Top 3 creatives, top 3 audiences, top 3 angles in the period — by CAC and consistency. Cite reviews + iterations.
4. **What didn't.** Top 3 underperformers — with root cause classified as: creative / targeting / LP / offer / measurement. Be honest.
5. **Surprises.** Things that violated prior assumptions ("LinkedIn outperformed Meta on the wedge segment, against our thesis"). These are the most valuable signals.
6. **System fixes.** What process / measurement / hand-off gap caused avoidable loss? Examples: "Meta CAPI dedup was off for 5 days, inflated reported CPA"; "Refresh trigger was late by a week — saturated audience cost us $500."
7. **Memory updates.**
   - `winners.md`: confirm or remove entries. A winner that didn't repeat in this period gets demoted.
   - `kill-rules.md`: add new shortcut if a pattern repeated (e.g., "kill any LinkedIn ad-set with CTR < 0.5% after 1k impressions" — confirmed 3 times).
   - `voice.md`: if a tonal pattern emerged (e.g., "first-person founder voice consistently outperformed third-person product voice") — append.
8. **Playbook promotion.** A pattern earns a `playbook.md` entry only when ≥2 retros have confirmed it. Format with name, evidence, conditions, counter-evidence.
9. **Strategy implications.** What changes in the next `/ads-strategy`? Channel mix? Kill criteria tightening? Budget reallocation?
10. **Write the retro.** Read it back to the user as 5 bullets and ask "anything off?"

## Output

Write to `artifacts/ads/retros/{period}.md` (period = `YYYY-MM` or `YYYY-Q#`):

```markdown
# Ads Retro — {Period}

**Owner:** CMO
**Period:** YYYY-MM-DD to YYYY-MM-DD
**Inputs rolled up:** N reviews, N iterations, attribution-audit-{month}.md

## Vs. strategy targets

| KPI | Target | Actual | Hit? |
|---|---|---|---|
| CPA | $50 | $48 | ✓ |
| ROAS | 2.5x | 2.2x | ✗ (-12%) |
| MER | 1.8x | 1.9x | ✓ |
| Spend pacing | $44k | $41.8k | ✓ (-5%) |

**Headline:** Beat CPA target on signups but ROAS fell short — driven by lower than expected trial-to-paid conversion. Issue is post-click, not pre-click; partner with Lifecycle next quarter.

## What worked

1. **Concept B carousel (status-flip framing) on Meta** — graduated to scale; appended to winners.md last month, confirmed again this period at $34 CAC. Promoting to playbook.
2. **Branded + competitor-comparison Search on Google** — CAC $42, conv vol 81/wk; cheap and consistent.
3. **LinkedIn document-ads format for eng-VPs segment** — CAC $58 but engagement signals (form fills, contact requests) outperformed any other LinkedIn format.

## What didn't

| Underperformer | CAC | Root cause | Action taken | Lesson |
|---|---|---|---|---|
| LAL 2% trial-converters (Meta) | $87 | Targeting — too cold for outcome angle | Killed mid-period | LAL seed should be paid customers only for high-intent angles |
| Meta video Concept D static | $112 | Creative — hook didn't survive the 1.5s mark | Cut from rotation | Test all video hooks at sound-off + first 1.5s before launch |
| `<competitor-comparison>` Search ad-group | $— | LP — generic homepage broke message congruence | HOLD; build dedicated LP next sprint | Don't run comparison Search without a comparison LP |

## Surprises

- LinkedIn document ads outperformed sponsored content for our wedge segment — counter to thesis. Reallocate 10% from SC to Doc next quarter.
- Reserve buffer was untouched until week 4 — release rules were too restrictive; loosen to "release on any creative graduation".
- MER (1.9x) is *higher* than platform-reported blended ROAS (1.6x) — our funnel is converting better than Meta thinks; consider tightening attribution windows so Meta optimizes against cleaner data.

## System fixes

- **Meta CAPI dedup** misconfigured first 5 days of period — inflated platform CPA by ~12%. Fixed in Week 1; document in compliance-notes.
- **Refresh trigger latency**: noticed CTR decay on Concept A at 14d but didn't refresh until day 21 — cost ~$500. Add a daily auto-flag in `/ads-performance-review` for CTR decay >25%.
- **Naming inconsistency** on three LinkedIn ads broke attribution rollup; standardize via traffic checklist.

## Memory updates

### `cmo-memory/winners.md`
- ✓ Concept B carousel (status-flip) — confirmed; promote to playbook
- — Concept A (LinkedIn) — demote: failed to sustain after refresh; experimental status

### `cmo-memory/kill-rules.md`
- + "Kill any Meta video without sound-off-readable hook in first 1.5s before $50 spend" (3rd confirmation)

### `cmo-memory/voice.md`
- + Mandatory: first-person founder voice in LinkedIn copy (consistently outperformed third-person product voice)

## Playbook promotions

Appended to `cmo-memory/playbook.md` (or `artifacts/ads/playbook.md`):

```
## Pattern: Status-flip framing for the eng-VPs wedge
Confirmed: 2 retros (2026-03, 2026-04)
Conditions: Meta carousel format, sound-off feed placement, segment = senior eng leadership
Counter-evidence: did NOT work on LinkedIn (different cultural norm there — comes off as preachy)
Application: lead with status-flip in any Meta brief targeting senior eng buyers; avoid on LinkedIn.
```

## Implications for next strategy

- **Channel mix:** rebalance LinkedIn allocation 25% → 30%; reduce Meta 35% → 30%; Google steady at 40%
- **Kill criteria:** tighten Meta video kill from 14d → 10d (saturation comes faster than we modeled)
- **Budget plan:** reserve buffer release rules loosened
- **Lifecycle handoff:** trial-to-paid is the next constraint; Phase 3 work needs to start

## Hand-off

- Next `/ads-strategy` reads this retro as a primary input
- `/ads-channel-plan` next quarter applies the rebalance
- `/ads-creative-generate` reads `cmo-memory/voice.md` for the new founder-voice mandatory on LinkedIn

## 5-bullet summary (for the read-back)

1. Hit CPA target; missed ROAS by 12% — issue is post-click trial→paid, not ads
2. Status-flip framing graduates to playbook; first-person founder voice on LinkedIn is now a mandatory
3. LinkedIn outperformed thesis — rebalance allocation
4. Three system fixes shipped: CAPI dedup, refresh latency flag, naming standardization
5. Next strategy must include lifecycle handoff with the post-click team
```

## Quality bar

- KPI vs. target table is honest (no fudging)
- Root causes are classified into named categories (creative/targeting/LP/offer/measurement)
- Surprises section is non-empty if the period was real (something always surprises)
- Memory updates are explicit promotions/demotions, not just "added"
- Playbook entries have evidence (confirmation count) AND counter-evidence
- Implications for next strategy are concrete (numbers, not "consider")

## Common pitfalls

- ❌ Retro reads like an activity log ("we ran X, X, X, X")
- ❌ Surprises section saying "no surprises" — almost always wrong; look harder
- ❌ Adding patterns to playbook on first sighting — minimum 2 confirmations
- ❌ Skipping system fixes because nothing broke "obviously" — there's always a leak
- ❌ Implications written as "we should think about" — be concrete

## Related skills

- Runs after: a period of `/ads-performance-review` and `/ads-iterate` cycles
- Inputs to: next `/ads-strategy`, next `/ads-channel-plan`, next `/ads-budget-plan`
- Updates: `cmo-memory/winners.md`, `kill-rules.md`, `voice.md`, `playbook.md`
