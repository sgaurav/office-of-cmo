# The CMO Sprint

Every vertical (Ads, Content, Lifecycle, Brand, CRO, …) follows the same seven-phase arc. Phases are not equal in length: Strategy might happen once a quarter, Measure happens weekly, Optimize happens daily.

```
┌──────────┐   ┌──────┐   ┌────────┐   ┌────────┐   ┌─────────┐   ┌──────────┐   ┌─────────┐
│ Strategy │ → │ Plan │ → │ Create │ → │ Launch │ → │ Measure │ → │ Optimize │ → │ Reflect │
└──────────┘   └──────┘   └────────┘   └────────┘   └─────────┘   └──────────┘   └─────────┘
     CMO     Perf Lead   Creative Dir  Trafficker   Analytics    Perf Lead       CMO
              + Analytics  + Copy        + Ads Ops    Lead         + Creative
```

## Phase definitions

| Phase | Question it answers | Cadence | Specialist(s) |
|---|---|---|---|
| Strategy | Why are we doing this and what counts as winning? | Quarterly | CMO, Audience Insights |
| Plan | What is the concrete program (channels, budget, KPIs)? | Quarterly + as-needed | VP Performance, Analytics |
| Create | What goes into market, exactly? | Per campaign | Creative Director, Copywriter, Conversion Strategist |
| Launch | Is the program safe to go live? | Per campaign | Ads Trafficker, Compliance |
| Measure | What is the program actually doing? | Daily / Weekly / Monthly | Analytics Lead |
| Optimize | What do we kill, scale, refresh, or hold? | Per review cycle | VP Performance + Creative |
| Reflect | What did we learn? What goes into memory? | Monthly + Quarterly | CMO + Knowledge Manager |

## Sprint cadence (Ads, default)

```
Day 0          Strategy + Plan written; channels chosen; kill criteria locked
Day 1-3        Create: briefs → copy → landing pages
Day 4          Pre-launch checks → GO
Day 4-14       Test phase: 70% of budget, kill on schedule
Day 14         First weekly Performance Review
Day 14         Iterate: kill losers, double down on early winners
Day 30         First monthly Attribution Audit
Day 30         Begin Scale phase: 30% test, 70% scale, ratchet up by +20% / 3d
Day 90         Quarterly Retro; update cmo-memory; rewrite Strategy doc
```

## How phases hand off

Each phase writes one or more Markdown artifacts at known paths under `artifacts/<vertical>/`. The next phase's skill reads those without re-asking the user. See `ARTIFACTS.md` for the full path map and schemas.

Example chain (Ads):

```
/ads-strategy           → ads-strategy-doc.md
/ads-audience-research  → audience-doc.md       (also updates cmo-memory/icp.md)
/ads-competitor-scan    → competitor-creative-report.md
        ↓
/ads-channel-plan       → channel-plan.md         (reads strategy + audience + competitor)
/ads-budget-plan        → budget-plan.md          (reads strategy + channel)
/ads-measurement-plan   → measurement-plan.md, tagging-spec.md
        ↓
/ads-creative-brief     → creative-briefs/{slug}.md     (reads audience + channel + voice)
/ads-creative-generate  → creative-decks/{slug}.md      (reads brief)
/ads-landing-brief      → landing-briefs/{slug}.md      (reads brief + winning hook)
        ↓
/ads-pre-launch-check   → pre-launch-checks/{date}.md   (reads measurement + tagging)
/ads-platform-setup     → platform-setup-log.md
        ↓
/ads-performance-review → reviews/{date}-{cadence}.md   (reads strategy KPIs)
/ads-attribution-audit  → attribution-audit-{month}.md
        ↓
/ads-iterate            → iterations/{date}.md          (reads latest review + strategy)
        ↓
/ads-retro              → retros/{period}.md
                          updates cmo-memory/{winners,kill-rules,voice}.md
                          appends to playbook.md
```

## Skipping phases

Some scenarios skip phases legitimately:
- "Just refresh creative on a winning campaign": Create → Launch (skip Strategy/Plan)
- "Mid-quarter pivot after a launch underperformed": Strategy → (jump to) Optimize
- "Pure measurement audit, no changes": Measure only

When skipping, the skill being invoked still reads its required upstream artifacts; if missing, it asks the user instead of fabricating defaults.
