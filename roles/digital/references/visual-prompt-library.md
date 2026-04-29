# Visual Prompt Library

Patterns for image/video prompts handed off to Midjourney, Flux, DALL-E, Veo, Runway, Pika, etc. We do not render — we hand off well-specified prompts.

## Prompt anatomy

A good prompt has:
1. **Subject** (who/what)
2. **Action** (what they're doing)
3. **Camera** (lens, angle, distance)
4. **Lighting** (source, mood)
5. **Style** (photographic, illustration, 3D, motion graphics)
6. **Constraints** (no text, no logos, aspect ratio)

Bad prompt: "make a cool ad"
Good prompt: "Mid-30s engineer at standing desk, hands on keyboard, screen glow on face, wide-angle 24mm, late-evening soft window light from left, photographic, 9:16, no text"

## Patterns by angle

### Outcome angle
Show the after-state. The before-state is implied or shown briefly first.
- "<Subject>, visibly relieved, <action that signals outcome>, ..."
- Example: "Founder, leaning back in chair smiling, dashboard on second monitor showing green metrics, soft daylight, 9:16"

### Problem angle
Show the pain frozen in time.
- "<Subject>, mid-action, <visible signal of frustration/pain>, ..."
- Example: "Marketing manager at 11pm, monitor glow, dozens of browser tabs open, tired expression, no smile, photographic, 9:16"

### Identity angle
Show the aspirational tribe.
- "<Two or three subjects of the right type>, <doing the desirable thing together>, ..."
- Example: "Two senior engineers laughing while reviewing code on shared monitor, modern office, 35mm, 4:5"

### Status flip
Two-shot: undesirable → desirable.
- "Split-frame: left side <undesirable state>, right side <desirable state>"

### Comparison
Side-by-side product UI moments.
- "Two laptops on white surface, left screen showing <competitor pattern>, right showing <our UI>, top-down, soft studio light"

### Contrarian / hook-led
Often single bold typography + minimal subject.
- "Bold sans-serif text '<hook>' centered, white on near-black, no other elements, 1:1"

## Video shot list patterns

### 9:16 short-form (≤15s)
- 0–1.5s: HOOK (visual + text overlay together; sound off must work)
- 1.5–4s: ACKNOWLEDGE the pain (subject reaction)
- 4–10s: SHOW the product or outcome (UI screen recording or subject in flow)
- 10–13s: SOCIAL PROOF or stat (logo grid, customer quote, numeric overlay)
- 13–15s: CTA (button-style overlay + voice/text)

### 16:9 in-stream / pre-roll (≤30s)
- 0–5s: HOOK (must survive the skip moment)
- 5–15s: STORY (one customer's before/after)
- 15–25s: PRODUCT moment
- 25–30s: CTA

## Constraints to always include

- Aspect ratio (matches brief format spec)
- "No on-screen text" (you'll add it as overlay) OR specify the exact overlay
- "No logos other than [your logo at lower-right]"
- "No watermark"
- "No deepfake of any real person"

## Negative prompts (Midjourney/Flux style)

- `--no text, watermark, logo, low-quality, distorted hands, extra fingers, blurry`
- For photographic style: `--no illustration, 3D render, cartoon`

## Brand consistency tips

- Define a "look" once in `cmo-memory/voice.md` (e.g., "warm natural light, 35mm, color palette: warm neutrals + one teal accent")
- Reuse that look phrase verbatim in every prompt
- Reuse a consistent "hero subject demographic" so audiences feel like a coherent campaign

## Tools (handoff destinations)

| Tool | Best for | Notes |
|---|---|---|
| Midjourney v6+ | Stylized / illustrative stills | Aspect ratio via `--ar 9:16`; learn its prompt grammar |
| Flux | Photographic stills | Strong at hands and text |
| DALL-E 3 | Conversational prompt-to-image | Good for quick iterations |
| Runway Gen-3 | Short-form video, motion | 5–10s clips; chain for longer |
| Veo (Google) | Photorealistic video | Best lip-sync if needed |
| Pika | Stylized motion | Good for product shots with subtle movement |
| Adobe Firefly | Commercial-safe stock substitutes | Licensing-friendly |
