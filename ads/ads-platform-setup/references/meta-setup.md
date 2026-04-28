# Meta — Setup Checklist

Click-by-click for a Conversions campaign. Adapt for retargeting / awareness as needed.

## Pre-flight

1. **Pixel + CAPI live**: Events Manager → confirm pixel events appear; CAPI events arrive within 5s; dedup keys set on browser+server pairs
2. **Aggregated Event Measurement**: domain verified; primary conversion event prioritized (web events #1)
3. **Custom audiences built**:
   - Existing customers (uploaded list)
   - Trial-converters (last 90d)
   - Site visitors 30d / 60d / 90d
   - Email-list LAL seed (if available)
4. **Lookalikes**:
   - 1% LAL of paid customers
   - 2% LAL of trial-converters
   - 1% LAL of email engagers (if relevant)

## Campaign — Conversions

1. Buying type: Auction
2. Objective: **Sales** (formerly Conversions)
3. Special ad categories: only if applicable (Credit / Employment / Housing / Social Issues — restricts targeting)
4. Campaign budget: ABO in test phase (control ad-set budgets manually); CBO in scale phase
5. Campaign name: per channel-plan naming convention

## Ad-set (one per ad-set in plan)

1. Conversion location: Website
2. Performance goal: **Maximize number of conversions**
3. Pixel: confirmed
4. Conversion event: from `tagging-spec.md` (signup_completed)
5. Cost per result goal: leave blank in test (let algo learn); use as soft cap in scale
6. Budget: daily, ≥ daily floor from `budget-plan.md`
7. Schedule: start date set; no end date unless campaign-bound
8. Audience:
   - Custom audiences include / exclude per channel-plan
   - LAL or broad as specified
   - Detailed targeting: minimal in test (Meta's algo prefers broad)
   - Detailed targeting expansion: ON
9. Languages: per creative
10. Placements:
    - **Manual** (not Advantage+ in test phase)
    - ☑ Feeds (Facebook + Instagram)
    - ☑ Reels (Facebook + Instagram)
    - ☑ Stories
    - ☐ Audience Network (turn back on only after validation)
    - ☐ Right-column Facebook (low quality)
11. Optimization: standard
12. Attribution setting: 7-day click + 1-day view (default) — track this; tighten in audit

## Ads (per ad-set)

For each ad in the creative-deck ship list:
1. Identity: Page + IG account
2. Format: matches creative-deck (Single image / Video / Carousel)
3. Media: upload assets per asset spec (9:16 master + 1:1 trim + 4:5 trim where relevant)
4. Primary text: short / med / long variants
5. Headline: ≤27 char optimal
6. Description: ≤27 char optimal
7. Destination URL: includes full UTM string
8. CTA button: matches creative-brief
9. URL parameters: (alternative way to set UTMs cleanly)
10. Tracking: Pixel + CAPI confirmed live for this ad
11. **Naming**: per channel-plan ad naming (`<format>_<hook-id>_<concept>`)

## Audience exclusions (always)

- Existing customers
- Recent converters (last 30d)
- Anti-segments from `audience-doc.md`
- Pixel-event audiences that imply non-target intent

## Subtle settings to verify

- "Detailed targeting expansion": ON in test (helps algo)
- "Advantage+ creative": OFF in test (we want to test our concepts unmodified)
- Catalog: only if e-commerce
- Promo code: rarely useful
- Languages: lock to your creative language

## Special ad categories (if applicable)

If your business is in: Credit / Employment / Housing / Social Issues, Elections or Politics:
- Targeting restrictions apply (no age, gender, demographic)
- Disclaimer required
- Run only if account-level certification complete

## Brand safety

- **Inventory filter**: Limited (default Standard inventory has more sensitive content adjacency)
- **Block lists**: upload brand-safety block lists if you have them
- Skip "Expanded" inventory in B2B contexts

## QA before activation

1. Use **Meta Events Manager → Test Events**: confirm signup_started and signup_completed fire from your LP
2. Confirm dedup is working (browser + CAPI events match per dedup key)
3. Use **Ads Library**: open your own ad after publishing in Paused state to confirm preview matches expectation
4. Status: PAUSED until pre-launch GO

## Common mistakes

- Letting Advantage+ Audience override your seeded audience in test
- Audience size <10k for LAL — too small; broaden
- Daily budget below $25 — algorithm starves
- Posting same creative across all placements in 1:1 only (Reels/Stories want 9:16)
- Using only 1d-click attribution → undercounts; default 7d-click + 1d-view, but reconcile in attribution audit
