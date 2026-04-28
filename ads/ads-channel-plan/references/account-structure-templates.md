# Account Structure Templates

Default account structures per platform for sub-$50k/month spend. Override only with a documented reason.

## Google Ads

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

Bid strategies:
- Branded: Maximize clicks (cheap, defensive)
- Non-branded test: Manual CPC for first 2 weeks
- Non-branded scale: tCPA once 30+ conv/wk
- PMax: tROAS only

## Meta (Facebook + Instagram)

```
Account
├── Campaign: Conversions — Test (ABO)
│   ├── Ad-set: 1% LAL of paid customers
│   ├── Ad-set: 2% LAL of trial-converters
│   ├── Ad-set: Broad with interest stack
│   ├── Ad-set: Lookalike of email list
│   └── Ad-set: Retarget 30d site visitors  (separate campaign once retarget grows)
├── Campaign: Conversions — Scale (CBO)
│   └── (graduates from Test once gates met)
└── Campaign: Retargeting (separate)
    ├── Ad-set: 1–7d hot
    ├── Ad-set: 7–30d warm
    └── Ad-set: 30–90d cold
```

Notes:
- Always exclude existing customers + recent converters from prospecting
- Ad-set count cap: 5 in Test, 3 in Scale
- 4–6 ads per ad-set (3 hooks × 2 formats)
- Always pair Pixel + CAPI

## LinkedIn

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

Targeting:
- Combine job title OR job function with seniority + industry + company size
- Exclude existing customers via Matched Audience upload
- Bid: Manual CPC in test, optimize for clicks; switch to optimized CPM for scale

## TikTok

(Use only with thesis, otherwise out-of-scope.)

```
Ad Manager
├── Campaign: Conversion Test (ABO)
│   ├── Ad-group: Broad
│   ├── Ad-group: Lookalike
│   └── Ad-group: Interest stack
└── Campaign: Conversion Scale (CBO once gates met)
```

## Reddit

(Niche; only if a watering-hole subreddit aligns with wedge segment.)

- One campaign per subreddit cluster
- Conversation Ads + Promoted Posts
- Bid: Cost cap

## Naming convention (universal)

`<channel>_<objective>_<segment>_<phase>_<YYYYMMDD>`

Examples:
- `meta_conv_eng-vps_test_20260105`
- `google_search_smb-ops_scale_20260201`
- `linkedin_sc_eng-vps_test_20260115`
