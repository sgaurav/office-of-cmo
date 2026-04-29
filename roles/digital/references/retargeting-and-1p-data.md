# Retargeting & 1P Data Activation

The Digital Marketer's playbook for cross-channel retargeting and post-iOS14 first-party data strategy.

## The post-iOS14 reality

Pre-2021, you could run pixel-based prospecting + retargeting and trust the platform. That world is gone:

- **iOS App Tracking Transparency (ATT)**: ~70% of iOS users opt out of pixel-based tracking → Meta loses signal on those users for prospecting and retargeting
- **Browser-side tracking decline**: Safari ITP, Brave, Firefox all degrade pixel reliability
- **Cookie-based retargeting** is dying: Chrome's third-party cookie deprecation continues to reshape the landscape

The new playbook centers on **server-side, first-party data, and CAPI/CAPI-equivalents** across every platform.

## Retargeting funnel — segment by recency

Default segments for any retargeting program:

| Window | What they did | Treatment |
|---|---|---|
| **1–7 days (hot)** | Just visited; high intent | Heavy frequency; conversion-focused creative |
| **7–30 days (warm)** | Considering; lukewarm | Moderate frequency; objection-handling creative |
| **30–90 days (cold)** | Drifted away; need re-engagement | Lower frequency; re-engagement / new-content creative |
| **90+ days** | Likely lost | Minimal spend; only run if you have a major launch |

Run **separate ad-sets per recency window** so frequency caps and creative match the user's state.

## Cross-channel retargeting

Retarget the same user on multiple channels for compound effect:

```
User visits site → seen by Meta Pixel + GA4 + LinkedIn Insight Tag + TikTok Pixel + Reddit Pixel + UET
                ↓
Each channel builds its own retargeting audience
                ↓
Meta retargets in Feed/Reels
LinkedIn retargets in Sponsored Content
TikTok retargets in For You feed
Bing retargets in Search/Audience Network
                ↓
User sees coordinated message across surfaces
```

**Frequency cap across all channels**: aim for 8–12 total impressions across all retargeting channels per user per week. More than that = saturation, often counter-productive.

## 1P data activation — the modern moat

Your customer email list, signup list, and CRM data are the most valuable targeting assets you have. Activate them:

### Customer Match / Customer Audiences (across platforms)

Upload hashed (SHA-256) email lists to:
- **Google Customer Match**
- **Meta Custom Audiences**
- **LinkedIn Matched Audiences**
- **TikTok Custom Audiences**
- **X Tailored Audiences**
- **Bing Customer Match**
- **Reddit Custom Audiences**

For each, the use cases are:
- **Excluding** existing customers from prospecting (always)
- **Retargeting** trial users who didn't convert (with discount or testimonial creative)
- **Lookalike seeding** (1% LAL of paid customers is the gold standard)
- **ABM** (account list match for B2B)

### Match rates (what to expect)

| Platform | Typical match rate (B2B email) | Typical match rate (B2C email) |
|---|---|---|
| Meta | 50–70% | 70–85% |
| LinkedIn | 40–60% | 30–50% |
| Google | 60–75% | 70–85% |
| TikTok | 40–60% | 60–80% |
| X | 30–50% | 50–70% |
| Bing | 40–60% | 50–70% |

Below 30% match = something's wrong (hashing format, regional mix, account-level issue).

### Refresh cadence

Upload list refresh:
- Weekly: customer + churn lists (so freshly-churned users get retargeted, freshly-acquired users get excluded)
- Monthly: lookalike seed lists
- Quarterly: full refresh of audience taxonomies

## CAPI / Server-side tracking

Browser pixels are ~50% reliable on iOS. Server-side conversion APIs close the gap.

| Platform | Server-side API |
|---|---|
| Meta | Conversions API (CAPI) |
| Google | Enhanced Conversions for Web/Leads + Offline Conversions |
| LinkedIn | Conversions API |
| TikTok | Events API |
| Reddit | Reddit Conversion API |
| X | Events Manager |
| Bing | Offline Conversions API |
| Microsoft Clarity (analytics) | server-side relay |

**Send same event from browser pixel + server-side**, dedup with a shared event ID.

For any spend >$5k/month per channel, CAPI-equivalent is **non-optional**.

## CDP (Customer Data Platform) — when to consider

A CDP (Segment, RudderStack, mParticle, Hightouch) lets you sync first-party data to all ad platforms from one source. Worth it when:

- ≥3 ad channels active simultaneously (sync overhead becomes real)
- ≥$30k/month in ad spend (CDP licensing is justified)
- Existing data warehouse (Snowflake, BigQuery, Redshift) — most CDPs assume you have one

Below those bars, manual list uploads + each platform's CAPI is fine.

## Event taxonomy (consistent across channels)

To make 1P data activation work, your events need consistent names and parameters across all channels. Coordinate with `/ops`:

```
page_view             { utm_*, page_path }
signup_started        { utm_*, signup_method }
signup_completed      { utm_*, customer_id, plan, value }
trial_started         { customer_id, plan }
trial_to_paid         { customer_id, plan, value, currency }
purchase              { order_id, value, currency }
```

Every channel ingests the same event names. Different platforms may use slightly different parameter formats — `/ops` standardizes via the CDP or via a server-side event router.

## Retargeting creative — what works by funnel stage

### Hot (1–7 days)
- Same creative as the prospecting ad that brought them in (consistency wins for reinforcement)
- Add urgency only if real ("Sale ends Friday" not "Limited time!!!")
- CTA: same as ad → primary conversion

### Warm (7–30 days)
- New angle from the same brand voice (don't repeat the exact same ad — fatigues)
- Objection-handling creative: case study, testimonial, comparison
- CTA: same primary; secondary "see customer story"

### Cold (30–90 days)
- Re-engagement creative — what's NEW since they visited
- Product launches, new content, new customer logos
- CTA: lower-friction (read X, watch Y) — recapture before reconverting

### Lost (90+ days)
- Spend minimally
- Reserve for major launches / discount campaigns
- Don't waste daily budget on these segments by default

## Frequency caps (per-channel)

| Channel | Cap |
|---|---|
| Meta | 3/week per user (across hot/warm/cold) |
| LinkedIn | 2/30d per user |
| YouTube | 3/week per user |
| TikTok | 5/week per user (faster decay so higher cap acceptable) |
| Reddit | 2/week per user |
| X | 2/week per user |
| Display retargeting (DV360, etc.) | 5/week per user |

## Privacy / compliance for 1P data

- **Hash all PII** (email → SHA-256 lowercase trim) before sending to any platform
- **Don't send raw email**, phone, or credit-card data
- **Honor opt-out lists** — sync unsubscribe / GDPR-deletion lists to all platforms within 30 days
- **GDPR / CCPA**: lawful basis must exist for any 1P data activation in those regions
- **Cookie consent**: required in EU before any pixel-based audience builds

## Common retargeting mistakes

- ❌ Same creative on hot and cold audiences — wastes the cold-stage opportunity
- ❌ No frequency cap → users see the ad 12 times in 3 days → ad fatigue, brand damage
- ❌ Retargeting EVERYONE who visited any page (including bouncers) — pollutes audience with low-intent
- ❌ Forgetting to exclude existing customers (most expensive mistake)
- ❌ Browser pixel only, no CAPI — losing 30–50% of the signal post-iOS14
- ❌ Creating retargeting audiences but not using them across channels (siloed by platform)
- ❌ Discount-only retargeting — trains users to wait for a discount

## Hand-offs

- CDP setup / server-side event routing → `/ops`
- CAPI implementation per platform → `/ops`
- Match-rate diagnostics / dedup logic → `/ops` + `/analyst`
- Creative for retargeting funnel stages → `/creative`
- Audience-data architecture and customer-list hygiene → `/ops`
