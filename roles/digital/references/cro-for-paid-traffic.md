# CRO for Paid Traffic

The Digital Marketer's playbook for landing-page conversion optimization, scoped to paid traffic specifically.

## Why CRO for paid is different

Paid traffic is COLD, expensive, and unforgiving. Versus organic traffic:
- Visitor arrives with no prior context (no earned trust)
- Cost per visitor is real money (you can't "let the page improve over time")
- Message congruence with the ad is non-negotiable
- A 1% CVR lift on paid often beats 5% lift on organic in dollar terms

The Digital Marketer owns CRO **for the LPs paid traffic lands on**. Broader CRO (signup flows, in-product, retention) belongs to a CRO specialist or product team.

## The single biggest leak: message congruence

The ad promised X. The LP delivers Y. Visitor bounces.

**Test before anything else**: does the LP headline echo the ad hook word-for-word (or near)?

- Ad: "Save 47 minutes per controller per week"
- LP headline: "Cut closing time, automatically." → ❌ INCONGRUENT
- LP headline: "Save 47 minutes per controller. Every week." → ✅ CONGRUENT

If the LP doesn't echo the hook, fix that before testing anything else. No amount of A/B testing fixes a broken first impression.

## Hero block — the only thing above the fold matters

The hero is the entire page on mobile (60–70% of paid traffic). It must include:

1. **Headline** that matches the ad hook
2. **Subhead** (≤120 char) explaining the proof or mechanism
3. **Primary CTA** with verb + outcome ("Start free trial")
4. **Hero visual** — product UI, customer photo, or product screenshot (not stock)
5. **Above-fold proof** — ONE of: 3 customer logos, 1 numeric stat, 1 testimonial — pick one, not all

That's it for above-fold. Don't add five competing CTAs.

## Section sequence (mobile-first)

After the hero, in order:

1. Hero (above)
2. Above-fold proof (above)
3. Problem/outcome restatement (1–2 sentences)
4. How it works (3 steps, visual)
5. Social proof depth (testimonials, logo wall, case-study link)
6. Objection handling (FAQ block addressing top 3 objections from audience-doc)
7. Closing CTA (same primary CTA + optional secondary like "Book demo")

Each section has ONE job. Don't cram three jobs into one section.

## What to test (priority order)

### High-impact tests (run first)
1. **Headline** — single biggest CVR mover; test 3–4 variants per quarter
2. **CTA copy** — verbs change behavior ("Start free trial" vs. "Get started" vs. "Try it now")
3. **Above-fold proof type** — logos vs. stat vs. testimonial
4. **Hero visual** — product UI screenshot vs. customer photo vs. illustration

### Medium-impact tests
5. **Form length** (if a form is on-page) — fewer fields almost always wins on paid traffic
6. **Section order** below the fold
7. **FAQ addresses** — replace generic FAQ with the actual top 3 objections from sales calls

### Low-impact tests (don't bother early)
- Button color
- Specific testimonial quote choice
- Footer layout

**Pareto reality**: 80% of CVR lift comes from the top 4 tests. Don't waste cycles on button colors before the headline echoes the ad.

## Form-vs-no-form decision

When the LP includes a form:
- **High-intent paid** (Google Search bottom-funnel): form OK; minimize fields (≤4)
- **Mid-intent paid** (Meta, LinkedIn prospecting): form-first kills CVR; lead with content, form below
- **Low-intent paid** (TikTok, Reddit): no form on first LP; route to a content piece, then a form

Form fields to remove first:
- Phone number (kills CVR ~30%)
- Company size (often inferrable; collect later)
- Address / role / industry (collect post-signup)

Form fields to keep:
- Email (can't avoid)
- Company name (only if you'll actually use it for routing/personalization)
- One qualification question (only if your sales team needs it before responding)

## Copy patterns for paid LPs

### Above-fold copy (the entire LP for many)

- **Headline echoes ad**
- **Subhead** answers "okay, but how?"
- **Bullet list of 3 outcomes** (NOT features) — use specific numbers when possible
- **CTA verb + outcome**

### Body copy

- Lead with the user's problem (in their language)
- Then the outcome (with specifics)
- Then the mechanism (how it works, briefly)
- Then proof (testimonial, stat, customer logo)
- Then objection handling (FAQ format works)
- Then close (CTA again)

### Don'ts

- ❌ Hero headline that's a question ("Is your team productive?")
- ❌ Generic CTA ("Learn More", "Get Started" without specifics)
- ❌ Stock photography of generic teams
- ❌ Buzzwords ("revolutionary", "industry-leading")
- ❌ Testimonials without attribution (name + role + company)
- ❌ Logo wall of customers you barely have

## Tracking events on the LP

Coordinate with `/ops` to fire:

| Event | Fires on | Sent to |
|---|---|---|
| `page_view` | LP load | GA4, Meta CAPI, LinkedIn |
| `hero_cta_clicked` | hero CTA tap | GA4, Meta CAPI |
| `scroll_50` | 50% scroll | GA4 |
| `scroll_75` | 75% scroll | GA4 |
| `signup_started` | form first interaction | GA4, Meta CAPI, LinkedIn |
| `signup_completed` | server-side confirmation | GA4, Meta CAPI (server-side), Google Ads, LinkedIn |

Capture UTMs in events for downstream attribution.

## Diagnosing a bad CVR

When paid traffic isn't converting on the LP, work the funnel top-to-bottom:

1. **Bounce rate >70%**: visitors arrive and leave instantly — message congruence broken
2. **Scroll-50 <30%**: visitors aren't engaging past hero — hero is broken
3. **Scroll-75 high but no CTA click**: visitors read but didn't believe — proof / objection-handling missing
4. **CTA click high but signup_completed low**: form friction or signup process broken
5. **Signup_completed but no `trial_to_paid`**: this is post-LP; out of `/digital`'s scope, route to `/cmo` for product/lifecycle conversation

## Test design (lightweight A/B)

Most paid programs at sub-$50k/month don't have enough traffic for clean A/B tests of LP variants. Pragmatic approach:

- **Two variants max per test** (A vs. B; not A/B/C/D)
- **One change per test** (don't change headline AND CTA AND visual at once — you can't read what won)
- **Run for 2 weeks min** OR until 200+ conversions per variant
- **Significance threshold**: 95% confidence (most calculators); below that, inconclusive

For tighter tests, use a tool like Google Optimize replacement (it's deprecated; use Microsoft Clarity + native CVR comparison, or VWO / Optimizely if budget supports).

## Ad-LP pairs

Match ad creative to LP variants. Don't run 8 ad creatives all to the same LP — at minimum, match LP headlines to ad hook clusters.

Ideal: 1 LP per major ad concept. Practical: 1 LP per ad-set, manually matched.

## When to route to `/copy` or `/creative`

- Need new headline variants → `/copy`
- Need new hero visual concepts → `/creative`
- Major LP redesign with new layout → `/creative` for visual direction; `/copy` for full body copy

The Digital Marketer writes the LP brief (`artifacts/ads/landing-briefs/{slug}.md` if you want a doc); the specialists fill it.

## Common LP mistakes for paid traffic

- ❌ Sending paid traffic to the homepage — never wins on paid
- ❌ "Comparison" Search ads pointed at a generic page — guaranteed waste
- ❌ Paid LP with three above-fold CTAs ("Start free trial" + "Book demo" + "Watch video")
- ❌ Too much content above the fold (paragraphs of text where a headline should live)
- ❌ Slow-loading LP (>2s mobile load) — dies on paid
- ❌ No mobile design — desktop-first thinking on a 70%-mobile channel

## Performance benchmarks

Order-of-magnitude paid LP CVR (signup):

| Vertical | Cold paid LP CVR |
|---|---|
| B2B SaaS (mid-market) | 3–6% |
| B2C SaaS / D2C | 5–15% |
| E-commerce | 1.5–3% |
| Lead-form (high-intent Search) | 8–15% |
| LinkedIn cold paid | 1–3% |
| Meta cold paid | 2–5% |

Below those ranges = either traffic quality or LP is broken; above = you're winning.
