# Roadmap

What's shipped, what's stub, what's deferred.

## v0.2 (current)

**Roles in depth:**
- `/cmo` — entry-point router + strategic owner
- `/digital` — paid acquisition end-to-end, 8 channels covered

**Roles as stubs (handle core scope; full persona in v0.3):**
- `/creative`, `/copy`, `/content`, `/analyst`, `/ops`

**Channels covered in `/digital` reference library:**
- Google Ads (Search, PMax, YouTube, Display)
- LinkedIn (Sponsored Content, Document, Message/Conversation, ABM)
- Meta (Facebook + Instagram Feed, Reels, Stories)
- YouTube (In-Stream, Bumper, In-Feed, Shorts)
- Reddit
- X (Twitter)
- TikTok (incl. Spark Ads)
- Bing / Microsoft Ads (incl. LinkedIn-targeting layer)

**Disciplines covered:**
- Strategy frameworks (primary objective, channel theses, MER discipline)
- Kill & scale criteria (per-channel defaults, refresh triggers, decision-grade thresholds)
- ABM (account tiering, channel stack, measurement)
- CRO for paid traffic (message congruence, hero block, section sequence)
- Retargeting & 1P data activation (post-iOS14)

## v0.3 — full personas for the rest of the team

Bring the 5 stubs to depth:

- **`/creative`** — full creative-brief template tuned per channel; multi-angle creative platform planning; brand-system thinking; concept critique playbook with scoring rubrics
- **`/copy`** — long-form sales page playbook; email sequence templates; brand voice calibration tool; cold-email and outbound copy
- **`/content`** — full SEO audit playbook; topic-cluster architecture; programmatic SEO; AI search optimization; editorial calendar with KPI mapping
- **`/analyst`** — full attribution audit playbook; dashboard library; event taxonomy templates; holdout test design; MMM build guidance
- **`/ops`** — CDP architecture playbook; lead-routing patterns (HubSpot + Salesforce); marketing automation flow library; server-side event router design; privacy compliance playbook

## v0.3 — channels added to /digital

Pull from `roles/digital/TODO.md` based on user demand:

- Apple Search Ads (when first user has an iOS app)
- Audio (Spotify, podcasts) — when upper-funnel becomes a clear need
- Programmatic display (DV360, Trade Desk) — for retargeting at scale
- Bing audience network expansion

## v0.4 — beyond ad campaigns

Once ad-campaign-relevant roles are deep, extend to other marketing functions:

- **`/lifecycle`** — Lifecycle Marketer (email, onboarding, retention, CRM, churn)
- **`/brand`** — Brand Marketer (positioning, narrative, brand voice, identity)
- **`/product-marketer`** — Product Marketing Manager (positioning, launches, competitive intel, sales enablement)

## v0.5+ — full marketing org

Deeper coverage:

- **`/community`** — Community / Social Manager (organic social, community programs)
- **`/influencer-manager`** — Influencer paid programs (when distinct from organic community)
- **`/partnerships`** — Affiliate / partnership / co-marketing programs
- **`/pricing-strategist`** — Pricing & packaging research and decisions
- **`/pr`** — PR / Comms (press releases, media relations, thought leadership distribution)
- **`/seo-specialist`** — Deep technical + content SEO (graduates out of `/content`)
- **`/cro-specialist`** — Org-wide CRO beyond paid LPs (graduates out of `/digital`)

## Memory & infrastructure

Each version cycle brings:
- Refinements to `cmo-memory/` schemas
- Expanded `references/` libraries per role
- Better hand-off rules as patterns emerge from real use
- Updated `setup` script as host ecosystem evolves

## How decisions get made

- **What ships next**: driven by user requests (issue tracker) and dogfooding
- **What gets deprioritized**: anything that requires a discipline we don't yet have a senior person's intuition for
- **What gets cut**: roles that don't earn their place in the team chart after 6 months — this isn't an HR system, it's a tool that should pay for its complexity

## Versioning

Office of CMO uses semantic versioning loosely:
- **Major** (1.0+): when the team chart changes meaningfully or when we ship outside ad-campaign scope at depth
- **Minor** (0.x): each new role brought to depth, or major channel/discipline added
- **Patch** (0.x.y): playbook refinements, reference updates, bug fixes
