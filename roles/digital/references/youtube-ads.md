# YouTube Ads — Playbook

The Digital Marketer's playbook for YouTube (managed via Google Ads, but its own discipline).

## Quick take

YouTube = the longest-form paid placement on the internet. The only channel where you can get 30+ seconds of attention from a stranger. Best for category education, demand creation, brand-building with measurable response, and high-consideration B2B/B2C products.

Strengths: long attention windows, strong B2B reach (yes — VPs watch YouTube), pre-bid and in-stream targeting from search history (via Google Ads), affordable upper-funnel CPMs ($5–25), Shorts give a TikTok-like vertical surface inside Google's stack. Weaknesses: video production cost, long iteration cycles, attribution lag.

## When to reach for YouTube

**Strong fit:**
- Demand-creation programs (your category needs explanation)
- High-consideration products ($5k+ ACV B2B; $200+ AOV D2C)
- Brand-building plays where you also need a measurable signal
- Audiences that have already searched related topics (in-market segments are gold here)
- Programs with budget for at least one quality 30s spot
- Retargeting site visitors with longer-form storytelling

**Weak fit:**
- Pure direct-response under $30 CPA — Search and Meta beat YouTube
- Brands without a video asset and no budget to make one
- Tiny niches (<$2k/month YouTube budget) — won't deliver consistently

## Account architecture

YouTube campaigns live inside Google Ads. Architecture:

```
Google Ads Account
└── Campaign: YouTube
    ├── Campaign type: Video
    ├── Goal: Brand awareness OR Leads OR Sales
    ├── Subtype: In-Stream (skippable) | Bumper | In-Feed | Shorts
    └── Ad-groups: 1 per audience theme
        └── Ad creative
```

For simplicity at sub-$50k/month, run **one YouTube campaign per objective** (e.g., one for awareness, one for leads).

## Pre-flight

1. YouTube channel created and verified (custom thumbnail, brand banner)
2. Google Ads ↔ YouTube linked (Tools → Linked accounts → YouTube)
3. **Conversion tracking** imported via GA4 (same as other Google Ads campaigns)
4. **Audience signals** built (Customer Match for retargeting; Custom Segments for prospecting)
5. **Brand-safety topics** excluded (Sensitive content, etc.)
6. **Frequency cap** set: 3/week per user

## Audience strategy

YouTube targeting layers (Google Ads):

- **Custom segments** (the best layer): match users by recent search behavior or websites they visit. e.g., "people who searched for `<competitor> pricing` in the last 7 days."
- **In-market segments**: Google's bucketing of "actively researching X." Verify the segment matches your category.
- **Affinity segments**: broader interest grouping; use for awareness, not direct response
- **Customer Match**: retargeting your existing list (especially powerful for long-cycle B2B)
- **Site retargeting**: YouTube ads to people who've been on your site in the last 30/60/90 days
- **Demographic**: layer on top, never as the only filter

**Audience strategy by objective:**
- Awareness: Affinity + In-market
- Demand creation: Custom Segments (recent searches) + In-market
- Consideration / mid-funnel: Custom Segments + Site Retargeting
- Direct response: Customer Match + Site Retargeting + In-market

## Format-specific tips

### In-Stream (skippable, 6s+ enforced view, then skippable)

- Length: 30s is the sweet spot. Longer (60s+) only for high-consideration products.
- **First 5 seconds = the entire ad** — assume 80% will skip
- Hook = product name + benefit visible/audible by second 3
- Don't open with "Hi I'm Bob from Acme" — that gets skipped
- Captions burned in (sound-off TVs, mobile feeds)

### Bumper Ads (6s, non-skippable)

- Best for awareness reinforcement; pair with In-Stream campaigns
- One message, one visual, one logo — that's it
- Use for retargeting In-Stream viewers ("we showed them the long story; remind them with the bumper")

### In-Feed (formerly Discovery)

- Shows in YouTube search and homepage
- Length: 30–90s; viewers who click are choosing to watch
- Best for tutorial / demo / "how it works" angles
- Compete on thumbnail + title; like organic YouTube

### Shorts (vertical, ≤60s)

- Vertical-only (9:16); same energy as TikTok
- Hook in first 1.5s
- Rapidly growing inventory; relatively cheap CPMs
- Good for cross-posting your TikTok creative if it's brand-safe enough

## Bid strategies

| Strategy | When |
|---|---|
| Maximum CPV (cost per view) | Awareness; pay only if viewer watches 30s+ or full ad |
| Target CPM | Reach goals where impressions matter |
| tCPA | Lead/sale objectives once you have ≥30 conversions/week |
| Maximize Conversions | Aggressive scale after stable tCPA |

For awareness: Maximum CPV is the default. You only pay for engaged views, which keeps wasted spend down.

## Budget floors and pacing

- Daily floor: $50/day per campaign
- Below $50: insufficient delivery; learning cycles take too long
- Test phase: 4 weeks minimum (longer attribution windows than Meta/Google Search)
- Scale: +20% every 3 days when CAC stable

## Kill criteria

- **Awareness/CPV campaign**: $400 spend at <25% view-through rate (VTR) → creative isn't holding attention
- **Direct-response campaign**: $400 spend OR 14 days at >2× target CPA
- **In-stream creative**: <30% completion rate after 1k impressions → recut for tighter open
- **Frequency cap**: 3/week per user — violations mean cap broken; investigate

## Scale rules

- Layer formats: start with In-Stream, layer Bumper as retargeting once In-Stream has impression volume
- Add audiences in priority order: Customer Match → Site Retargeting → Custom Segments → In-market
- Cap +30% per 3-day window (slower than Meta because YouTube reads cycles are longer)

## Common mistakes

- ❌ Treating YouTube like TV — long, slow opens lose 80% in the first 5 seconds
- ❌ Not having a Bumper variant of the In-Stream — leaving retargeting reach on the table
- ❌ Using Affinity segments for direct response — too broad
- ❌ Skipping captions — 60% of mobile viewers watch with sound off
- ❌ One creative for all formats — Shorts ≠ In-Stream ≠ In-Feed
- ❌ Letting "Optimize for placements" auto-include sensitive content
- ❌ Running on Display Network instead of YouTube placements (settings drift)

## Creative principles unique to YouTube

- **Earn the 5th second** — the skip moment is the only review you get
- **Storyboard 0:00–0:05 separately from the rest** — that's where 80% of the work goes
- **Brand callout by 0:03** — even if skipped, brand recall accrues
- **CTA both visual + spoken** — sound-off and sound-on viewers
- **Multiple endings**: cut a 6s, 15s, 30s, 60s from the same shoot — covers all formats

## Compliance gotchas

- Healthcare / drug names: many auto-flagged
- Financial services: lending requires verification
- Trademark in copy: avoid competitor names in title/description
- LP quality: same rules as Search (no malware, no intrusive interstitials)

## Hand-offs from this channel

- Storyboards and shot lists → `/creative`
- Voice-over scripts and captions → `/copy`
- YouTube channel setup, conversion linking → `/ops`
- View-through attribution analysis → `/analyst`

## When NOT to run YouTube

- Pure direct-response with sub-$30 target CPA — wrong channel
- No video asset and no budget to make one
- Sub-$2k/month total YouTube budget — won't deliver
- Brand-safety-sensitive industries with limited inventory after exclusions

## Notes on Shorts vs. TikTok

Shorts and TikTok feel similar but optimize differently:
- Same vertical 9:16 creative often works on both
- TikTok rewards rawness and creator-feel; Shorts is a touch more polished tolerant
- Music licensing is different — TikTok has its commercial library; Shorts uses YouTube's
- Cross-post the same creative as a starting test; expect different CTRs
