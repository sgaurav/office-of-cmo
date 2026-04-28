# Artifacts

The contract between skills. Every skill reads from one or more artifact paths and writes to exactly one. Schemas are loose Markdown — the contract is the section names and required fields, not the prose around them.

## Path conventions

```
artifacts/
└── ads/
    ├── ads-strategy-doc.md
    ├── audience-doc.md
    ├── competitor-creative-report.md
    ├── channel-plan.md
    ├── budget-plan.md
    ├── measurement-plan.md
    ├── tagging-spec.md
    ├── creative-briefs/
    │   └── {campaign-slug}.md
    ├── creative-decks/
    │   └── {campaign-slug}.md
    ├── landing-briefs/
    │   └── {campaign-slug}.md
    ├── pre-launch-checks/
    │   └── {YYYY-MM-DD}.md
    ├── platform-setup-log.md
    ├── reviews/
    │   └── {YYYY-MM-DD}-{daily|weekly|monthly}.md
    ├── attribution-audit-{YYYY-MM}.md
    ├── iterations/
    │   └── {YYYY-MM-DD}.md
    ├── retros/
    │   └── {YYYY-MM | YYYY-Q#}.md
    ├── compliance/
    │   └── {YYYY-MM-DD}.md
    └── playbook.md
```

`{campaign-slug}` is `kebab-case-3-to-5-words`, e.g., `q1-eng-vps-cold-meta`.

## Strategy phase

### `ads-strategy-doc.md`
**Written by:** `/ads-strategy`
**Required sections:**
- `# Ads Strategy — {Quarter | Date}`
- `## Primary Objective` (one of: Demand Capture / Demand Creation / Brand / Retention)
- `## KPIs` (table: KPI | Type [leading/lagging] | Target | Source)
- `## Budget Envelope` (monthly floor, ceiling, test/scale split)
- `## Channel Mix Hypothesis` (table: Channel | Thesis | Expected % of spend)
- `## Kill Criteria` (per channel, quantitative: spend threshold + time threshold + metric threshold)
- `## Scale Criteria` (per channel)
- `## Out of Scope` (channels we will NOT run, with one-line reason each)

### `audience-doc.md`
**Written by:** `/ads-audience-research`
**Required sections:**
- `# Audience — {Date}`
- `## Segments` (per segment: Profile, JTBD, Triggers, Objections, Watering Holes, Channel Fit)
- `## Wedge Segment` (which segment to win first, why)
- `## Message Angles` (per segment: Problem / Outcome / Identity)

### `competitor-creative-report.md`
**Written by:** `/ads-competitor-scan`
**Required sections:**
- `# Competitor Creative Scan — {Date}`
- `## Competitors Reviewed` (list)
- `## Per-Competitor Playbook` (positioning, audience inferred, primary angles, formats)
- `## Whitespace` (angles nobody is running)
- `## Red Ocean` (angles everyone runs — avoid blandness)

## Plan phase

### `channel-plan.md`
**Written by:** `/ads-channel-plan`
**Required sections:**
- `# Channel Plan — {Date}`
- `## Channels` (per channel: Campaign Types, Audiences, Bid Strategy, Naming Convention, Account Structure, Expected CPA Range)
- `## Test → Scale Gates` (per channel)
- `## Channel Sequence` (which to start first, why)
- `## Resource Needs` (creative count, copy variants, LP variants per channel)

### `budget-plan.md`
**Written by:** `/ads-budget-plan`
**Required sections:**
- `# Budget Plan — {Month}`
- `## Allocation` (table: Channel | Test $ | Scale $ | Total $ | % of Total)
- `## Daily Floors` (per campaign, sized to avoid algorithm starvation)
- `## Scaling Rules` (e.g., +20% every 3d when CAC < target × 0.8)
- `## Kill Thresholds` (per channel, references strategy doc)
- `## Reserve Buffer` (% held back for opportunistic tests)

### `measurement-plan.md`
**Written by:** `/ads-measurement-plan`
**Required sections:**
- `# Measurement Plan — {Date}`
- `## Conversion Events` (primary, assist; with descriptions)
- `## KPI Sources` (table: KPI | Source | Confidence)
- `## UTM Scheme` (utm_source / utm_medium / utm_campaign / utm_content / utm_term, with examples)
- `## Attribution Model` (chosen model, rationale)
- `## Dashboards` (what's needed, where they live, review cadence)
- `## Tracking Gaps` (things engineering needs to ship)

### `tagging-spec.md`
**Written by:** `/ads-measurement-plan`
**Required sections:**
- `# Tagging Spec — {Date}`
- `## Pixels & Tags` (Meta CAPI, GA4, LinkedIn Insight, etc.)
- `## Events to Fire` (event name, parameters, where it fires)
- `## QA Steps` (how to validate live)

## Create phase

### `creative-briefs/{slug}.md`
**Written by:** `/ads-creative-brief`
**Required sections:** Audience, Single-Minded Message, Angle, Format Spec, Mandatories, Don'ts, Inspiration References, Hook Prompts.

### `creative-decks/{slug}.md`
**Written by:** `/ads-creative-generate`
**Required sections:** Brief Reference, Hooks (8), Platform Copy (Meta/Google/LinkedIn), Visual Concepts (5–8), Concept Scoring, Ship List (top 3 + rationale).

### `landing-briefs/{slug}.md`
**Written by:** `/ads-landing-brief`
**Required sections:** Hook Carry-Through, Hero (headline/subhead/CTA/visual), Above-the-Fold Proof, Section Sequence, Mobile Wireframe (ASCII), Tracking Events.

## Launch phase

### `pre-launch-checks/{date}.md`
**Written by:** `/ads-pre-launch-check`
**Required sections:** Pixels & Tags PASS/FAIL, Conversions Firing PASS/FAIL, UTMs PASS/FAIL, Audiences PASS/FAIL, Exclusions PASS/FAIL, Budget/Schedule/Geo PASS/FAIL, Bid Strategy PASS/FAIL, Creative Naming PASS/FAIL, Brand Safety PASS/FAIL, Compliance Reference, Final GO/NO-GO with sign-off line.

### `platform-setup-log.md`
**Written by:** `/ads-platform-setup`
**Required sections:** per platform, the exact settings applied (campaign type, audience, bid, schedule, budget, conversions chosen, exclusions, creative IDs).

## Measure phase

### `reviews/{date}-{cadence}.md`
**Written by:** `/ads-performance-review`
**Required sections:** Period, Spend vs. Plan, KPI Table (Actual vs. Target with delta), Winners (statistically meaningful), Losers, Anomalies, Top 3 Recommended Actions.

### `attribution-audit-{YYYY-MM}.md`
**Written by:** `/ads-attribution-audit`
**Required sections:** Source Comparison Table (Platform vs. GA4 vs. Truth), Deltas Explained, Model Recommendation, Holdout/Incrementality Recommendation, MER Sanity Check.

## Optimize phase

### `iterations/{date}.md`
**Written by:** `/ads-iterate`
**Required sections:** Per Ad Set: Status (KILL/SCALE/REFRESH/HOLD) | Confidence (low/med/high) | Action (with budget step or refresh trigger) | Justification (cites metric thresholds).

## Reflect phase

### `retros/{period}.md`
**Written by:** `/ads-retro`
**Required sections:** Period, What Worked (top 3 each: creatives, audiences, angles), What Didn't (with root cause), Surprises, System Fixes, Memory Updates Applied, Playbook Entries Added.

### `playbook.md`
**Appended by:** `/ads-retro`
**Required structure:** chronological list of validated patterns, each with: pattern name, evidence (which retro confirmed it), conditions (when it applies), counter-evidence (when not).

## Utility

### `compliance/{date}.md`
**Written by:** `/ads-compliance-check`
**Required sections:** Platform Policy Review, Claims Substantiation, FTC/Disclosure Review, Brand Safety, Verdict (PASS / WARNINGS / BLOCKERS).

## Memory artifacts

Stored under `cmo-memory/` (or `OCMO_MEMORY_DIR`). Not vertical-specific:

- `cmo-context.md` — base profile (business type, stage, ICP summary, voice, platforms)
- `icp.md` — full ICP with segments
- `voice.md` — brand voice + banned phrases + mandatories
- `winners.md` — repeatedly outperforming creatives/angles/audiences
- `kill-rules.md` — patterns to kill faster than the strategy doc would
- `compliance-notes.md` — platform-specific learnings
