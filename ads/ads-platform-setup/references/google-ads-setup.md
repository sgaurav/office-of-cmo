# Google Ads — Setup Checklist

Click-by-click for a Search campaign. Adapt minimally for PMax / Display / YouTube.

## Pre-flight (before any campaign)

1. **Conversions imported** from GA4 into Google Ads (Tools → Conversions → Import → GA4)
2. **Recommended exclusions** unchecked: turn off auto-applied recommendations
3. **Account-level negatives** uploaded (brand-protection negatives, irrelevant industries)
4. **Audience signals** built: Customer match list (paid customers email upload, hashed); detailed demographics turned on if relevant

## Campaign — Search

1. **New Campaign** → goal = "Sales" or "Leads" (matches strategy doc)
2. Campaign type: Search
3. Conversions: pick the primary conversion action(s) from `tagging-spec.md`
4. Networks: ☑ Search, ☐ Search Partners, ☐ Display
5. Locations: pick from strategy. Advanced → "People in or regularly in your targeted locations" (avoid "interest" matches)
6. Languages: matches creative
7. Audience segments: add as **Observation**, not Targeting
8. Bidding strategy:
   - Test: Manual CPC with Enhanced CPC OFF; max bid set to the higher of (avg CPC for top-3 keywords from Keyword Planner) × 1.2
   - Scale: tCPA, target = strategy doc CPA target
9. Budget: daily floor from `budget-plan.md`
10. Ad rotation: Optimize (default)

## Ad-groups

For each ad-group from `channel-plan.md`:
1. Theme it tightly (5–15 keywords)
2. Match types: Exact + Phrase only in test phase. Broad only after CPA stable for 4+ weeks.
3. Negative keywords: cluster-specific negatives applied
4. Default bid: matches campaign-level bid

## Keywords

- Use Keyword Planner to estimate volumes
- Avoid 1-word broad matches
- Avoid mixing intents in one ad-group ("how to do X" vs. "buy X" → separate ad-groups)
- 10–20 keywords per ad-group is the sweet spot

## Ads (RSA)

For each ad-group:
1. **15 headlines, ≤30 char each**, mixing:
   - Brand + benefit
   - Specific feature
   - Social proof / numeric
   - CTA verb
   - Pinned headline (position 1) for the lead message
2. **4 descriptions, ≤90 char each**: outcome-led, benefit-led, social proof, urgency
3. **Sitelinks (4)**: Pricing, Customers, Demo, About
4. **Callouts (4)**: top features
5. **Structured snippets**: relevant categories
6. **Display path (2 × 15 char)**: relevant to keyword cluster

## Smart settings to disable

- ☐ "Automatically apply recommendations"
- ☐ "Maximize conversion value" (unless intentional Scale-phase choice)
- ☐ "Enhanced CPC" in test phase

## Conversions

1. Confirm primary conversion is set to "Use this conversion"
2. Confirm conversion is "Counting → One" (not Every) for signups
3. Set up a value column if revenue tracking exists

## QA before activation

1. Preview ads in Ad Preview tool
2. Check landing page URLs include UTMs (use {keyword} dynamic insertion if needed)
3. Verify conversion fires on test signup (Tools → Conversions → "Recent conversions")
4. Confirm campaign status: PAUSED until pre-launch GO

## PMax (gated)

PMax is a Scale-phase tool. Do not run before Search has graduated.
1. Asset group structure: 1 group per audience theme
2. Asset uploads: 5 logos, 5 long headlines, 5 headlines, 5 descriptions, 5–10 images, 1+ video
3. Audience signals: Customer match + custom segments — required for guidance
4. Campaign exclusions: brand keywords (so PMax doesn't cannibalize Branded Search)
5. Bid: tROAS only

## YouTube In-Stream

- Skippable ads only in test
- Audience: Custom segments (URL match competitor sites; in-market for your category)
- Bidding: Maximum CPV
- Frequency cap: 3/week per user

## Common mistakes

- Letting Search Partners on (poor CVR)
- Using Maximize Conversions in test (no constraint → spends fast)
- Mixing brand + non-brand in same campaign (impossible to read data)
- Skipping the "Observation" trick — losing free data on which audiences convert best
