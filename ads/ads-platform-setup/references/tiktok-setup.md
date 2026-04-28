# TikTok Ads — Setup Checklist

TikTok rewards native vertical video and aggressively penalizes Meta-style static creative. Only run if creative team can produce native vertical content; otherwise out-of-scope.

## Pre-flight

1. **TikTok Pixel** installed sitewide; verify in TikTok Ads Manager → Assets → Events → Web Events (live data appearing)
2. **Events API** (server-side) for primary conversion event — strongly recommended due to iOS dedup
3. **Custom audiences**:
   - Customer match (upload list, hashed)
   - Site retargeting (30d, 60d)
   - Engaged with content (Spark Ads viewers)

## Campaign — Conversions

1. Objective: Conversions
2. Special category: only if applicable
3. Budget: ABO in test phase
4. Schedule: matches plan
5. Naming: per channel-plan

## Ad Group

1. Promotion type: Website
2. Optimization event: from `tagging-spec.md`
3. Pixel: confirmed
4. Placements: TikTok only in test (skip Pangle / News Feed App Series)
5. Audience:
   - Custom: include / exclude
   - Lookalike: 1–3% of paid customers
   - Demographics: age 25+ unless your category specifically targets younger
   - Interests / behaviors: minimal in test (TikTok algo prefers broad + native creative)
6. Bidding: Cost cap (= strategy CPA target × 1.2)
7. Daily budget: ≥ $50/day per ad-group
8. Day-parting: optional
9. Pacing: standard

## Ads — native vertical only

- Format: 9:16 vertical video
- Length: 7–35s sweet spot
- Aspect: 9:16 (1080×1920)
- Sound: ON by default — design for sound-on; captions for accessibility
- Hook in first 1.5s — non-negotiable; video without a hook in that window dies
- Use commercial music library only (TikTok Commercial Music Library)
- Avoid watermarks of other platforms (IG / FB logos cause rejection)
- Naming per channel-plan

## Spark Ads (boost organic-style)

- Best for: amplifying creator-organic content with permission
- Authorize via creator's Spark Ads code
- Performance often 1.5–2x better than studio-shot ads in this format
- Brief the creator with the same single-minded message + angle (don't over-script)

## QA before activation

1. Confirm pixel events fire on signup
2. Confirm Events API match rate (>30% target)
3. Preview the ad in TikTok Ads Manager
4. Confirm vertical 9:16 plays correctly with sound + captions
5. Status: PAUSED until pre-launch GO

## Common mistakes

- Repurposing Meta static images / 1:1 video → looks like an ad → tanks
- No hook in first 1.5s
- Voiceover-only without captions
- Not authorizing creator content as Spark Ads (loses native engagement boost)
- Bid too aggressive (Cost cap too low) — ad doesn't deliver
- Targeting too narrow — TikTok algo wants room to find
