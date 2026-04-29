# Concept Fan-Out Patterns

How to spread 3–5 distinct concepts across an angle without producing 5 hook variants of the same visual.

## The principle

A locked brief has ONE single-minded message and ONE angle. The fan-out explores **different visual treatments of that one message in that one angle**. Different concepts, same lane.

Bad fan-out (this is just hook variation):
- Concept A: 9:16 video showing a frustrated person with hook "Your tool is slow"
- Concept B: 9:16 video showing a frustrated person with hook "Slow tools cost time"
- Concept C: 9:16 video showing a frustrated person with hook "Stop using slow tools"

Good fan-out (different concepts in the Outcome angle):
- Concept A: subject in flow state, after-state visual, "30 minutes back, every Monday"
- Concept B: split-screen before/after with timer overlay, contrast-heavy
- Concept C: anti-spec — text-only typographic treatment, no subject, hook = the entire ad
- Concept D: customer-on-camera testimonial, sound-on, single quote

Same single-minded message ("get hours back per week"), same angle (Outcome), four genuinely different concepts.

## The four-axis spread

When fanning out concepts, vary along these axes — not the hook, but the *concept*:

| Axis | Variations |
|---|---|
| **Subject** | Single subject / Pair / Crowd / No subject (typographic / abstract) |
| **Treatment** | Photographic / Illustrated / Animated / Hybrid (UI screen-recording over photo) |
| **Pacing** (video) | Single-shot / Cut-heavy / Slow build / Reveal at the end |
| **Proof** | Stat overlay / Customer logo / Testimonial / Demo / No external proof |

A 4-concept fan-out should cover 3+ of these axes meaningfully. Otherwise you're testing surface variation, not concept variation.

## Pattern templates

### Pattern 1: The Subject ↔ No-Subject contrast

Always include one subject-led concept (face on camera, person in scene) AND one no-subject concept (typography, UI demo, abstract). They test whether the audience is responding to the *story* or to the *claim*.

Example (Outcome angle, B2B SaaS):
- A: Founder face-on-camera, casual UGC, talking-head walks through outcome
- B: Bold typographic statement of the stat, no person, holds for 4 seconds

### Pattern 2: The Hero ↔ Proof split

One concept leads with the *outcome* visually, one leads with the *proof* (logo grid, stat, testimonial).

Example (Identity angle, dev tools):
- A: Senior engineer at desk reviewing code with peer (the outcome of using the tool)
- B: Logo wall of customer companies + numeric stat overlay (the proof that tribe uses it)

### Pattern 3: The Slow Build ↔ Hook-First contrast (video only)

One concept opens with the hook in the first 1.5s and unfolds. One opens with a question or visual tension and reveals.

Example (Curiosity angle, finance app):
- A: Open on bank-account screenshot, hook overlays at 0.5s ("11 times before opening"), reveal at 4s
- B: Open on hand reaching for phone, hook withheld until 3s reveal moment

Hook-first is safer for cold audiences; slow build wins on warm/retargeting where the user has context.

### Pattern 4: The Conformist ↔ Contrarian split

One concept fits category convention; one breaks it. Tests whether convention is what the audience wants or what's burning attention.

Example (Comparison angle, observability):
- A: Standard split-screen "Tool X" vs "Our tool" with feature checkmarks (conformist)
- B: Single shot of competitor's logo with one word overlaid: "expensive." Then ours, with: "not." (contrarian)

The contrarian variant is high-risk; usually the stretch concept in the ship list.

### Pattern 5: The Production-Tier spread

When budget supports it, include one concept at each production tier:
- iPhone-grade UGC (cheap, fast, native-feel)
- Studio-grade (polished, expensive, looks like an ad)
- Animator/illustrator-grade (stylized, distinctive, mid-cost)

This tests where the audience's attention goes per channel. TikTok rewards UGC; LinkedIn often rewards studio.

## How many concepts to fan out

| Budget tier | Concept count | Rationale |
|---|---|---|
| Sub-$5k test | 3 concepts | Production budget can't support more; test ship list = top 2 |
| $5–25k test | 4 concepts | Standard fan-out; ship list = top 3 |
| $25k+ test | 5 concepts | Include 1 stretch concept (high-differentiation, hard-to-produce); ship list = top 3 + stretch as 4th if budget supports |

Never fan out beyond 5. After 5, you're testing variations within a single concept, which is `/copy`'s job (hook variants), not mine.

## Per-concept output format

Each concept in a fan-out gets:

```markdown
### Concept <Letter> — "<short evocative name>"

**Format:** <aspect ratio + length>
**Subject:** <single subject / pair / no subject / etc.>
**Treatment:** <photographic / illustrated / animated / hybrid>
**Pacing:** <single-shot / cut-heavy / slow build / reveal>
**Proof element:** <stat overlay / logo / testimonial / demo / none>

**Shot list (video) OR layout (static):**
1. (0–1.5s) Hook: <description>
2. (1.5–4s) <description>
3. (4–10s) <description>
4. (10–13s) Outcome / proof reveal
5. (13–15s) CTA

**Hook overlay:** "<text from hook list>" [framework]

**Image/video prompt for production tooling:**
"<prompt suitable for Veo / Runway / Pika; specify camera, lighting, subject, motion, style. Include aspect ratio. Include negative prompt.>"

**Why it fits the brief:** <one line — connect to the angle and single-minded message>

**Production tier:** <UGC | studio | animator>
**Estimated production effort:** <iPhone weekend | half-day shoot | week of post>
```

## The stretch concept rule

Always include one **stretch concept** in the proposal — highest differentiation, lowest production feasibility. The lottery ticket. Examples:

- A typographic-only ad in a category that runs photographic
- A 60-second long-form when everyone runs 15s
- A black-and-white shoot in a color-rich category
- An anti-marketing creative that breaks the "this is an ad" pattern

The stretch concept gets explicit framing: "This won't ship without an additional production budget, but if you have it, this is the lottery ticket. Differentiation is 5/5; production feasibility is 2/5. Likely outcome: either it pops dramatically or it dies. Worth a 10–15% test allocation if the rest of the program is healthy."

`/digital` decides whether to fund the stretch.

## Anti-patterns

- ❌ **All five concepts share one visual treatment** (e.g., all UGC selfie video, all typographic) — that's hook variation, not fan-out
- ❌ **Concepts that test different *messages*** rather than different visuals of the same message — that's a brief problem, not a fan-out problem; rewrite the brief
- ❌ **No stretch concept** at all — every fan-out should have at least one high-risk option, even if user passes on funding it
- ❌ **Fan-out before the brief is locked** — variations of an unstable brief just multiply the brief's flaws
- ❌ **Fan-out by hook only** — same visual, 5 different hook lines. That's `/copy`'s job, not fan-out

## What gets handed back to `/digital`

After fan-out + scoring + ship list:

```markdown
# Concept Set — <campaign-slug>

**Brief reference:** artifacts/ads/briefs/<slug>.md
**Brief recap (1 line):** <single-minded message + angle + format>

## Ship list (top 3)
1. **Concept A** — score 18/20, lead concept. Reason for lead: <strongest hook strength + production feasibility>.
2. **Concept B** — score 16/20. Reason to test alongside A: <complementary axis — e.g., "A is subject-led, B is no-subject — tests whether story or claim wins">.
3. **Concept D** — score 16/20. Reason to test alongside A & B: <production-tier diversity / proof-element diversity / etc.>.

## Stretch concept (optional)
- **Concept C** — score 16/20 but production feasibility 2/5. <Why it might pop, what's required to ship.>

## Cut from ship list
- **Concept E** — score 13/20. Reason: <weak on Hook strength axis; ordinary execution of the angle>.

## Hook prompts handed to `/copy`
<5 hook prompts from the brief, with framework tags. /copy generates platform-specific variants.>

## Production hand-off
- Concept A: <production specs>
- Concept B: ...
- Concept D: ...

## Open decisions for `/digital`
- Stretch concept C — fund or pass?
- Concept B and Concept D both at 16; if budget only supports 2 concepts beyond lead, which?
```

## Refresh fan-outs

When `/digital` requests a refresh of a campaign whose creative is decaying, the fan-out rules tighten:

- **Inherit the single-minded message and audience** from the original brief
- **Change the angle** per `/digital`'s refresh thesis (mandatory — a refresh that keeps the same angle is just creative variation, not refresh)
- **Reuse zero hook framework choices from the original** (would just produce more decay)
- **Reuse zero subject demographics from the original** (audience saturated on the look)
- Tag the artifact `creative-decks/{slug}-refresh-{n}.md` with explicit link to the parent brief and parent deck

A refresh fan-out that recycles 60%+ of the original concepts isn't a refresh; it's spelling the same word differently.
