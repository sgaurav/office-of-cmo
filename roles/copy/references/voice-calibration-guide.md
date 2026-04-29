# Voice Calibration Guide

How `/copy` derives a voice signature from existing material, locks it to `cmo-memory/voice.md`, and enforces it on every variant going forward.

## Why this matters

Voice as adjectives ("warm and approachable") is aspirations, not voice. Adjectives describe what the brand wants to sound like, not what it sounds like. Real voice calibration starts from **existing material the user already shipped** — wins and losses both — and derives the signature from the contrast.

Once locked, voice becomes a non-negotiable check on every variant. No more "I think this matches our voice"; instead, "this matches the voice signature in `cmo-memory/voice.md`."

## The intake — what to ask the user for

Three things, in order:

### 1. Three samples that nailed the voice

Tweets, blog posts, ads, emails, LinkedIn posts, anything the user thinks landed. Doesn't have to be performance-grade ("this got 1,000 RTs") — can be aesthetic-grade ("this just feels like us").

### 2. One or two samples that didn't

Crucially, an **un-voice** sample — something the user shipped (or almost shipped) that felt off-brand even though it was technically fine. The contrast between the good and the bad is where the voice lives.

If user can't name an un-voice sample, prompt them: "What did you almost write but stopped because it didn't feel right? What's the LinkedIn-thought-leader cadence that you specifically avoid?"

### 3. The audience they're talking to in the good samples

Voice is shaped by audience. The voice that wins on Reddit is not the voice that wins on LinkedIn. Specify whose ear we're tuning for.

## What to look for — six signals

Read each sample. Note:

### Signal 1: Pronoun use

- "I / we / our" — first-person, founder-feel, intimate
- "You / your" — second-person, instructional, close
- Passive / "the company" — third-person, formal, distant

A consistent voice picks one register. Mixing reads as inconsistent author.

### Signal 2: Sentence rhythm

- Long, multi-clause sentences with semicolons → editorial, considered, slow
- Short, declarative sentences → punchy, direct, fast
- Mixed (long for setup, short for punchline) → conversational, pacing-aware

The good samples will have a consistent rhythm. The bad samples often break it.

### Signal 3: Vocabulary register

- Technical terms ("OpenTelemetry", "LTV cohort", "rate limiter") → technical voice
- Colloquial / spoken ("kinda", "sorta", "tbh", contractions) → casual voice
- Editorial / formal ("nevertheless", "consequently", "leverage") → corporate voice — usually a *banned* register for B2B founder-led brands

Check which register the good samples land in. Banned phrases often surface here ("leverage", "synergy", "best-in-class" are corporate-register markers).

### Signal 4: Specificity vs. abstraction

- Sample uses specific numbers, named examples, concrete details → high-specificity voice
- Sample uses vague claims, adjective stacks, "industry-leading" → low-specificity voice (usually a fail mode)

Almost always: good samples are higher-specificity than bad samples.

### Signal 5: Posture

- Confident / declarative ("This is how we do it.")
- Inquisitive / Socratic ("What if your X just worked?")
- Self-deprecating / self-aware ("Yes, this is an ad. We're trying it.")
- Authoritative / didactic ("Here's the playbook.")
- Aggressive / confrontational ("Stop using slow tools.")

Posture shapes the framework affinity — confident voices favor Direct Benefit; Socratic voices favor Question-led; self-aware voices favor Hook-Story-Offer; aggressive voices favor PAS or Status flip.

### Signal 6: What the bad samples have that the good ones don't

This is the most useful signal. If the good samples are first-person and the bad sample drops to third-person, **third-person is banned**. If the good samples are short and the bad sample is a 5-paragraph "thought leadership" piece, **long-form thought-leader cadence is banned**.

Banned phrases live here: cadences, registers, or phrasings that show up in the bad sample but not in the good ones.

## The voice signature output

Write to `cmo-memory/voice.md` (replace existing if any, or update with date stamp):

```markdown
# Voice

**Last calibrated:** YYYY-MM-DD
**Calibrated by:** /copy

## Adjectives (3, derived from samples)
1. <e.g., direct>
2. <e.g., dry>
3. <e.g., founder-led>

## Banned phrases (3+, derived from contrast with un-voice samples)
- "leverage" (corporate-register marker; bad sample used; good samples never)
- "best-in-class" (universal banned; user reflexively avoids)
- "thought leader" (the LinkedIn-thought-leader cadence that the un-voice sample fell into)

## Mandatories (specific patterns from good samples)
- First-person founder voice ("I" / "we", not "the team" or passive)
- Numeric specificity in headlines ("47 minutes" not "save time")
- Contractions in body copy ("we're", "don't", "it's")

## Anchor — the one piece of existing copy that captures the voice
> "<verbatim quote from the user's best sample, with attribution to where it ran>"

## Posture
<one sentence — e.g., "Confident-direct with a touch of dry self-awareness; not preachy, not corporate, not founder-bro.">

## Audience
<one sentence — whose ear we're tuned to>
```

## Confirming with the user before writing

Before locking the voice, read the signature back as a 5-line summary:

> "Reading back the voice I derived:
>
> - Direct, dry, founder-led
> - Banned: 'leverage', 'best-in-class', 'thought leader' cadence
> - Mandatory: first-person ('we' / 'I'), numeric specificity, contractions
> - Anchor: '<your tweet about investors wanting to know if you're alive>'
> - Posture: confident-direct with dry self-awareness
>
> Anything off?"

Wait for confirmation. Common adjustments:

- "Add 'cheeky' to the adjectives" — note, but check that the cheekiness is in the samples, not just aspirational
- "Drop 'leverage' from banned, we use it sometimes" — usually means user uses it but it's a slip. Probe once: "Where in the samples does 'leverage' work? If it's not in the good samples, banning it sharpens." If user holds, fine, but log the override.
- "Anchor should be a different piece" — accept, replace.

## Enforcing voice on every variant

After voice is locked, every variant I write goes through three checks before shipping:

1. **Banned-phrase scan** — does any phrase from the banned list appear? Rewrite.
2. **Mandatory check** — do the mandatory patterns hold? (First-person check, numeric specificity check, contractions check.) If not, rewrite.
3. **Anchor sniff test** — does this variant feel like it could come from the same writer who wrote the anchor? If not, reconsider.

If a variant fails any check, I don't ship it. Even if user requested it.

## When voice should evolve

Voice isn't static. Evolution triggers:

- **New audience segment**: ICP shifts from founders to enterprise; voice may need to shift register accordingly. Re-calibrate with samples in the new register.
- **Brand maturity**: Year 1 founder-direct often moves to Year 3 confident-but-warmer. Recalibrate annually.
- **Performance learnings**: if multiple winners in `cmo-memory/winners.md` share a phrasing or cadence not in the original signature, promote it to a mandatory.
- **Strategic rebrand**: `/cmo`'s call. Don't re-calibrate voice on my own initiative if the brand strategy hasn't moved.

When voice evolves, write a new entry to `cmo-memory/voice.md` with the date stamp and "supersedes [prior date]" — don't delete history. Voice evolution is a real artifact.

## Anti-patterns in voice calibration

- ❌ **Asking only for adjectives** — "warm and approachable" is universal; doesn't help. Demand samples.
- ❌ **Skipping the un-voice sample** — without contrast, you can't find the banned register
- ❌ **Letting the user dictate the voice from aspiration** — "we want to sound like Apple" — but the samples don't sound like Apple. Voice = what you've shipped, not what you wish you'd shipped.
- ❌ **Calibrating on too few samples** — 1 sample isn't a voice; could be a one-off. Aim for 3–5.
- ❌ **Re-calibrating every quarter** — voice should be more stable than that. Calibrate when triggers fire, not on a calendar.
- ❌ **Using the calibrated voice as a rigid template** — voice is a constraint, not a skeleton. New copy should *sound like the voice* even if it doesn't match anchor verbatim.

## Worked example — Lattice Brief (from the Reema dogfood)

**Samples that worked**:
- Tweet: "Your investors don't want a deck. They want to know if you're alive." → 18 RTs, 3 inbound demos.
- Onboarding email: "Lattice Brief takes 4 minutes a week. That's it. Here's how to set it up." → 60% open rate.

**Samples that didn't**:
- LinkedIn carousel "5 things every founder should know" → 4 likes, all from friends.

**Derived signature**:
- Adjectives: dry, founder-to-founder, deadpan
- Banned: "thought leader", "synergy", "wealth-building" (universal corporate-register), "5 things every founder should know" (specifically the LinkedIn-thought-leader-listicle cadence)
- Mandatories: first-person "you/your" addressing the reader directly; declarative cadence; specific time/number references
- Anchor: "Your investors don't want a deck. They want to know if you're alive."
- Posture: dry-direct with the self-awareness of a founder talking to founders
- Audience: seed-funded technical founders building B2B SaaS who report to 2–4 institutional investors

That signature gets enforced on every variant going forward. A LinkedIn ad that says "Lattice Brief is the leading platform for investor updates, helping you leverage data to build best-in-class reporting" gets rejected — three banned phrases, third-person register, no specificity. Rewrite forced.
