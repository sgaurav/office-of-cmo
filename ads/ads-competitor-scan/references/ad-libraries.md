# Ad Library URLs

Public ad transparency tools to scrape competitor creative.

## Meta (Facebook + Instagram)

- Search: `https://www.facebook.com/ads/library/?country=US&active_status=active&ad_type=all&q={competitor_name}`
- Filter to "Active" ads to ignore retired creative
- Country defaults to US — change for regional scans
- Each ad shows: launch date, platforms, multiple variants, the page that runs it

## LinkedIn

- Per-company library: `https://www.linkedin.com/company/{company-slug}/posts/?feedView=ads`
- Or: company page → "Posts" → "Ads" tab
- Less rich than Meta; sometimes only the latest few

## Google

- Ads Transparency Center: `https://adstransparency.google.com/?region={region}&q={competitor}`
- Shows Search ads, YouTube ads (when public), and Display
- Filter by date range and format

## TikTok

- Creative Center: `https://ads.tiktok.com/business/creativecenter/topads/`
- Top ads in market (not competitor-specific search) — useful for category trend, not deep recon

## X (Twitter)

- Less transparent; rely on follower posts and the user's own observations

## Reddit

- No public ad library; ask the user to share active ad screenshots if they advertise here

## Tactical tips

- Run each scan twice over a 3-week window — short-lived test creative reveals what they're learning
- Cross-reference with SimilarWeb / Semrush for paid keyword data
- The single highest-signal field is **launch date with no end date** — that's a creative they're scaling
