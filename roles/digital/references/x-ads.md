# X (Twitter) Ads — Playbook

The Digital Marketer's playbook for X Ads.

## Quick take

X = founder/operator/journalist territory. Best for thought-leadership amplification, niche B2B reach, and category-conversation participation. Not the highest-converting paid channel, but uniquely useful when the audience lives on X.

Strengths: niche professional reach (founders, VCs, devs, journalists, marketers), thought-leadership amplification of organic content (Promote Posts), conversation timing (real-time category news), Take-Over inventory for big launches. Weaknesses: smaller inventory than Meta/Google, weaker conversion signals, post-2022 platform volatility, ads UI/reporting underbuilt vs. competitors, brand-safety harder.

## When to reach for X

**Strong fit:**
- B2B founders / VC / startup audiences
- Developer / dev-tools / dev-rel programs
- Journalist outreach / thought-leadership amplification
- Organic-first founders who already post (boost what's working)
- Categories with active X conversation (AI, web3, climate-tech, dev-tools, marketing-tech)
- Launch weeks (Take-Over for big moments)

**Weak fit:**
- Mass consumer / D2C / e-commerce
- Conservative B2B verticals where buyers don't use X
- Pure direct-response with sub-$50 CPA target — not the right channel
- Brand-sensitive verticals where adjacency risk matters

## Account architecture

```
X Ads Account
├── Campaign: Reach + Engagement — <topic A>
│   └── Ad-group: Promoted post (organic boost)
├── Campaign: Conversion — Lookalike + retargeting
└── Campaign: Take-Over (launch days only)
```

**Promoting your own organic posts** (Promoted Tweets) is the highest-ROI pattern. Treat X Ads as "amplification of organic" first; pure paid acquisition second.

## Pre-flight

1. **X Pixel** installed sitewide; verify in Ads Manager → Tools → Conversion tracking
2. **Conversion events** (note: post-2023 X has reduced reporting fidelity; document gaps)
3. **Custom audiences**:
   - Customer match (uploaded list)
   - Site retargeting (where pixel allows)
   - Followers and engagers
4. **Tailored audiences** (Twitter's name for matched audiences)
5. **Brand safety**: configure inventory filters (Standard / Conservative)

## Audience strategy

X targeting layers:

- **Followers of @handles**: target users who follow specific accounts (competitors, influencers, publications)
- **Keyword targeting**: people who tweet/engage with specific keywords (real-time)
- **Conversation targeting**: trending topics — useful for newsjacking
- **Interest targeting**: X's broad interest buckets (less precise than Meta)
- **Tailored audiences**: customer list, site retargeting, lookalike

**The differentiator**: follower-of-handle targeting. Build an audience of "people who follow @VentureCapital + @ProductHunt + @SaaStr" for a SaaS launch.

**Always exclude:**
- Existing customers
- Recent converters
- Bots / suspended accounts (X Ads still struggles with bot inventory)

## Campaign — Conversion

1. **Objective**: Website Conversions (or Engagements / Reach for awareness)
2. **Audience**: tailored + handle-follower stack
3. **Placements**: Home timeline + Profile + Search results (skip "Audience Network" type if visible)
4. **Bid**: Auto-bid in test; manual CPC in scale
5. **Daily budget**: ≥$25/day per campaign

## Format-specific tips

### Promoted Tweet (organic boost)
- Pick an organic post that's already performing well
- Promotion preserves likes/RTs/replies → social proof compounds
- Best format on X by far
- Length: 280 char per tweet; threads supported (rare for ads)

### Image / Video ad
- Image: 1200×675 (16:9) or 1:1
- Video: ≤2:20, but <30s for engagement
- Sound: design for sound-off (auto-mute)
- Captions burned in for video

### Take-Over (launch-day premium)
- First impression of the day for a region (Trend Take-Over) or audience (Timeline Take-Over)
- Six-figure budget territory; pre-buy 2–4 weeks
- Use only for major launches with paired organic activity

### Polls / Conversation Cards
- Interactive formats; higher engagement metric
- Useful for intent-gauging or product-feedback campaigns

## Bid strategies

| Strategy | When |
|---|---|
| Auto-bid (Maximum delivery) | Default in test |
| Maximum bid | Cost-control once you know the right level |
| Target cost | Stable conversion volume only |

## Budget floors and pacing

- Daily floor: $25/day per campaign
- Test phase: $25/day × 2 campaigns = $50/day minimum
- X reads slowly post-2022 — give 7–10 days

## Kill criteria

- **Test campaign**: $200 spend OR 7 days at >2× target CPA
- **Promoted Tweet**: $50 spend with engagement rate <0.5% → boost a different organic post
- **Take-Over**: pre-bought; measure post-campaign

## Scale rules

- +20% every 3 days when CAC stable
- For Promoted Tweets: refresh which organic post you're boosting weekly (one post saturates fast)
- Engagement-based campaigns can run longer than conversion campaigns (less decay)

## Creative — what works on X

- **Boost organic posts that are already working** — single highest-ROI tactic
- **Replies-as-content**: a tweet that earns 50+ replies organically is gold for promotion
- **Founder POV** in the brand voice
- **Stat-led short tweets** (e.g., "50% of our signups come from a single Reddit thread we wrote in 2022. Here's what it taught us.")
- **Thread-promotion**: rare, but threads with strong narrative work
- **Visual asset + text**: image/video paired with a tight tweet; 4:5 aspect performs best in mobile

## Creative — what tanks

- Generic stock imagery
- Long copy that requires the "see more" expansion
- Copy that reads as outbound sales
- Buzzword-stacked product brags
- "Click below" / "Click here" — reads as ad

## Common mistakes

- ❌ Treating X like Meta (broad, demographic-led targeting) — X rewards niche follower-graph targeting
- ❌ Promoting a brand-new tweet with no organic engagement signal
- ❌ Ignoring reply quality — replies are the implicit ad QA
- ❌ Sending traffic to a generic homepage — needs a tight LP for X-source clicks
- ❌ Targeting only "interest" buckets — too broad; layer follower-of-handle
- ❌ Over-spending on Trends Take-Over without a coordinated content strategy

## Compliance gotchas

- Post-acquisition (2022+): policy enforcement is uneven. Test before scaling.
- Political content rules vary by region
- Healthcare claims: handled less strictly than Meta but still risky

## Hand-offs from this channel

- Original organic content to promote → `/copy` (especially for thread / quote-tweet creative)
- Pixel + conversion tracking setup → `/ops`
- X-reported conversion delta (often substantial) → `/analyst`
- Influencer/handle research to identify follower-graphs to target → can be `/digital`

## When NOT to run X

- Audience doesn't live on X (most enterprise B2B verticals; consumer brands without X presence)
- No organic content to amplify — paid X without organic context underperforms
- Sub-$25/day budget per campaign
- Brand-safety-rigid contexts where adjacency risk is unacceptable
