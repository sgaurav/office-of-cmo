# ABM Playbook

Account-Based Marketing on paid channels. The Digital Marketer's discipline for B2B programs targeting named accounts.

## When ABM makes sense

- B2B with **identifiable named accounts** (not "all SMBs in healthcare" — actual logo lists)
- ACV ≥ $25k (justifies $500–2,000 CAC)
- Sales team that can act on warm signals from accounts
- 50+ named accounts to target (smaller and the channel underperforms)
- Long sales cycles (3+ months) where multi-touch matters

If any are missing, you don't need ABM — you need normal demand gen.

## ABM tiers

Standard tiering:

| Tier | Account count | Characterization | Spend per account |
|---|---|---|---|
| **Tier 1** | 25–50 | "Whales" — top deals; sales is actively engaged | $200–500/account/quarter |
| **Tier 2** | 100–300 | Strong fit; sales hasn't started yet | $50–150/account/quarter |
| **Tier 3** | 500–2,000 | Long-tail fit; programmatic engagement | $5–25/account/quarter |

Run **separate campaigns per tier** with different creative, frequency, and budget.

## ABM channel stack

LinkedIn is the foundation. Layer others as budget supports.

### LinkedIn Matched Audiences (the foundation)

- Upload account list (CSV with company names and domains)
- LinkedIn matches against its company database (typically 60–80% match rate for medium-large companies)
- Combine with **job title** or **job function + seniority** to target the right buyers within those accounts

Campaign types to use:
- **Sponsored Content** (Single Image, Video, Document) — primary format
- **Conversation Ads** — for Tier 1 outreach
- **Message Ads** — for warm Tier 1 only (cold message ads underperform)
- **Document Ads** — for content-led tiers

### Bing/Microsoft Search with company targeting

Microsoft's LinkedIn-data layer on Search means you can run Search ads with bid modifiers on:
- Specific company list
- Job function + industry

Useful for Tier 1 — capturing search intent from named accounts at premium bid.

### 6sense / Demandbase / RollWorks (third-party ABM platforms)

These platforms add:
- **Intent data** (which accounts are researching your category right now)
- **Display retargeting** at scale across accounts
- **Reverse-IP recognition** to identify which accounts are visiting your site
- **Multi-channel orchestration** (LinkedIn + Display + Email synced)

When to use: ≥$200k/year ABM spend justifies a platform. Below that, native LinkedIn + Bing targeting is enough.

### Programmatic display (DV360 / Trade Desk) for account retargeting

For Tier 1 / 2 accounts: serve display ads only to people on those accounts (via reverse-IP). Use for top-of-funnel reinforcement, not direct response.

### Direct mail (offline) as a Tier 1 multiplier

Not paid digital, but mention because Tier 1 ABM benefits massively from a coordinated direct-mail piece (handwritten note, gift) right before/after a paid touch sequence.

## Audience strategy by tier

### Tier 1 (the "named-named")

- LinkedIn: account match × VP+ seniority × buyer functions (Engineering, Operations, etc.)
- Layer: Conversation Ads from a real sender at your company (founder / CRO / VP)
- Frequency: 4–6 touches per buyer per month is fine (these accounts are worth saturation)
- Budget: $200–500/account/quarter for paid; pair with sales outreach

### Tier 2 (the "fit list")

- LinkedIn: account match × job function + seniority
- Sponsored Content + Document Ads
- Frequency cap: 2–3/month per buyer
- Budget: $50–150/account/quarter

### Tier 3 (the "long tail")

- LinkedIn or programmatic display: company list (broader)
- Sponsored Content only
- Frequency cap: 1–2/month per buyer
- Budget: $5–25/account/quarter

## Creative strategy by tier

| Tier | Creative angle | Format |
|---|---|---|
| Tier 1 | Personalized (mention the company / role / recent news) | Conversation Ads, Document Ads, Message Ads |
| Tier 2 | Industry-relevant (mention vertical / role) | Sponsored Content (Video, Document) |
| Tier 3 | General fit-positioning | Sponsored Content (Single Image) |

Tier-1 creative often runs at the campaign level with manual creative adjustments per account ("Hi [name], I noticed [Company] just raised a Series B…"). Don't try to scale this; it's intentionally bespoke.

## Measurement for ABM

Direct-response CPA on ABM is **misleading**. ABM works through multi-touch, multi-channel, and sales-cycle multiplication. Better metrics:

| Metric | What it measures |
|---|---|
| **Account engagement score** | Composite: page views + content downloads + form fills + email opens per account |
| **Buyer reach within named accounts** | % of target buyers reached at least 3x in 90 days |
| **Pipeline created from target accounts** | Sales-team-validated; the real ROI proxy |
| **Account-level conversion rate** | Engaged accounts / total target accounts |
| **Cost per engaged account** | Spend / engaged accounts (not per conversion) |

Direct CPA still tracked but de-prioritized.

## Common ABM mistakes

- ❌ Running ABM at scale before you have aligned sales follow-up — you're paying for warm leads sales never calls
- ❌ Same creative across all tiers — wastes Tier 1 production value on Tier 3
- ❌ Daily budget split equally across 50 Tier-1 accounts ($1/account/day) — algo can't optimize at that floor
- ❌ Tracking only direct CPA (and being disappointed)
- ❌ Buying a 6sense license before you have 50+ named accounts to fill it
- ❌ Ignoring intent data because it's "fuzzy" — for Tier 1, intent signals are the entire game

## Account-list sanity checks

Before launching ABM:

- Account list has the **company name + domain** (LinkedIn matches better with both)
- ≥50 accounts (below this, ABM has too little inventory)
- Removed: existing customers, churned customers, partners, internal employees
- Validated: account list reviewed by sales (they should agree these are real targets)
- Matched: tested LinkedIn match rate; aim for 60%+ of accounts matched

## ABM workflow (end-to-end)

1. **Account list assembly** — sales + marketing align on Tier 1/2/3
2. **Buyer mapping** — for each account, which roles do we reach? (typically 3–5 buyers per Tier 1 account)
3. **Channel + creative plan** — which channel for which tier, what message
4. **Pre-launch QA** — pixel firing, exclusions clean, naming consistent
5. **Launch staggered** — Tier 1 first (lower volume, higher attention); Tier 2 / 3 once Tier 1 is humming
6. **Weekly review** — engagement score per account, buyer reach %, pipeline pulled
7. **Sales loop** — flag engaged accounts to sales WITHIN 48 HOURS (this is the difference between ABM that works and ABM that doesn't)
8. **Quarterly tier rotation** — accounts that engaged but didn't convert may move tier; new accounts replace dropped ones

## Hand-offs in ABM

- Account list research → typically `/digital` + sales together (or external research)
- Personalized Tier 1 creative → `/creative` + `/copy` (with input on the named account)
- Engagement scoring infrastructure → `/analyst` + `/ops`
- Sales follow-up automation (Salesforce / HubSpot) → `/ops`
- Pipeline reconciliation → `/analyst`

## Common ABM channels by sub-vertical

| Sub-vertical | Best ABM channel mix |
|---|---|
| Enterprise SaaS | LinkedIn (Sponsored + Conversation) + Bing Search + 6sense/Demandbase |
| Mid-market SaaS | LinkedIn (Sponsored + Document) + Bing |
| Dev tools | LinkedIn (Sponsored Video) + Reddit (where dev leadership lurks) + X |
| Consulting / services | LinkedIn (Conversation + Message) + Direct mail + Bing |
| Vertical SaaS | LinkedIn + relevant industry-specific platforms |
