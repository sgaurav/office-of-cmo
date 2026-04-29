# LinkedIn Ads — Playbook

The Digital Marketer's playbook for LinkedIn (Sponsored Content, Document Ads, Message/Conversation, ABM via Matched Audiences).

## Quick take

LinkedIn = the only channel where you can target by job title, seniority, company, industry, and skills with reliable accuracy. Slow, expensive, high-quality for senior B2B audiences. Setup discipline pays for itself here more than anywhere else.

Strengths: precise B2B targeting, ABM-grade account-list match, professional context. Weaknesses: high CPMs ($30–80), small audience sizes for narrow targeting, slow data (3–4 weeks to graduate test ad-sets), reporting is sparse.

## When to reach for LinkedIn

**Strong fit:**
- B2B SaaS targeting Senior+ buyers (VP, Director, C-level)
- ABM programs where you have a named account list
- High-ACV products ($10k+ ACV) that justify $200–800 CAC
- Thought-leadership / educational content as the angle
- Recruiting / employer-brand campaigns
- Niche industries where targeting precision matters more than reach

**Weak fit:**
- B2C, D2C, prosumer
- Low-ACV products that can't sustain $200+ CAC
- "Spray and pray" demand-creation play
- Programs without research/educational content angles to lead with
- Sub-$3k/month budgets (LinkedIn floors will starve)

## Account architecture

```
Account
├── Campaign Group: Demand Gen — Test
│   ├── Campaign: Sponsored Content — Single Image — <Segment 1>
│   ├── Campaign: Sponsored Content — Video — <Segment 1>
│   └── Campaign: Document Ads — <Segment 1>
├── Campaign Group: Demand Gen — Scale (graduates)
└── Campaign Group: Retargeting
    ├── Campaign: Site visitors 30d
    └── Campaign: Engaged with company page
```

LinkedIn is precise enough that you should target one segment per campaign group rather than mixing segments in the same group.

## Pre-flight

1. **Insight Tag** installed sitewide; verify on Campaign Manager → Account Assets → Insight Tag (status: **Active**)
2. **Conversion Tracking** events created per measurement plan (signup_completed, book_demo)
3. **Conversion API** (server-side) configured for primary events — non-optional at any meaningful spend
4. **Matched audiences**:
   - Customer Match (paid customers, hashed email upload)
   - Account Match (target account list for ABM, uploaded)
   - Site retargeting audiences (30d / 60d / 90d)
   - Engaged with company page (last 365d)

## Audience strategy

**The targeting filters that work:**
- **Job title** — most precise, but inventory shrinks fast
- **Job function + Seniority** — broader, often the right starting point
- **Skills** — for technical roles, can find people who don't have the title yet
- **Company list (Account Match)** — gold for ABM
- **Member traits**: years of experience, company size, industry

**Stack 2–3 filters max.** Five filters → audience collapses to <1k → ad starves.

**Always exclude:**
- Existing customers (via Customer Match upload)
- Competitors' employees (via company exclusion list)

**Audience size sweet spot:**
- Test phase: 30k–500k members
- Below 10k: too narrow for awareness/consideration; OK for ABM only
- Above 500k: too broad; algorithm doesn't optimize well at LinkedIn scale

**Audience expansion** (LinkedIn's similar-audience feature): **OFF in test phase**. It balloons audiences to wrong people. Turn on later only if you confirm the seed is gold.

## Campaign — Sponsored Content (default starting point)

1. **Campaign group** → Demand Gen — Test
2. **Objective**: Website Conversions
3. **Audience** (per segment, see above)
4. **Audience expansion**: OFF
5. **LinkedIn audience network**: OFF in test
6. **Format**: Single Image / Video / Document — per channel-plan
7. **Placement**: LinkedIn feed only in test
8. **Bidding**:
   - Test: Manual CPC, max bid = LinkedIn-suggested high end ($8–$15 typical)
   - Scale: Optimized CPM after 7+ days stable
9. **Daily budget**: ≥$100/day per campaign (LinkedIn floor)
10. **Conversion tracking**: select the events from pre-flight

## Format-specific tips

### Single Image
- 1200×627 (1.91:1) recommended
- Intro text ≤150 char (truncates on mobile feed)
- Headline ≤70 char (visible; ≤200 char hard)
- Description ≤200 char (only shows on some surfaces)

### Video
- 9:16 vertical for Reels-equivalent placement; 16:9 for in-feed
- ≤30s recommended; <15s optimal
- **Captions burned in** (sound-off feed default)
- File <200MB
- Hook in first 3s — slower than Meta's 1.5s window because LinkedIn audience watches with intent

### Document Ads
- 1–8 page PDF; 4–5 pages converts best
- **Page 1 cover** is the "ad" — most viewers stop there
- Page 2–3 must earn the page-flip with real value
- LinkedIn-native lead form on the last page (not redirect to LP)
- Document Ads consistently outperform sponsored single-image for content-led angles

### Message / Conversation Ads
- Send only from a sender with a credible profile (not a generic brand handle)
- Message ≤500 char
- 1–3 CTAs (don't stack 5)
- Use rich-media link if relevant
- Open rate target: 30–50%

## Bid strategies

| Strategy | When |
|---|---|
| Manual CPC | Test phase; full control while audience signal builds |
| Optimized CPM | Scale phase only, after 7+ days of stable Manual CPC data |
| Cost cap CPM | Rare; only when you know your exact threshold |

LinkedIn's "Maximum Delivery" / "Cost Cap" automated strategies often overspend in test — start manual.

## Budget floors and pacing

- Daily floor: $100/day per campaign
- Below $100: ad doesn't deliver consistently
- Test phase total: $3k–10k for the first 4 weeks (it's slow; allow runway)

## Kill criteria

- **Test campaign**: $1,000 spend OR 21 days at >2× target CPA — LinkedIn data is slow, so kill thresholds are wider than Meta
- **Within campaign**: any ad with CTR <0.5% after 1k impressions → cut from rotation
- **Frequency saturation**: avg frequency >2 over 30 days → refresh creative

## Scale rules

- +20% every 3 days when CAC < target × 0.8 for 7+ days
- Bias to **audience expansion** (broader role/seniority) before pure budget scale — LinkedIn rewards gradual reach growth more than budget injections
- Move winners from Test campaign group to Scale campaign group

## Conversion API (CAPI / Conversions API)

- LinkedIn Conversions API setup via Zapier / Segment / direct webhook
- Send `signup_completed` server-side with hashed email + phone for matching
- Match rate target: >30% in Campaign Manager
- Below 30% match → check hashing format; LinkedIn requires SHA-256

## Common mistakes

- Audience expansion left ON — wastes budget on adjacent roles
- Daily budget too low ($25/day) — algorithm starves; LinkedIn floor is $100/day
- Manual CPC bid set too low — ad doesn't show; check against suggested range
- Not running CAPI — modern attribution requires it
- Targeting on a single filter (just job title) — too broad; combine 2–3 filters
- Forgetting to exclude existing customers — wastes spend on retention masquerading as acquisition
- Treating LinkedIn like Meta (fast iteration, cheap CPM) — LinkedIn rewards patient creative

## Compliance gotchas

- **Personal-attribute targeting violations**: targeting on race, religion, sexual orientation, age (with limits), pregnancy status, disability — illegal/restricted
- **"Are you a [protected]?"** framing — auto-rejection
- **Get-rich-quick** language — aggressive earnings claims rejected
- **Recruitment claims** — must be honest about role, comp, employment terms
- **Sensitive industries**: alcohol, gambling, dating — restricted

## ABM (Account-Based Marketing) on LinkedIn

LinkedIn's account-list matching is the strongest in market. See [abm-playbook.md](abm-playbook.md) for the full ABM doctrine.

Quick version:
- Upload account list (Tier 1: top 50, Tier 2: next 200, Tier 3: long tail)
- One campaign group per tier
- Tier 1 gets the highest budget per impression (CTV-style — frequency wins)
- Conversation Ads outperform Sponsored Content for Tier 1 reach

## Hand-offs from this channel

- Creative concepts (especially Document Ads) → `/creative`
- Long-form copy (Document Ads body, Message Ads scripts) → `/copy`
- Insight Tag / Conversion API setup → `/ops`
- LinkedIn UI vs. CRM-truth conversion delta → `/analyst`
- Account list strategy and tiering for ABM → can stay with `/digital`; coordinate with sales

## When NOT to run LinkedIn

- B2C / D2C (wrong audience)
- Sub-$3k/month total budget (channel won't show consistently at floors)
- High-velocity small-ACV products that can't sustain $200+ CAC
- Pure direct-response goals where MOFU/BOFU content doesn't exist yet
