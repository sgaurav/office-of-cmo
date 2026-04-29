# Creative Brief Template

The standard format every brief takes. Constrains the work productively — the brief is what the production team can refuse, push back on, or build from.

## Full template

```markdown
# Creative Brief — {campaign-slug}

**Date:** YYYY-MM-DD
**Channel:** <Meta | Google | LinkedIn | YouTube | Reddit | X | TikTok | Bing>
**Format:** <Single Image | Carousel | Video 9:16 | Video 4:5 | Video 16:9 | Document | Conversation | Spark | RSA | In-Stream | Bumper | In-Feed>
**Audience reference:** artifacts/ads/audience-doc.md (Segment: <name>) OR cmo-memory/icp.md
**Approved by:** Creative Director (this brief)

## Audience (one sentence)
<Role + stage + trigger context. From audience-doc or memory. Specific enough that someone could find this person on a platform.>

## Single-minded message
> <One sentence. The thing they should remember after seeing this for 1.5 seconds. No "and". No clauses. The discipline: if a stranger read just this line, they'd know what we're selling and what we're claiming about it.>

## Angle
**<Outcome | Problem | Identity | Status | Fear | Curiosity | Comparison | Social Proof>**

Why this angle, this audience, this channel: <one sentence — the thesis>.
Other angles for this segment are out of scope for this brief. Separate brief if we want them.

## Format spec
- Aspect ratio: <e.g., 9:16>
- Length: <e.g., ≤15s for video; N/A for static>
- Motion vs. static: <one>
- Asset count: <e.g., 1 hero video + 3 still trims for Stories>
- Sound-on / sound-off requirement: <if vertical-feed video, must be sound-off readable — non-negotiable>

## Mandatories
- Logo placement: <e.g., lower-right at 5% of frame>
- Voice rules from `cmo-memory/voice.md`:
  - <three adjectives>
  - mandatory phrasings if any
  - banned phrases: <three from voice.md>
- Compliance / claim mandatories: <if any from cmo-memory/compliance-notes.md>
- Disclosures: <#ad / "results not typical" / FDA disclaimer / etc. if applicable>

## Don'ts
- Banned phrases: <inherited from voice.md plus brief-specific>
- Banned imagery: <e.g., no stock photos of generic teams; no "rocket ship" metaphor; no shock imagery>
- Tone violations: <e.g., no "thought leader" register; no LinkedIn-influencer cadence>
- Claim words requiring substantiation we won't make in this brief: <e.g., no "guaranteed", no "#1">

## Inspiration references (specific, not vague)
- <Competitor X>'s ad from <Date> (Meta Ad Library link if available): nail the <specific element — e.g., "the 1.5s hook treatment", "the social-proof overlay style">
- <Competitor Y>'s anti-pattern: counter-position by saying the *opposite* about <specific element>
- Whitespace angle from competitor scan: <one-line — what nobody is running that we should>

## Candidate hooks (5 — for /copy to riff)
1. "<hook 1, ≤12 words>" [framework: PAS]
2. "<hook 2>" [framework: BAB]
3. "<hook 3>" [framework: Hook-Story-Offer]
4. "<hook 4>" [framework: Status flip]
5. "<hook 5>" [framework: Stat-led]

(3–5 framework tags across the 5 hooks; never all from the same framework. Each hook ≤12 words.)

## Visual direction (high-level)
- Look: <e.g., warm natural light, 35mm photographic, color palette: warm neutrals + one teal accent>
- Subject demographic: <consistent with audience>
- Production tier: <iPhone-grade UGC | studio-grade | animator-grade>
- Negative: <what NOT to look like — e.g., "not Datadog's polished aspirational ad style">

## Hand-off
This brief is consumed by `/copy` for hook variants and platform-specific copy, and by `/digital` for ad-set composition. After /copy ships variants, /creative scores the resulting concepts against the rubric in `concept-critique-rubric.md` and produces a ship list.
```

## How to fill each section

### Audience (one sentence)
Should be specific enough to enter into a platform's targeting interface. Bad: "marketing-aware founders." Good: "Founder/CEO at Series A–B B2B SaaS, $5–20M ARR, US, with marketing as a function under the founder."

### Single-minded message
The hardest section. Test: cover the rest of the brief. Read just this sentence to a stranger. Could they:
- Tell you who the ad is for?
- Tell you what's being claimed?
- Tell you the implied next step?

If yes, it's locked. If no, rewrite.

Common failure modes:
- Multi-clause: "We help X by doing Y so they can Z and also save time" → strip it down
- Adjective-stack: "The most powerful and intuitive..." → name the specific
- Generic: "Grow your business with our platform" → say the specific outcome or specific buyer

### Angle
Pick exactly one. The angle is the *emotional posture* the ad takes. Document why this angle for this audience on this channel — that's the thesis. If the user can't defend the angle, the angle is wrong.

### Format spec
Per channel-plan and the format-fit-by-channel matrix. One format per brief. Don't ask for "video and static and carousel" — that's three briefs.

### Mandatories
Be specific. "Use brand voice" is not a mandatory; "first-person founder voice ('I' / 'we'); banned: leverage, synergy, best-in-class" is.

### Don'ts
The don'ts list is rarely empty. Pull from voice.md (banned phrases), from compliance-notes.md (platform policy), from the audience-doc anti-segment (banned framings). If the don'ts list is empty, you haven't thought hard enough about what would go wrong.

### Inspiration references
**Specific, named, with the specific element you want to copy.** "Make it like Apple" is not inspiration. "Apple's 'Privacy. That's iPhone.' campaign — copy the typographic treatment of the headline (large + sparse + one color accent), not the production value" is inspiration.

If competitor scan was run, reference the **whitespace** angles — angles that nobody is running. If everyone runs Outcome ("save time"), bias toward Status flip or Contrarian.

### Candidate hooks (5)
Hooks are *prompts for `/copy`*, not final copy. Each ≤12 words. Each tagged with a framework so /copy can riff in the same direction.

Don't write 5 hooks all from PAS. Don't write 5 hooks that are slight variations of the same line. Spread across 3–5 different frameworks.

### Visual direction
High-level look-and-feel, not shot list. The shot list lives in the concept fan-out (next document).

Production tier matters: don't brief studio-grade work for a $50/day Meta test. The production cost won't break even.

## Anti-patterns — what a bad brief looks like

- Multi-message brief (says three things) → produces three half-ads
- "Make it pop" / "we'll know when we see it" → the brief is the user refusing to direct
- Inspiration references that are vague aspirations to brands 1000× our scale ("like Apple")
- Hooks that are full sentences with adjective stacks
- Format spec of "any format" or "test all formats"
- Mandatories that just say "follow brand guidelines" without specifics
- Don'ts list that's empty
- Angle of "all of them" or "we'll see what works"

If a brief I'm reviewing has any of these, it goes back for rewrite before any production work starts.

## How long should a brief be?

Ideal: **one page, scannable in 2 minutes.** Briefs longer than 2 pages either:
- Try to say too much (the multi-message problem in disguise)
- Lack discipline (over-specifying production details that should be in the concept document, not the brief)

If your brief is running long, ask: "what would I cut to ship this on one page?" The answer is usually the Visual Direction expanding into shot lists (move to concept fan-out doc) or the Mandatories listing every brand-guidelines rule (link to the doc instead of repeating).
