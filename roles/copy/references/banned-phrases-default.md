# Banned Phrases Default

Phrases `/copy` refuses regardless of `cmo-memory/voice.md`. These are the words and cadences that have failed across so many programs and so many audiences that no brand voice survives them.

`cmo-memory/voice.md` adds *brand-specific* banned phrases on top of these. This document is the universal floor.

## Tier 1: Universal banned (refuse outright)

Words and phrases that have zero signal in modern marketing copy. Their use is *negative information* — audiences register the use and downgrade trust. I will not ship a variant containing any of these.

| Phrase | Why it's banned | Replacement direction |
|---|---|---|
| **leverage** | Corporate-jargon marker; says "use" with extra calories | Just say "use" |
| **synergy / synergistic** | 2003-management-textbook word; reads as faking expertise | Specific outcome |
| **best-in-class** | Universal claim, zero substantiation, audience filters | Specific number / customer count |
| **industry-leading** | Same as above; vague superlative | Cite a third-party | drop |
| **world-class** | Same | Drop |
| **cutting-edge** | Same | Specific feature |
| **revolutionary / revolutionize** | Hyperbolic; reads as marketing-speak | Specific change ("cut your X from Y to Z") |
| **transform / transformative** | Same | Specific change |
| **unlock** | Used to describe everything; means nothing | Specific outcome |
| **game-changing / game-changer** | Hyperbolic | Specific outcome |
| **innovative / innovation** | Self-description that's never persuasive | Show, don't tell |
| **streamline** | Vague; rarely names what's actually changing | Specific time/step reduction |
| **empower / empowering** | Self-flattering; rarely lands | Specific capability granted |
| **scalable** | Engineering term used as marketing claim; vague to buyer | Cite specific scale numbers |
| **robust** | Vague | Specific reliability claim |
| **comprehensive / end-to-end** | Vague | List what's actually included |
| **seamless / seamlessly** | Audience knows it's never seamless | Specific reduction in friction |
| **AI-powered** | When AI isn't the headline benefit, this just signals "trying too hard" | Drop unless AI is the actual claim |
| **Click here / Click below** | Pre-2010 CTA convention | Verb + outcome |
| **ROI** as headline word | Buyer cares about specific outcome, not the abstraction | Specific outcome with $ or time |

## Tier 2: Banned in cold-traffic contexts

These are softer than Tier 1 — they have legitimate uses in some contexts, but should never appear in cold paid acquisition or first-touch outbound.

| Phrase | When it might work | When it never works |
|---|---|---|
| "Welcome to <product>" | Post-signup welcome email | Cold ad copy |
| "We're excited to announce" | Founder-team-update post | Anything else |
| "We are pleased to" | Press release | Marketing |
| "At <company>, we believe…" | Brand manifesto | Ad copy, LP body |
| "Our mission is to…" | About page | Ad copy |
| "We help <generic audience>" | Internal positioning | Outward-facing copy |
| "Take your <X> to the next level" | (Never works) | (Never works) |

## Tier 3: Cadence and structure bans

Not phrases — patterns. Equally banned.

### The "5 things every founder should know" listicle cadence
LinkedIn-thought-leader register. Reads as content-farm. Even when the underlying ideas are good, the cadence triggers audience pattern-matching to spam.

### The "Are you tired of <X>?" rhetorical-question opener
Pandering. Audiences in 2026 immediately register this as ad-copy from 2008.

### Question-mark-headline-ending
Headlines that end with question marks usually fail (low CTR vs. declarative variants). Exception: when the question is *non-rhetorical* and the audience genuinely doesn't know the answer.

Bad: "Need help with your finances?"
OK: "What if your monthly close took 4 minutes, not 4 days?"

### Opening with "In today's fast-paced world…"
Universal opener for content that has nothing to say. Audiences scroll past.

### Opening with "Let's face it…" / "Look…"
Reads as condescending; the audience's reflex is "no, you face it."

### Closing with "Reach out today!"
Generic CTA exhortation. The CTA verb already does the asking; this is filler.

### Tagline-style closing pseudo-poetry
"<Product>. Reimagined." / "<Product>. Simplified." / "Built for the bold."
These are agency-pitch lines that look weighty but say nothing.

### Em-dash followed by a fragment in headlines
"<X> — done right." / "<X> — at last."
Cliché. Almost always replaceable with a better headline.

### Double-spaces before exclamation points / multiple exclamation points
Spam-filter triggers + reads as desperate. One exclamation point per email max, and only if it's earned.

## Tier 4: Banned in B2B contexts (unless specifically B2C)

Words that work in consumer marketing but tank in B2B because the buyer is a professional with a budget.

- **"The only ___ you'll ever need"** — implausible promise; B2B buyers test this claim against their existing stack
- **"Crush it" / "Smash it" / "Slay"** — startup-bro vocabulary; alienates senior B2B
- **"Disrupt"** — 2014; reads as performative
- **"Hustle / hustle culture"** — same
- **"Game on" / "Let's go"** — locker-room cadence
- **Excessive emoji in subject lines / headers** — works in some D2C; almost never works in B2B Sponsored Content / cold outbound

## Tier 5: Industry-specific bans

These show up in `cmo-memory/compliance-notes.md` for specific verticals; replicating common ones here:

### Health / Wellness
- "Cure" / "Treat" / "Prevent" / "Diagnose" → FDA-regulated language; require certification
- "Doctor-recommended" without specifics → unsubstantiated
- "Clinically proven" → need actual clinical study citation
- "100% natural" → vague + makes implicit safety claim

### Finance / SaaS-finance / Fintech
- "Wealth-building" → reads as MLM-adjacent in modern finance contexts
- "Financial freedom" → same
- "Passive income" → same
- "Make $X/month" → FTC-actively-litigated earnings claim
- "Guaranteed returns" → SEC violation in most contexts

### B2B SaaS
- "Mission-critical" → corporate-jargon-marker, almost always cuttable
- "Best-of-breed" → same as best-in-class, banned
- "Single source of truth" → fantasy claim; usually triangulation
- "10x productivity" → unsubstantiated claim

### Consumer apps
- "Life-changing" → hyperbolic; audience filters
- "The Uber of <X>" → Tier-1 cliché since 2018

## How `/copy` handles a banned-phrase request

Two paths:

### Path 1 — user reflexively used a banned phrase

I rewrite without the phrase, ship the rewrite, briefly note in the response: "Replaced 'leverage' with 'use' — it's in our universal banned list because it adds calories without signal."

User can override; I log the override to `cmo-memory/voice.md` so we don't re-litigate next time.

### Path 2 — user explicitly insists on a banned phrase

> "I want 'best-in-class' in the headline — investors expect to see it."

Two probes:

1. "Is there a third-party citation for 'best-in-class'? If yes — G2 award, Gartner ranking, etc. — we use the citation: 'Rated #1 by G2 in <category>' is far stronger than self-claimed 'best-in-class'. If no, we drop the claim and use a specific number instead."
2. "What's the actual outcome you want the audience to register? Almost always there's a specific that hits harder than the superlative. Can we name it directly?"

If user still insists after probes: I write the variant they want AND a variant without the banned phrase, ship both, let user pick. Log the override.

## What's NOT banned (clarifying common misconceptions)

- **Specific superlatives WITH substantiation** — "Rated #1 by 1,247 SMB controllers" is fine. "#1" alone isn't.
- **Industry-standard terms used technically** — "API" / "OAuth" / "OpenTelemetry" in technical-audience copy is fine; these aren't jargon, they're the audience's language.
- **First-person assertions** — "We built X because Y" is direct; not banned.
- **Strong contrarian claims with reasoning** — "Most observability is dashboards. Real drift detection is different." is fine if defended.
- **Numerical claims with sources** — "47 minutes saved per week (avg, n=120)" is the *opposite* of banned; it's the gold standard.

The bans are about *vague self-flattery without substance*. When substance shows up, the ban often dissolves.

## How this list grows

When a phrase repeatedly fails across multiple programs (kill rule fires across 2+ campaigns with the phrase as the common factor), it gets promoted to this list. `/copy` proposes the addition; user confirms; phrase added with the rationale and the kill-rule cross-reference.

This list is anti-fragile — every program that runs adds evidence. Every retro can confirm or contest individual entries.
