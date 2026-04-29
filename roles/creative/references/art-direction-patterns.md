# Art Direction Patterns

Visual prompt patterns by angle, with hand-off guidance to image/video tools (Midjourney / Flux / DALL-E / Veo / Runway / Pika / Adobe Firefly).

The Creative Director directs; the production tools render. The job is producing prompts that are specific enough to render well *and* aligned to the brief's angle.

## Prompt anatomy (six required elements)

Every visual prompt has:

1. **Subject** — who/what (with demographic specificity if relevant)
2. **Action** — what they're doing
3. **Camera** — lens, angle, distance, aspect ratio
4. **Lighting** — source direction, quality, mood
5. **Style** — photographic / illustrated / 3D / motion-graphics / hybrid
6. **Constraints** — negative prompt, no-text, aspect ratio enforcement

Bad prompt: "make a cool ad for our SaaS product"
Good prompt: "Mid-30s engineer at standing desk, hands on keyboard, screen glow on face, wide-angle 24mm, late-evening soft window light from camera left, photographic, 9:16, no text, no watermark, no other logos"

## Per-angle prompt patterns

### Outcome angle — show the after-state

Visualize the world *after* the product has worked. Imply the before-state by contrast or omission.

**Subject behavior**: relieved, at ease, mid-flow, accomplished. Body language signals the absence of stress.

**Camera**: slightly distant — wider shot frames the subject's environment as orderly. Avoid extreme close-up (reads as anxious).

**Lighting**: warm, naturally bright, single soft source. Implied morning or daylight (signals "the day is going well").

**Style**: photographic, slightly desaturated. Avoid heavy filtering.

Example prompt:
> "Founder mid-30s, leaning back in chair smiling slightly, dashboard on second monitor showing green metrics in soft focus, modern home office, soft daylight from window left, 35mm photographic, warm color grade, 4:5, no text, no on-screen UI text I can read, no watermark"

### Problem angle — freeze the pain

Capture the *moment of pain* in time. Body language signals frustration, fatigue, overwhelm.

**Subject behavior**: mid-action, visibly unresolved problem. Tired posture. Looking at screen.

**Camera**: closer than Outcome — close-up or medium close-up to communicate intimacy with the discomfort.

**Lighting**: cooler, harsher, often single-source from monitor (the problem is the source of light). Late hours implied.

**Style**: photographic, slightly desaturated or cool-toned. Realism over polish.

Example prompt:
> "Marketing manager at 11pm, monitor glow only light source, dozens of browser tabs open out of focus, tired expression, no smile, hand on forehead, medium close-up 50mm photographic, dark blue-cyan color grade, 9:16, no text overlay, no watermark"

### Identity angle — show the tribe

Aspirational — "people who do this well look like X." Two or three subjects, action that signals shared expertise.

**Subject behavior**: collaborating, reviewing work together, in agreement. The body language is *team*, not *individual*.

**Camera**: medium-wide, eye-level. Captures the dynamic.

**Lighting**: bright, professional, daytime. Suggests the workplace, not the suffering.

**Style**: photographic. Avoid stock-photo-staging — the tribe should look real.

Example prompt:
> "Two senior engineers in casual button-downs reviewing code on a shared monitor, laughing slightly, modern open-plan office in background out of focus, 35mm photographic, natural daylight from window right, 4:5, no on-screen text I can read, no watermark, no other logos"

### Status flip angle — split-frame contrast

Two-shot: undesirable state ↔ desirable state.

**Approach**: split the frame (50/50 vertically OR sequentially in video), make the contrast undeniable.

**Camera**: matched composition between halves so the contrast is clean (same framing, different state).

**Style**: photographic with explicit visual cue between halves (color, posture, time-of-day, environmental order).

Example prompt (split-frame static):
> "Split-frame 1:1: left side — engineer at messy desk surrounded by post-it notes, frowning, monitor showing chaotic dashboards, cool blue tone; right side — same engineer at clean desk, single monitor showing one clear chart, slight smile, warm daylight; matched composition, photographic, 1:1, no text, no watermark"

Example for video:
> "0–3s: engineer fumbling through 6 browser tabs, frustrated; 3–6s: same engineer with one consolidated dashboard, smiling at monitor; matched lens 35mm, matched eye-level framing, lighting shifts from cool fluorescent to warm window-light at the cut; 9:16 vertical, no text overlay until end"

### Comparison angle — direct contrast

Side-by-side product UI moments. Or split-frame with named competitor (legally fraught — only if substantiated).

**Approach**: minimal, almost diagrammatic. Strip everything except the contrast.

**Camera**: top-down for product UIs. Studio light, clean white surface.

**Style**: photographic-clean, with strong negative space. Could also work as motion graphics if the contrast is data-shaped.

Example prompt:
> "Two laptops on white surface, top-down 90-degree view, left screen showing competitor-style dense interface (no readable text), right screen showing simplified single-chart interface (no readable text), studio light from above, soft shadows, 1:1, no logos visible, no on-screen text I can read"

### Curiosity angle — open the loop

The hook is a *question or visual tension*; the answer is implicit.

**Approach**: subject mid-action with unresolved tension. Often opens with subject looking at something off-screen or screen we can't see.

**Camera**: over-the-shoulder, or close-up of hand reaching for object. Withhold the resolution visually.

**Style**: photographic, naturalistic. Avoid stylized.

Example prompt:
> "Hand reaching for phone on bedside table at dawn, soft natural light, phone screen out of frame, close-up 50mm photographic, shallow depth of field, 9:16, no text overlay until reveal moment"

### Stat-led angle — typographic-first

Hook is a number; visual is mostly typography.

**Approach**: minimal subject (or no subject). Typography is the hero.

**Style**: typographic, bold, single accent color. Could be motion-graphics-driven for video (number reveal, count-up animation).

Example prompt:
> "Bold sans-serif statement '47% of teams discover drift from a customer ticket' centered on near-black background, single warm accent color highlighting '47%', no other elements, 1:1, no logos, no other text"

### Contrarian angle — anti-spec

Break the category convention. Sometimes the best-performing concept is the one that *doesn't look like* an ad in this category.

**Approach**: identify what the category does → do the opposite. If category runs polished, run UGC. If category runs animated, run typographic. If category runs subject-led, run no-subject.

**Style**: depends on category. The contrarian against polished animation might be a single hand-held photographic moment with no graphic overlay.

Example prompt (contrarian against typical observability ads):
> "Hand-written notebook page on a desk, fountain pen mid-stroke writing 'why is the model drifting?', shallow depth of field, soft natural daylight, photographic, 4:5, intentionally low-tech aesthetic, no logos, no other text"

## Constraints to always include

In the prompt, always specify:

- **Aspect ratio** (e.g., `--ar 9:16` for Midjourney, or written explicitly)
- **No on-screen text** I can read (you'll add the hook as overlay separately, OR specify the exact text in the prompt)
- **No logos other than [your logo at lower-right at 5%]**
- **No watermark**
- **No deepfake of any real person**
- **Negative prompt**: `--no text, watermark, low-quality, distorted hands, extra fingers, blurry, cartoon, illustration` (for photographic style); inverse for illustrated style

## Style consistency across a campaign

Lock the *look* once per campaign in `cmo-memory/voice.md` (visual section). Reuse the look phrase verbatim in every prompt. Examples of look phrases:

- "Warm natural light, 35mm photographic, color palette: warm neutrals + one teal accent, slight grain"
- "Editorial-photographic, even lighting, neutral background, color palette: monochrome with single saturated accent per concept"
- "UGC-feel iPhone-grade, natural ambient light, slightly handheld, no color correction"

Without a locked look, the campaign feels like a portfolio of unrelated ads.

## Per-tool quirks

### Midjourney

- Aspect ratio via `--ar 9:16` / `--ar 4:5` / `--ar 1:1` / `--ar 16:9`
- Style reference via `--sref` — useful for campaign-consistent look
- Negative via `--no <terms>`
- v6+ has stronger photographic mode; lean into "photographic" / "editorial" keywords
- For brand-consistent runs, use `--cref` (character reference) if recurring subject

### Flux (via Black Forest Labs / fal / Replicate)

- Strong at hands and on-screen text — Flux can render text accurately, useful for typographic-led concepts
- Photographic prompts work well with explicit lens spec (24mm, 35mm, 50mm, 85mm)
- Lighting direction matters — be explicit ("light from camera left")

### DALL-E 3 (via ChatGPT)

- Conversational prompt-to-image; iterate via natural language
- Less control over precise composition; better for fast ideation than final assets
- Built-in safety filters can reject prompts that other tools accept; rephrase if rejected

### Runway Gen-3 / Veo / Pika (video)

- Generate 5–10s clips; chain for longer
- First-frame consistency is hard; use image-to-video where possible (generate the still in Midjourney/Flux first, then animate)
- Camera motion language: "slow push in", "static", "tilt up", "handheld follow"
- Audio is separate concern — most ad-bound video gets sound design / VO added in post

### Adobe Firefly

- Commercial-safe (trained on licensed content) — useful for stock-substitute work and corporate clients with strict provenance rules
- Less stylized than Midjourney; better for "looks like real photography" use cases

## Hand-off to production

After the concept fan-out + ship list, each shipped concept gets:

```markdown
### Production hand-off — Concept A
**Tool**: <Midjourney v6 / Flux / Veo>
**Prompt** (full):
"<the prompt as it should be input — including aspect ratio and negative prompt>"
**Reference images** (if any): <link to mood-board / similar shots>
**Iteration count target**: <e.g., "10 generations, pick top 3, deliver to /digital">
**Post-production needed**: <captions / overlay text / logo / color grade match across concepts>
**Estimated turnaround**: <hours for stills; days for video>
```

## Anti-patterns in prompts

- ❌ "Make it pop" / "make it cool" / "make it eye-catching" — useless to a renderer
- ❌ Vague style references ("Apple-style", "premium", "modern") — name the specific look
- ❌ Missing aspect ratio — defaults will burn iterations
- ❌ "Realistic" without lens/lighting spec — generates default-AI-realistic, looks fake
- ❌ Too many constraints — generators cap at attention; pick the 3–4 most-important
- ❌ On-screen text in prompt + plan to add overlay — generators will render gibberish text in the image; specify "no on-screen text" and add overlay in post

## When to skip the renderer entirely

Some concepts shouldn't be AI-rendered:

- **Customer testimonials** — needs real customer
- **Founder-POV / talking head** — needs real founder, real lighting, real audio
- **UGC for TikTok / Reddit / Spark Ads** — must look unstaged; AI-generated UGC reads as fake
- **Anything where authenticity is the angle** — the audience can tell

For these, the brief specifies a real-world shoot or creator partnership; my job is direction (lighting, framing, voice instructions to the talent), not prompt-writing.
