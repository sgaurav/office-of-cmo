# Reddit Ads — Playbook

The Digital Marketer's playbook for Reddit Ads.

## Quick take

Reddit = the only major paid channel where you can target subcultures with surgical accuracy. Subreddit-level targeting is what makes this work; without that, Reddit is mediocre.

Strengths: niche audience precision (r/sre vs. r/devops vs. r/ExperiencedDevs), low CPCs ($0.50–$3), engaged users (comments are real), Conversation Ads format. Weaknesses: small inventory in many niches, audience hostile to "ad voice," tracking immature, conversion modeling weaker than Meta/Google.

## When to reach for Reddit

**Strong fit:**
- Niche B2B / developer / prosumer audiences (devs, sysadmins, finance ops, HR ops, etc.)
- Categories with 1+ active subreddit dedicated to them
- Communities of practice where word-of-mouth matters
- Brands that can adopt Reddit's conversational voice (no marketing-speak)
- Founder-led / authentic narrative angles
- Communities your target audience already trusts

**Weak fit:**
- Very broad consumer / lifestyle products without a community fit
- Brand-voice-rigid corporate marketing
- Highly regulated categories (Reddit policy edges are sometimes unpredictable)
- Programs needing >$10k/month from Reddit alone — inventory often caps below that

## Account architecture

```
Reddit Ads Account
├── Campaign: Conversion — <subreddit cluster A>
│   ├── Ad-group: Promoted post
│   └── Ad-group: Conversation Ad
├── Campaign: Conversion — <subreddit cluster B>
└── Campaign: Retargeting — site visitors 30d
```

Run **one campaign per subreddit cluster** — this lets you read which communities convert.

## Pre-flight

1. **Reddit Pixel** installed sitewide; verify in Reddit Ads Manager → Events Manager
2. **Conversion events** created per measurement plan
3. **Custom audiences**:
   - Customer match (uploaded list, hashed)
   - Site retargeting (30d, 60d)
   - Engaged with promoted posts

## Audience strategy

**Subreddit targeting is the entire game.**

How to choose subreddits:
1. Search for your category + adjacent topics → list 10–20 candidate subreddits
2. Filter by:
   - Active in last 90 days (dead subs exist)
   - >10k subscribers (smaller is OK if HIGHLY relevant)
   - Recent posts that mention pain points your product solves
   - Not banned/restricted/hostile to ads in their rules
3. Cluster into 2–4 themes (don't run all in one campaign)

**Layer on:**
- Interest categories (Reddit's first-party interest data) — supplement subreddit targeting, never replace it
- Demographic filters: country + age (Reddit knows age via account behavior, not declared)

**Anti-targeting:**
- Communities hostile to your category (some subs explicitly ban ads / ban competitors)
- Communities where your CTA ("Sign up for SaaS") would be off-tone

## Campaign — Conversion

1. **Objective**: Conversions
2. **Conversion event**: from measurement plan
3. **Locations**: per strategy
4. **Communities**: list of subreddits (10–20 per campaign cluster)
5. **Interests**: optional layer
6. **Bid strategy**:
   - Test: Cost cap (= CPA target × 1.2)
   - Scale: Maximum delivery once stable
7. **Budget**: ≥$25/day per campaign

## Format-specific tips

### Promoted post (most common)
- Looks like a regular Reddit post
- Title is the entire ad (≤300 char hard, ≤100 optimal)
- Body text under title (≤10,000 char but use sparingly; conversational > pitch)
- **Voice matters more than copy length**: write like a Redditor, not a marketer
- Self-aware humor wins (within brand limits)

### Image ad
- 1200×628 (1.91:1) recommended
- Title above image (most important element)
- Avoid "ad-y" stock photography — Reddit hates it

### Video ad
- 16:9 or 1:1 in-feed; 9:16 also supported
- ≤30s, hook in first 3s
- Sound-off design (most viewers scroll without sound)

### Conversation Ads (the differentiator)
- Promoted comment in a thread or interactive ad with branching CTAs
- Best for engagement; interactivity drives higher CTR
- Use when you have a question/poll-style angle
- Higher engagement → secondary metric pre-CVR; track both

## Bid strategies

| Strategy | When |
|---|---|
| Cost cap | Default in test; sets soft ceiling |
| Maximum delivery (autobid) | Scale once stable |

## Budget floors and pacing

- Daily floor: $25/day per campaign
- Test phase: $25/day × 3 subreddit clusters = $75/day minimum
- Reddit reads slowly compared to Meta — give 7+ days per ad-group

## Kill criteria

- **Test campaign**: $150 spend OR 7 days at >2× target CPA
- **Subreddit cluster**: spending the budget but no conversions in 7 days → wrong subreddit fit; re-research
- **Negative comments tanking sentiment**: monitor; sometimes the ad's voice is wrong, sometimes the product is wrong for that community

## Scale rules

- +20% every 3 days when CAC < target × 0.8 for 5+ days
- **Add subreddits** before adding budget at the top — broader subreddit list scales reach
- Don't expand into hostile communities even if they'd add inventory

## Voice & creative — what wins on Reddit

Reddit's audience is allergic to marketing-speak. What works:

- **First-person narrative**: "I built this because I was tired of…"
- **Self-aware**: acknowledge you're advertising; users respect honesty
- **Specifics over abstractions**: "saves 47 minutes/week" beats "saves time"
- **Long-form is OK if it earns it**: 200-word posts with real value can outperform 50-word pitches
- **Tongue-in-cheek**: humor (within brand voice) beats earnest 90% of the time
- **No emoji-stacking**: Reddit reads it as Instagram-y / off-platform

## Voice & creative — what tanks

- Stock-photography ads
- Buzzword-heavy copy ("revolutionary", "industry-leading", "synergy")
- "Click here" CTA
- Generic outbound sales feel
- Pretending it's organic when comments call it out
- AI-generated-feel imagery (especially in dev/tech subs)

## Common mistakes

- ❌ Targeting only by interest category, not subreddit
- ❌ Same creative across all subreddit clusters — community voice differs subreddit-to-subreddit
- ❌ Ignoring the comment section — sometimes the comments tell you the ad is broken
- ❌ Running on broad reach without a subreddit thesis
- ❌ Not authorizing replies — leaving negative comments unanswered tanks future delivery

## Compliance gotchas

- Reddit's policy edges shift; some categories that work on Meta won't work here
- Sensitive content (politics, dating, health) — review on case-by-case
- No public ad library — track your own creative archive

## Hand-offs from this channel

- Native Reddit-voice copy → `/copy` (specifically: instruct that the brief is "write like a Redditor not a marketer")
- Subreddit research → can be `/digital` or `/content` if doing organic-first community work
- Pixel setup → `/ops`
- Conversion attribution sanity check (Reddit reports often differ from GA4) → `/analyst`

## When NOT to run Reddit

- No clear subreddit fit (do the research first; if you can't name 3 active subs in scope, skip)
- Brand voice cannot tolerate first-person/self-aware framing
- Sub-$25/day budget per campaign — won't deliver
- Reaching Tier-1 enterprise buyers — they're on LinkedIn, not Reddit
