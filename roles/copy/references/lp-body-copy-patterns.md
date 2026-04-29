# LP Body Copy Patterns

How `/copy` writes the body of a paid landing page. The visual direction is `/creative`'s; the page architecture is `/digital`'s; the words on the page are mine.

## The single biggest discipline

**Message congruence with the ad.** The LP headline echoes the ad hook word-for-word (or near). If the ad says "Save 47 minutes per controller per week," the LP headline says "Save 47 minutes per controller per week" or a tightened version of it ("Save 47 minutes per controller. Every week."). Not "Streamline your finance ops" or "Cut closing time."

This rule is non-negotiable. Paid traffic's first 1.5 seconds on the LP confirms or breaks the promise the ad made. Break it and bounce rate hits 70%+.

## The hero block — five elements

The hero is the entire page on mobile (60–70% of paid traffic). It must include exactly five things, in this hierarchy:

### 1. Headline (echoes ad hook)

- ≤80 chars; designs for 60-character mobile readability
- Word-for-word match to ad hook OR tighter version of same phrase
- One sentence; one claim; no "and"

### 2. Subhead (≤120 chars)

The "okay, but how?" line. Names the mechanism, the proof, or the specific population.

| Hero headline | Weak subhead | Strong subhead |
|---|---|---|
| "Save 47 minutes per controller. Every week." | "We help finance teams." | "By auto-generating your monthly close packet from your existing accounting tools." |
| "Catch model drift before it becomes a customer ticket." | "ML observability." | "Drop-in OpenTelemetry plus model-quality monitoring in one stack." |
| "Stop hiring agencies that ship slide decks." | "We're different." | "Hire one that ships work. $3k diagnostics. 2-week turnaround. Real recommendations." |

The subhead earns the user's continued attention past the hero. If it's vague, scroll-50 craters.

### 3. Primary CTA (verb + outcome)

- Verb that matches what the audience is mentally agreeing to
- Outcome implied or explicit
- One CTA above the fold; not three

| Weak CTA | Strong CTA |
|---|---|
| "Learn more" | "Start your free trial" |
| "Get started" | "Get the diagnostic — $3k" |
| "Click here" | "Book your 30-min review" |
| "Sign up" | "Catch drift in your stack" |

### 4. CTA destination (with full UTM scheme)

The link the CTA points to. Must carry UTMs from the ad through to the form / event. `/ops` enforces the UTM scheme; `/copy` just makes sure the CTA copy implies the destination matches expectation.

### 5. Hero visual (specced by `/creative`)

Words don't render this; `/creative` directs. But `/copy` writes the *alt-text* and any *overlay text* that appears on the visual.

## The section sequence below the hero

Standard order:

```
1. Hero (above)
2. Above-fold proof (one type, see below)
3. Problem/outcome restatement (1–2 sentences)
4. How it works (3 steps, visual)
5. Social proof depth (testimonials, logo wall, case study link)
6. Objection-handling FAQ (top 3 objections from audience-doc)
7. Closing CTA (same primary CTA, with secondary "Book demo" if relevant)
```

I write the copy for each section; `/creative` directs the visual.

## Above-fold proof — pick ONE type

Three options. Pick exactly one. Mixing all three reads as "we're trying everything" and dilutes each.

### Type A: Customer logos (3–5)

**When**: B2B; brand recognition matters; you have logos that the audience trusts.
**Copy framing**: usually no copy at all — just the logos. Optionally a 4-word context line above ("Trusted by 1,200+ finance teams").

### Type B: Numeric stat (1)

**When**: you have a single, specific, defensible stat that captures the outcome.
**Copy framing**: the stat as a statement, with a small footnote/source.

> "47 minutes saved per controller per week
> *avg, n=120 paid customers, Q1 2026*"

The stat must be substantiated. Made-up stats erode trust within 3 seconds.

### Type C: Testimonial (1)

**When**: you have a strong customer voice that captures the outcome better than your own copy can.
**Copy framing**: 2–3 sentence quote, with full attribution (name, role, company).

> "Lattice Brief saved me 90 minutes a week and I haven't missed an investor update since switching."
> — Sarah Chen, Founder, Plumb (Series A)

Avoid "anonymous founder" testimonials — reads as fake. Either use real attribution or skip the testimonial and use Type B.

## How-it-works section — three steps

The mechanism. How does the product deliver the outcome the headline promised?

Pattern: 3 steps, each ≤20 words, paired with `/creative`'s visual.

```
1. Connect your accounting tools (Stripe, QuickBooks, Xero)
2. Pick the metrics that matter to your investors
3. Lattice Brief drafts your monthly update — you edit and send
```

### Anti-patterns
- ❌ More than 3 steps (audience won't read 5 numbered items)
- ❌ Steps that describe features instead of the path ("AI-powered drafting", "Real-time sync") — that's a feature list, not a how-it-works
- ❌ Steps that don't connect to the outcome in the headline
- ❌ Step 1 that's "Sign up for an account" — implicit; don't waste the step

## Social proof depth section

Below how-it-works. More room than the above-fold proof.

Options:
- 2–3 testimonials (longer than above-fold; full quotes with attribution)
- Logo wall (10–20 logos in a grid)
- Case study link with a one-paragraph summary
- Numeric proof points stacked ("Trusted by 1,247 SMB controllers / 47 minutes avg saved per week / 4.8/5 G2 rating")

Pick what's strongest. Usually 1 testimonial + 1 logo wall + 1 stat works for B2B; 2 testimonials + Trustpilot rating works for D2C.

## Objection-handling FAQ — top 3 objections only

Pull from the audience-doc's "objections" list. Address the top 3. Honestly.

Pattern:

```
**Common questions**

**"Won't this miss the nuance my investors care about?"**
Lattice Brief drafts; you edit. The output is a starting draft, not a final email. Most users edit 10–20% before sending.

**"Is my financial data secure?"**
Read-only OAuth connections to your accounting tools. We never store account credentials. SOC 2 Type II in progress; we'll share the report on request.

**"What if I'm not raising right now?"**
Lattice Brief works for any monthly investor communication — board updates, KPI dashboards, off-cycle check-ins. Most users aren't actively raising.
```

### Anti-patterns
- ❌ FAQs that dodge the real objections (audience can tell)
- ❌ FAQs about pricing when pricing is on a separate page (handle with link)
- ❌ Marketing-speak answers ("Lattice Brief leverages best-in-class security…")
- ❌ More than 3–4 FAQs above the closing CTA (audience drops off)

## Closing CTA section

Same primary CTA as the hero. Sometimes paired with a secondary CTA for users who aren't ready to convert (e.g., "Book a 30-min walkthrough" alongside "Start free trial").

Closing copy:
- Headline: one sentence — the main outcome again, said slightly differently
- Subhead: ≤80 chars — addresses the "what's next" or "why now"
- CTA buttons: primary + optional secondary

```
**Ready to give 90 minutes back to your week?**

Free for the first 30 days. No card required.

[ Start free trial → ]      [ Book a walkthrough ]
```

## Length — the discipline

For paid traffic LPs: **shorter wins.** Default targets:

- Hero: 1 screen height on mobile
- Total page: 5–7 screens of mobile scroll (rough = 1500–2500 pixels of content)
- Total word count: 400–800 words (excludes nav / footer / FAQ collapse-content)

Long-form sales pages (3000+ words) work for high-ACV consultative B2B *with warm traffic*. They almost never work for cold paid traffic. If user pushes for long-form on paid, push back: "What's the cold-conversion rate target? Long-form rarely beats 2% on cold paid in your category."

## CTA copy — verb + outcome

CTAs across the page (hero + closing) should be specific to the outcome the ad promised.

| Generic (avoid) | Specific (use) |
|---|---|
| "Learn more" | "See how it works" |
| "Get started" | "Start your 30-day trial" |
| "Sign up" | "Generate your first update" |
| "Try it free" | "Try free for 30 days" |
| "Book a demo" | "Book a 30-min walkthrough" |

The CTA copy should make the audience's mental "what am I about to do" answer in plain English.

## Form copy (when there's a form on the LP)

If a form is on the LP (per `/digital`'s decision):

### Form headline
≤8 words. Reaffirms the action. "Tell us about your stack" / "Request your audit" / "Reserve your slot" — not "Sign up" (already on the page in CTAs).

### Form fields — fewer wins
Order of fields-to-cut-first when reducing form length:
1. Phone number (kills CVR ~30%)
2. Company size (often inferrable)
3. Address / role / industry (collect post-signup)

Default minimum-viable form for paid traffic:
- Email (mandatory)
- Company name (only if used for personalization or sales routing)
- One qualifying question (only if sales needs it before responding)

### Submit button copy
Match the CTA verb. "Get the diagnostic" / "Start trial" / "Request review." Never "Submit" (cold, generic).

### Privacy / disclaimer
Below the submit button, ≤30 chars: "We never share your email." or "Privacy policy →"

## Anti-patterns — what kills paid LP CVR

- ❌ Generic homepage as paid LP — message congruence broken
- ❌ Three competing CTAs above the fold ("Sign up" + "Book demo" + "Watch video")
- ❌ Hero headline as a question ("Tired of slow finance tools?") — pandering rhetorical
- ❌ Long body copy above the fold (audience won't read; use subhead instead)
- ❌ Logo soup with no testimonial or stat (decorative, not convincing)
- ❌ FAQ that dodges the real objections from audience-doc
- ❌ "Trusted by" with logos the audience doesn't recognize
- ❌ Stats without sources (audience checks; trust drops)
- ❌ Body copy in passive voice ("Our platform was designed to be…")
- ❌ Buzzword-heavy ("revolutionize", "leverage", "transform", "unlock") — even one in the hero kills cold-traffic CVR

## Reading the LP aloud

After writing, I read the entire page aloud start-to-finish. Failure modes the audio catches:

- Hero ↔ subhead ↔ CTA cadence break (each fights the others rhythmically)
- Body copy that takes 3 minutes to read aloud (audience won't dwell that long; cut)
- Section transitions that don't track ("how it works" ends; "social proof" begins; the connective tissue is missing)
- CTA verbs that don't match the action the audience is taking ("Learn more" when the click goes to a form)

If I can't read the page aloud in 90 seconds and have it land coherently, the page is too long or the cadence is broken.

## Hand-off to `/digital` and `/creative`

After writing:

```markdown
## LP Body Copy — {campaign-slug}

**Brief reference:** artifacts/ads/landing-briefs/{slug}.md
**Ad-hook source:** {hook from creative deck}
**Message-congruence check:** ✓ (LP headline matches ad hook word-for-word)

### Hero
- Headline: "<text>"
- Subhead: "<text>"
- Primary CTA: "<text>" → /<destination>?utm_*

### Above-fold proof
- Type: <Logos | Stat | Testimonial>
- Content: <as written>

### Section copy [each section as Markdown blocks per pattern above]

### Form (if any)
- Headline: "<text>"
- Fields: [list]
- Submit copy: "<text>"
- Privacy disclaimer: "<text>"

### Closing CTA
[as written]

### Word count: <N> (target: 400–800)
### Voice check: ✓ matches cmo-memory/voice.md
```

`/creative` lays out the visual; `/digital` ships the page; `/ops` wires the tracking.
