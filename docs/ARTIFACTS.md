# Artifacts

Roles write Markdown artifacts when a deliverable will be reread by a human. Artifacts are NOT a contract between roles (memory is) — they're outputs the user asked for.

## When a role writes an artifact

- The user explicitly asks ("draft a strategy doc", "give me a plan I can share with the board")
- The conversation produces a decision document a human will reread (a quarterly retro, a pre-launch check)
- The role is doing structured work where the artifact is the natural output (a creative brief, a measurement plan)

When the user just wants a quick answer, roles answer in chat. They don't auto-write artifacts.

## Default paths

```
artifacts/
└── ads/
    ├── strategy-{YYYY-Q#}.md           # /digital or /cmo
    ├── channel-plan-{YYYY-Q#}.md       # /digital
    ├── budget-plan-{YYYY-MM}.md        # /digital
    ├── briefs/{slug}.md                # /digital + /creative
    ├── decks/{slug}.md                 # /creative + /copy
    ├── landing-briefs/{slug}.md        # /digital
    ├── pre-launch-{YYYY-MM-DD}.md      # /digital
    ├── reviews/{YYYY-MM-DD}-{cadence}.md  # /digital + /analyst
    ├── attribution-audit-{YYYY-MM}.md  # /analyst
    ├── iterations/{YYYY-MM-DD}.md      # /digital
    ├── retros/{period}.md              # /cmo
    ├── compliance/{YYYY-MM-DD}.md      # /digital + /ops
    └── playbook.md                     # appended by /cmo at retros
```

## Artifact schemas

Schemas are intentionally **loose** — section headings are the contract, prose is free-form. Don't enforce rigid templates.

### `strategy-{period}.md` (written by `/cmo` or `/digital`)
Required sections:
- `# Strategy — {period}`
- `## Primary Objective` (one of: Demand Capture / Demand Creation / Brand / Retention)
- `## KPIs` (with numbers)
- `## Budget Envelope` (floor / ceiling / split)
- `## Channel Mix` (with one-line theses)
- `## Kill Criteria` (quantified, time-bounded)
- `## Scale Criteria`
- `## Out of Scope` (channels we explicitly will not run)

### `channel-plan-{period}.md` (written by `/digital`)
Per channel: campaign types, audiences, bidding, account structure, naming, expected CPA range, test→scale gates, resource needs.

### `briefs/{slug}.md` (written by `/digital` + `/creative`)
Audience, single-minded message, angle, format spec, mandatories, don'ts, inspiration, candidate hooks.

### `reviews/{date}-{cadence}.md` (written by `/digital` or `/analyst`)
TL;DR (3 lines), top 3 actions, spend pacing, KPI vs. plan, winners, losers, anomalies, memory updates.

### `iterations/{date}.md` (written by `/digital`)
Per ad-set: KILL/SCALE/REFRESH/HOLD with confidence, action, justification.

### `retros/{period}.md` (written by `/cmo`)
Vs. strategy targets, what worked, what didn't, surprises, system fixes, memory updates, implications for next strategy.

### `compliance/{date}.md` (written by `/digital` or `/ops`)
Platform policy review, claims substantiation, FTC/disclosure review, brand safety, verdict.

### `attribution-audit-{month}.md` (written by `/analyst`)
Per-channel reconciliation table, delta explanations, MER vs. claims, model recommendations, memory updates.

## Versioning

Artifacts are checkpoints, not versioned files. If you replan a quarter, write a new strategy doc with the new period; don't edit the old one in place. The `cmo-memory/` layer is what carries forward; artifacts are snapshots.

## Cleanup

Artifact files don't expire. After a year, you'll have a stack — that's fine. Use them as the cited inputs to next quarter's strategy doc and retros, then leave them.

## What artifacts are NOT

- Not a hand-off contract between roles (memory is)
- Not the only output of a role (most conversations don't produce artifacts)
- Not auto-generated; roles only write them when asked or when the conversation naturally ends in a deliverable
