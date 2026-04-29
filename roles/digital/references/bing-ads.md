# Bing / Microsoft Ads — Playbook

The Digital Marketer's playbook for Microsoft Advertising (Bing Search + Audience Network + LinkedIn-targeted Search).

## Quick take

Bing/MS Ads = the cheapest Search complement to Google. Smaller volume, but the audience skews older, B2B/enterprise, and (uniquely) Microsoft includes LinkedIn-data targeting on Search ads. If you're already running Google Search, this almost always pays for itself.

Strengths: ~30–50% lower CPCs than Google for the same keywords, less competition in many verticals, LinkedIn-data targeting for B2B (job title, industry, company), enterprise/older-demo skew. Weaknesses: smaller audience, weaker conversion modeling, fewer feature releases than Google, ad copy import shortcuts can paper over real differences.

## When to reach for Bing

**Strong fit:**
- Already running Google Search (you can import campaigns and run in parallel for ~10–15% incremental volume at lower CPC)
- B2B targeting where the LinkedIn-data layer adds precision
- Enterprise / government / older-demographic audiences (Microsoft + Edge + Outlook ecosystem)
- Verticals where Google is competitive/expensive
- Geographies where Microsoft has good share (US, UK, parts of EU)

**Weak fit:**
- Pure consumer / mobile-first / younger audiences
- Categories where Microsoft has very little Search inventory
- Programs without bandwidth to run a parallel Search account

## Account architecture

Mirror your Google Search structure:

```
Microsoft Advertising Account
├── Campaign: Branded Search
├── Campaign: Non-Branded Search (high-intent)
│   ├── Ad-group: <category-term-1>
│   └── Ad-group: <category-term-2>
└── Campaign: Audience Network (optional, lower priority)
```

**Easiest path**: import from Google Ads (Bulk → Import from Google), then sanity-check before activating. Imports are 80% accurate; verify keywords, negatives, bid strategies, and naming conventions.

## Pre-flight

1. **UET tag** (Universal Event Tracking) installed sitewide; verify in Microsoft Advertising → Conversion goals
2. **Conversion goals** created per measurement plan
3. **GA4 import** (where applicable; Microsoft now supports GA4 conversion import)
4. **Audiences** built:
   - Customer match (uploaded list)
   - Site retargeting via UET
   - LinkedIn-based audience (job title, industry, company list)

## LinkedIn-data targeting (the unique differentiator)

Microsoft's killer feature: layer LinkedIn-derived signals on Search ads.

- **Job function** (e.g., Engineering, Finance, Marketing)
- **Industry** (e.g., Software, Healthcare, Financial Services)
- **Company** (specific company list — ABM-grade for Search)

**How to use:**
- **Bid modifier mode**: increase bid on people whose LinkedIn signals match (most flexible)
- **Targeting mode**: only show ads to people matching LinkedIn signals (narrower audience, higher quality)

For B2B Search, layering "VP+ in Engineering at companies 200–2000 employees" on top of category keywords is a real edge.

## Audience strategy

Beyond LinkedIn targeting:

- **In-market audiences**: Microsoft's first-party intent signals
- **Customer Match**: upload existing customers (hashed) for retargeting/exclusion
- **Site retargeting**: via UET
- **Similar audiences** (lookalikes): seeded from your customer match

Always exclude existing customers.

## Campaign — Search settings

1. **Goal**: Conversions
2. **Type**: Search
3. **Conversions**: primary action(s) from measurement plan
4. **Networks**: ☑ Bing/Yahoo/AOL search; ☐ Search Partners (low quality)
5. **Locations**: precise; "Targeted location" (NOT "people interested in")
6. **Languages**: matches creative
7. **Audience**: LinkedIn signals as bid modifiers + Customer Match exclusions
8. **Bidding**:
   - Test: Manual CPC, max bid = Google equivalent × 0.7 (Bing is ~30% cheaper)
   - Scale: Enhanced CPC or tCPA after 30+ conv/week
9. **Budget**: ≥$25/day per campaign
10. **Ad rotation**: Optimize

## Ad-groups

- **5–15 keywords** per ad-group, tightly themed
- **Match types**: Exact + Phrase only in test phase
- **Negative keywords**: cluster-specific
- **Don't mix intents** (same as Google)

## RSA (Responsive Search Ads)

Same structure as Google:
- **15 headlines (≤30 char)**, mix of brand+benefit / specific feature / numeric / CTA / pinned
- **4 descriptions (≤90 char)**
- **Sitelinks (4)**, **callouts (4)**, **structured snippets**

You can usually copy Google RSAs verbatim — just verify char limits and check policy nuance.

## Bid strategies

| Strategy | When |
|---|---|
| Manual CPC | Default in test; full control |
| Enhanced CPC | After 7+ days stable; adds 10–20% optimization |
| tCPA | After 30+ conversions/week |
| tROAS | E-commerce with reliable revenue |
| Maximize Conversions | Aggressive scale only |

## Budget floors and pacing

- Daily floor: $25/day per campaign
- Test phase total: $500–1000 first 30 days
- Bing reads slightly slower than Google (less volume per impression) — give 14 days minimum

## Kill criteria

- **Branded**: only kill if at >$30 CPA (basically broken)
- **Non-branded**: $200 spend OR 14 days at >2× target CPA
- **Quality Score floor**: <4 after 1k impressions → rewrite

## Scale rules

- +20% every 3 days when CAC < target × 0.8 for 7+ days
- Add LinkedIn-targeting layers as audiences scale (start broad, narrow with bid modifiers)
- Expand keyword sets within ad-groups before adding budget at top

## Common mistakes

- ❌ Importing from Google and never sanity-checking — imported negatives can be wrong; bid strategies don't always translate
- ❌ Letting "Search Partners" stay enabled
- ❌ Setting bids identical to Google — Bing is cheaper; over-bidding wastes margin
- ❌ Ignoring the LinkedIn targeting layer (the actual reason to run here for B2B)
- ❌ Not running UET — no conversion data
- ❌ Treating Bing as low-priority and not refreshing creative

## Compliance gotchas

- Healthcare/finance: similar to Google's restrictions
- Trademark: avoid competitor names in ad text
- LP quality: redirect chains, malware → disapproval
- ALL CAPS / repeated punctuation → rejection (same as Google)

## Hand-offs from this channel

- Copy variants (often shared with Google) → `/copy`
- UET tag installation → `/ops`
- Microsoft vs. GA4 conversion delta → `/analyst`
- LinkedIn-data targeting strategy alignment → can be `/digital`; coordinate with `/digital`'s LinkedIn campaign separately

## When NOT to run Bing

- Not running Google Search yet (start with Google first)
- Pure consumer / mobile-first audience without Microsoft ecosystem overlap
- Sub-$500/month budget for Search overall — Bing volume too small to matter
- Markets where Microsoft has near-zero share (most of Asia)

## Notes on the "import everything from Google" pattern

Microsoft makes this trivially easy. The trap: you get parity but never use Bing's actual edge (LinkedIn targeting, lower CPCs, different audience). Best practice:

1. Import → activate → run for 4 weeks → measure incremental volume
2. THEN add Bing-specific layers: LinkedIn targeting, lower bid floors, specific audience signals
3. Treat Bing as its own optimization surface, not a Google clone
