# LinkedIn Ads — Setup Checklist

LinkedIn is slow, expensive, and high-quality for senior B2B audiences. The setup discipline pays for itself here more than on Meta.

## Pre-flight

1. **Insight Tag** installed sitewide; verify on Campaign Manager → Account Assets → Insight Tag (status: Active)
2. **Conversion Tracking** events created per `tagging-spec.md` (signup_completed, book_demo)
3. **Conversion API** (server-side) configured for primary events — non-optional at any meaningful spend
4. **Matched audiences**:
   - Customer match (upload paid customer emails, hashed)
   - Account match (upload list of target accounts if doing ABM)
   - Site retargeting audiences (30d / 60d / 90d)
   - Engaged with company page (last 365d)

## Campaign Group — Demand Gen — Test

1. Group goal: matches strategy doc objective
2. Budget: pooled at group level OR per-campaign floors

## Campaign

1. Objective: **Website Conversions**
2. Audience:
   - Location: from strategy
   - Language: matches creative
   - Job titles OR job functions: precise list
   - Seniority: Senior / Director / VP / CXO (filter out Entry / Associate unless intentional)
   - Industries: from audience-doc
   - Company size: from audience-doc
   - **Exclude**: existing customers (Customer Match), competitors' employees (if relevant)
3. Audience expansion: OFF in test phase (LinkedIn expansion balloons audience to wrong people)
4. Network: LinkedIn audience network OFF in test
5. Format: Single Image / Video / Document / Conversation / Message — per channel-plan
6. Placement: LinkedIn feed only in test
7. Bidding:
   - Test: Manual CPC, max bid = audience-size-adjusted ($8–$15 typical)
   - Scale: Optimized CPM after 7+ days stable performance
8. Daily budget: ≥ daily floor from `budget-plan.md` ($100/day LinkedIn floor)
9. Schedule: matches plan
10. Conversion tracking: select the events from pre-flight

## Sponsored Content (Single Image)

- Image: 1200×627 (1.91:1) recommended
- Intro text: ≤150 char optimal
- Headline: ≤70 char optimal
- Description: ≤200 char (visible only on some surfaces)
- Destination URL: with full UTMs
- CTA: matches creative-brief

## Sponsored Content (Video)

- 9:16 vertical for Reels-equivalent or 16:9 for in-feed
- ≤30s recommended; <15s optimal
- Captions burned in (sound-off feed default)
- File size <200MB
- Naming per channel-plan ad-naming convention

## Document Ads

- 1–8 page PDF
- Strong cover (page 1) — most viewers stop there
- Engaging page 2–3 — earn the page-flip
- Lead form on the last page (LinkedIn-native form, not redirect to LP)

## Message / Conversation Ads

- Send only from a sender with a credible profile
- Message ≤500 char
- 1–3 CTAs (don't stack 5)
- Use rich media link if relevant

## Audience-size sanity

- Don't go below ~10k for awareness; ~30k for prospecting
- Don't go above ~500k unless intentionally broad — narrows the algorithm targeting
- Filter overlap matters: if you select 5 narrow filters, audience can collapse to <1k → reject

## Conversion API (CAPI)

- LinkedIn Conversions API setup via Zapier / Segment / direct webhook
- Send `signup_completed` server-side with hashed email + phone for matching
- Verify match rate > 30% in Campaign Manager

## QA before activation

1. Confirm Insight Tag firing on LP (LinkedIn → Account Assets → Insight Tag → "Receiving Events")
2. Confirm conversion event firing on test signup
3. Preview the ad in Campaign Manager → Ads → Preview
4. Confirm UTMs land on LP correctly
5. Status: PAUSED until pre-launch GO

## Common mistakes

- Audience expansion left ON — wastes budget on adjacent roles
- Daily budget too low ($25/day) — algorithm starves; LinkedIn floor is $100/day
- Manual CPC bid set too low — ad doesn't show; check bid against the suggested range
- Not running CAPI — modern attribution requires it
- Targeting on a single filter (just job title) — too broad; combine 2–3 filters
- Forgetting to exclude existing customers — wastes spend on retention masquerading as acquisition
