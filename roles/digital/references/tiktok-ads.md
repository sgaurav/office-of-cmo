# TikTok Ads — Playbook

The Digital Marketer's playbook for TikTok (incl. Spark Ads).

## Quick take

TikTok = native vertical video at scale. Rewards content that looks like a creator made it; aggressively penalizes anything that looks like an "ad." If you can't produce native vertical creative, this channel is not for you.

Strengths: fast learning, breakout potential (single video can take an account from $0 → meaningful revenue), young / millennial / Gen-Z audiences, Spark Ads format (boost organic with permission). Weaknesses: short attention windows, fast creative decay (1–3 weeks), B2B targeting weak, music licensing constraints.

## When to reach for TikTok

**Strong fit:**
- B2C SaaS / D2C / e-commerce / mobile app
- Audience under 45
- Brands with creative that looks "real" (UGC, founder POV, demo, satire)
- Programs that can ship 4+ new videos per month
- Brands with existing organic creator partnerships (Spark Ads supercharges these)

**Weak fit:**
- Senior B2B (LinkedIn)
- Older demographics
- Brands without UGC capacity (Meta will tolerate studio creative; TikTok won't)
- Highly regulated categories (TikTok stricter than Meta on health/finance)
- Anti-meme brand voice — TikTok rewards humor and self-awareness

## Account architecture

```
Ad Manager
├── Campaign: Conversion Test (ABO)
│   ├── Ad-group: Broad
│   ├── Ad-group: Lookalike
│   └── Ad-group: Interest stack
├── Campaign: Conversion Scale (CBO)
│   └── (graduates from Test)
└── Campaign: Spark Ads (separate)
    ├── Ad-group: Creator-A boosted content
    └── Ad-group: Creator-B boosted content
```

## Pre-flight

1. **TikTok Pixel** installed sitewide; verify in TikTok Ads Manager → Assets → Events → Web Events (live data appearing)
2. **Events API** (server-side) for primary conversion event — strongly recommended due to iOS dedup
3. **Custom audiences**:
   - Customer match (uploaded list, hashed)
   - Site retargeting (30d, 60d)
   - Engaged with content (Spark Ads viewers)
4. **Spark Ads authorization**: if boosting creator content, get authorization codes from creators

## Audience strategy

**Broad targeting wins** on TikTok more than any other platform. The algorithm + native creative do the targeting.

Default test:
- Broad: country + age 25+ + lookalike exclusions
- Lookalike 1–3% from paid customers
- Interest stack (3–5 interests) — only use if you have a specific niche thesis

**Demographics**:
- Age: 25+ default unless your category specifically targets younger
- Below 18: stricter content rules; some categories blocked entirely

**Exclusions**:
- Existing customers
- Recent converters

## Campaign — Conversions

1. **Objective**: Conversions
2. **Special category**: only if applicable
3. **Budget**: ABO in test phase
4. **Schedule**: matches plan
5. **Naming**: per `naming-conventions.md`

## Ad-group settings

1. **Promotion type**: Website
2. **Optimization event**: from measurement plan
3. **Pixel**: confirmed
4. **Placements**: TikTok only in test (skip Pangle / News Feed App Series — quality varies)
5. **Audience**: custom + lookalike per plan
6. **Bidding**: Cost cap (= strategy CPA target × 1.2)
7. **Daily budget**: ≥$50/day per ad-group
8. **Day-parting**: optional
9. **Pacing**: standard

## Creative — native vertical only

This is non-negotiable on TikTok.

- **Format**: 9:16 vertical video (1080×1920)
- **Length**: 7–35s sweet spot (under 35s gets the most reach; longer videos get penalized)
- **Sound**: ON by default — design for sound-on; captions for accessibility
- **Hook in first 1.5s** — non-negotiable; video without a hook in that window dies
- **Music**: only commercial-music library (TikTok Commercial Music Library)
- **No watermarks** of other platforms (IG / FB logos cause rejection)
- **No on-screen text from other platforms** — looks repurposed
- **Caption ≤100 char** optimal (≤2,200 char hard)

## Creative archetypes that work

- **Founder POV** — "Why I built this" / "Here's how we use it"
- **Customer testimonial** — UGC-style, talking head, casual
- **Demo / "watch this"** — fast-cut product demo
- **Before/after** (where allowed) — outcome-led narrative
- **Reaction / commentary** — riffs on a current trend or news
- **Tutorial** — solves a problem the audience has, ends with the product

**Production tier** that works: iPhone-grade UGC. High production value tanks performance more often than not — looks like an ad.

## Spark Ads (boost organic with permission)

The single most powerful TikTok format for ads. Performance often **1.5–2x better** than studio-shot conversion ads.

How it works:
1. Creator posts organically
2. Creator authorizes you (via Spark Ads code) to boost their post as an ad
3. Ad runs from creator's handle (not yours), keeps native engagement, looks like organic
4. Likes/follows accrue to creator (good for the relationship)

Brief the creator with:
- Single-minded message + angle (don't over-script)
- Mandatories (CTA verb, disclosure if compensated)
- Don'ts (banned phrases, on-brand voice)
- Then let them produce in their voice — that's the point

## Bid strategies

| Strategy | When |
|---|---|
| Cost Cap | Default in test; sets soft ceiling |
| Lowest Cost | Aggressive scale only after stable performance |
| ROAS Goal | E-commerce with reliable revenue and 60+ conversions/week |

## Budget floors and pacing

- Daily floor: $50/day per ad-group
- Test phase: $50/day × 3 ad-groups = $150/day minimum
- TikTok learns fast — 5–7 days is often enough to read a creative

## Kill criteria

- **Test ad-group**: $200 spend OR 7 days at >2× target CPA
- **Creative within ad-group**: $50 spend at <50% of group CTR
- **Video without hook in first 1.5s**: kill at $30 spend (TikTok decay is faster than Meta)
- **Frequency saturation**: less of a concern; TikTok refreshes audience faster

## Scale rules

- +20% every 3 days when CAC < target × 0.8 for 5+ days (TikTok faster than Meta)
- Cap +50% per 3-day window
- Refresh creative every **2–3 weeks** (faster decay than Meta)
- Promote winners to Spark Ads format if creator partnership exists

## Common mistakes

- ❌ Repurposing Meta static images / 1:1 video → looks like an ad → tanks
- ❌ No hook in first 1.5s
- ❌ Voiceover-only without captions
- ❌ Not authorizing creator content as Spark Ads (loses native engagement boost)
- ❌ Bid too aggressive (Cost cap too low) → ad doesn't deliver
- ❌ Targeting too narrow → TikTok algo wants room to find
- ❌ Studio-grade production with stock-music feel
- ❌ Running below $50/day per ad-group

## Compliance gotchas

- Music: only TikTok Commercial Music Library; user-generated audio cannot be repurposed
- Healthcare: stricter than Meta — many supplement / wellness claims rejected
- Financial services: stringent verification
- Minors (<18): some categories blocked entirely; check before launch
- Sensational / shocking content: lower tolerance than Meta

## Hand-offs from this channel

- Native creative concepts and shot lists → `/creative` (specifically TikTok-native energy; very different from Meta direction)
- Caption / hook copy → `/copy`
- Pixel / Events API setup → `/ops`
- TikTok UI vs. truth attribution divergence → `/analyst`
- Creator partnership coordination (Spark Ads) → can stay with `/digital`; usually `/digital` brokers the deal

## When NOT to run TikTok

- Senior B2B audience
- Anti-meme brand voice that can't tolerate self-aware humor
- No UGC / native creative production capacity
- Highly regulated category with frequent disapprovals
- Sub-$50/day budget per ad-group
