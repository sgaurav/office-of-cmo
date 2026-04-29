# Google Ads — Playbook

The Digital Marketer's playbook for Google Ads (Search, PMax, YouTube, Display).

## Quick take

Google Ads = the lowest-funnel channel. People searching for your category have already raised their hand. Almost every B2B SaaS and most B2C / D2C programs start here for that reason.

Strengths: pure intent capture, predictable, fast feedback. Weaknesses: keyword inventory caps your scale, gets expensive in competitive verticals, doesn't create demand (it captures it).

## When to reach for Google Ads

**Strong fit:**
- Your category has search volume (check Keyword Planner first)
- Solution-aware audience that searches for the thing you sell
- Branded search defense (you have brand searchers and competitors are bidding)
- Bottom-of-funnel conversion goals (signup, trial, demo, purchase)

**Weak fit:**
- Pre-aware audience that doesn't know your category exists yet — Meta / LinkedIn / TikTok are better for demand creation
- Pure brand-awareness goals — YouTube/Display work better
- Tiny niche category with <100 monthly searches per keyword cluster — channel can't get enough volume

## Account architecture (default for sub-$50k/month)

```
Account
├── Campaign: Branded Search
│   └── 1 ad-group: brand + brand+modifier keywords
│       └── 1 RSA + 1 sitelink + 4 callouts
├── Campaign: Non-Branded Search (high-intent)
│   ├── Ad-group: <category-term-1>
│   ├── Ad-group: <category-term-2>
│   └── Ad-group: <competitor-comparison>  (optional, gated)
├── Campaign: PMax (LAUNCH ONLY AFTER SEARCH GRADUATES)
│   └── 1 asset group, exclusion lists for brand
└── Campaign: YouTube In-Stream (optional, awareness only)
```

**Keep brand and non-brand in SEPARATE campaigns.** Co-mingling them makes performance impossible to read. Branded is cheap and high-CVR; non-branded is the real test.

## Pre-flight

1. **Conversions imported** from GA4 into Google Ads (Tools → Conversions → Import → GA4)
2. **Auto-applied recommendations OFF** (Settings → Recommendations → uncheck all)
3. **Account-level negatives** uploaded (brand-protection negatives, irrelevant industries, recruiting terms)
4. **Audience signals** built: Customer Match (paid customers email upload, hashed); detailed demographics ON if relevant
5. **Sitelinks, callouts, structured snippets** at the account level (Search saves real money on impression share with full extensions)

## Search campaign — settings

1. **Campaign goal**: "Sales" or "Leads" (matches strategy)
2. **Type**: Search
3. **Conversions**: primary conversion action(s) from measurement plan
4. **Networks**: ☑ Search only — ☐ Search Partners (low quality), ☐ Display
5. **Locations**: precise. Advanced → "People in or regularly in your targeted locations" (NOT "interest" matches)
6. **Languages**: matches creative
7. **Audience segments**: add as **Observation**, not Targeting (free data on which audiences convert without restricting reach)
8. **Bidding**:
   - Test: Manual CPC with Enhanced CPC OFF. Max bid = top-3 keyword avg CPC × 1.2 (from Keyword Planner)
   - Scale: tCPA, target = strategy CPA × 1.0 (let it find the right inventory)
9. **Budget**: ≥$50/day floor per campaign in test
10. **Ad rotation**: Optimize (default)

## Ad-groups (the discipline)

- **5–15 keywords** per ad-group, tightly themed
- **Match types**: Exact + Phrase only in test phase. Broad ONLY after CPA stable for 4+ weeks (then with target bid in tCPA)
- **Negative keywords**: cluster-specific
- **Don't mix intents**: "how to" queries belong in a different ad-group from "buy" queries

## RSAs (Responsive Search Ads)

- **15 headlines (≤30 char each)**, mix of:
  - Brand + benefit ("Acme — Cut closing time 40%")
  - Specific feature
  - Numeric / social proof ("Trusted by 1,200 finance teams")
  - CTA verb ("Start your free trial")
  - Pinned headline (position 1) for the lead message
- **4 descriptions (≤90 char each)**: outcome, benefit, social proof, urgency
- **Sitelinks (4)**: Pricing / Customers / Demo / About
- **Callouts (4)**: top features
- **Structured snippets**: relevant categories
- **Display path (2 × 15 char)**: relevant to keyword cluster

## Bid strategies — when to use which

| Strategy | When |
|---|---|
| Manual CPC | First 2 weeks of any new campaign; full control while data is sparse |
| Maximize Conversions | Test with bigger budgets ($300+/day) when you want fast learning |
| tCPA | Steady-state once you have ≥30 conversions per week per campaign |
| tROAS | E-commerce with reliable revenue tracking; 60+ conversions/week minimum |
| Maximize Clicks | Branded campaigns only; cheap defense |

## PMax (gated — Scale-phase tool)

Do NOT run before Search has graduated. PMax conflates everything (Search, Display, YouTube, Discover, Gmail) into one campaign you can't truly read. Use only when you have stable Search and want to expand.

- 1 asset group per audience theme
- 5 logos, 5 long headlines, 5 headlines, 5 descriptions, 5–10 images, 1+ video
- **Audience signals**: Customer Match + custom segments — required for guidance
- **Exclude brand keywords** from PMax (so it doesn't cannibalize Branded Search)
- **Bid**: tROAS only

## YouTube (under Google Ads)

See [youtube-ads.md](youtube-ads.md) — separate playbook because the strategy is different.

## Budget pacing

- Daily floor: $50/day per campaign (Search). Below this, the algorithm starves.
- Test phase: 70% of channel budget in non-branded test, 30% in branded defense
- Scale phase: shift to 30% test / 70% scale across campaigns that have graduated

## Kill criteria

- **Branded search**: only kill if it's somehow at >$50 CPA (basically broken; review setup)
- **Non-branded search**: $300 spend OR 14 days at >2× target CPA
- **PMax**: tighter — $500 spend OR 21 days at >1.5× target CPA (it spends fast)
- **Quality Score floor**: any RSA with QS <4 after 1k impressions → rewrite

## Scale rules

- +20% every 3 days when CAC < target × 0.8 for 7+ days
- Add new keyword clusters to ad-groups before adding budget at top
- Cap ad-group keyword count at ~15 — if growing, split into a new ad-group

## Common mistakes

- ❌ Letting Search Partners on (poor CVR, lots of waste)
- ❌ Mixing brand + non-brand in same campaign
- ❌ Using Maximize Conversions in test phase with low budget — spends fast, learns nothing
- ❌ Skipping the "Observation" trick — losing free data on which audiences convert best
- ❌ Running PMax in parallel with Search before Search has graduated — PMax cannibalizes branded queries silently
- ❌ Letting auto-applied recommendations be on — Google "helps" by removing your negatives
- ❌ Display Network on by default in a Search campaign — instant waste

## Common Google Ads pitfalls (subtle)

- "Limited by budget" warning that's been there for weeks → either scale or you're losing impression share for no reason
- Quality Score deteriorating after a creative refresh → the new ads aren't congruent with keywords
- Search impression share % below 50% on branded → competitors are eating your brand traffic; raise bid or add more brand-protection negatives
- Auction Insights showing a new competitor → time to refresh creative

## Compliance / policy gotchas

- Trademark: don't use competitor names in ad text (text policy); you can target on competitor names as keywords
- Healthcare: many treatment terms restricted; LegitScript certification required for some
- Financial: lending requires verification; crypto requires certification
- LP quality: redirect chains, malware, intrusive interstitials → disapproval
- ALL CAPS in headlines → instant rejection ("FREE TRIAL" no, "Free Trial" yes)
- Repeated punctuation ("!!!") → rejection

## Hand-offs from this channel

- Creative concepts beyond hooks → `/creative`
- RSA copy variants beyond 15 headlines → `/copy`
- Cross-channel attribution divergence (Google vs. GA4 vs. Truth) → `/analyst`
- Conversion import broken / GA4 not syncing → `/ops`

## When NOT to run Google Ads

- Pre-aware category with no search volume → Meta or LinkedIn for demand creation first
- Pure brand awareness goal at <$10k/month → YouTube doesn't have the floor; consider organic
- Highly regulated verticals where account approval will take weeks → start elsewhere while waiting
