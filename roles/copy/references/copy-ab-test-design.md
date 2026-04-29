# Copy A/B Test Design

How `/copy` designs tests that produce real signal. Not the test infrastructure (that's `/digital` + `/ops`); the test *design* — what to vary, how many variants, what would settle the question.

## The single biggest discipline

**One variable per test.** If you change the headline AND the CTA AND the hero image, and CTR shifts, you don't know which change drove it. Discipline means accepting slower learning for actually-useful learning.

Bad test:
- Variant A: "Save 47 minutes" + button "Start free trial" + hero photo of person at desk
- Variant B: "Cut your week" + button "Try it now" + hero illustration of clock

Good test:
- Variant A: "Save 47 minutes per week" + button "Start free trial" + hero photo
- Variant B: "Cut your work week by 47 minutes" + button "Start free trial" + hero photo

Same CTA, same hero, different headline. *Now* if CTR shifts, the headline did it.

## What to test (priority order)

For paid LP and ad copy at sub-$50k/month spend, the priority order:

### Priority 1: Headline

The single biggest CVR mover. Test 2–3 variants per quarter.

Test types:
- **Framework swap**: PAS-headline vs. BAB-headline vs. Direct-Benefit-headline
- **Specificity dial**: same claim, more vs. less specific ("Save time" vs. "Save 47 min" vs. "Save 47 min per controller per week")
- **Length contrast**: short punchy vs. longer informative

### Priority 2: CTA copy

Verbs change behavior. Test 2 variants.

Test types:
- **Verb specificity**: "Get started" vs. "Start your free trial"
- **Outcome inclusion**: "Sign up" vs. "Generate your first invoice in 4 minutes"

### Priority 3: Above-fold proof type

Tests audience receptivity to different evidence types. Test 2 variants.

Test types:
- Logos vs. stat
- Stat vs. testimonial
- Testimonial vs. logos

(Not all three at once — one at a time.)

### Priority 4: Hero visual / format

Crosses into `/creative`'s scope but copy-side decisions matter:
- Photo of person vs. product UI screenshot
- Text-only typographic hero vs. visual hero

### Priority 5: Form length

If the LP has a form: test fewer fields vs. more. Almost always: fewer wins on cold paid traffic.

### Lower priority — usually not worth testing on small budgets

- Button color
- Specific testimonial choice
- Footer layout
- Microcopy on form labels

These move CVR by 2–5% at most, and at sub-$50k/month spend you don't have the volume to detect changes that small reliably.

## Sample size — what's needed to read a test

The hard math:

To detect a 20% lift in CVR with 95% confidence, you typically need:

| Baseline CVR | Conversions per variant needed |
|---|---|
| 1% | ~1,000 |
| 2% | ~500 |
| 5% | ~200 |
| 10% | ~100 |

For paid LP testing at typical B2B CVR (3–6%), you need 200–500 conversions per variant for a clean read. At $200 CPA, that's $40k–100k per variant per test.

Most sub-$50k/month programs **don't have the volume** for clean A/B testing. What that means in practice:

### When you don't have volume

Three options:

1. **Don't A/B test; do A/B observe.** Run two variants. After 2 weeks or 50 conversions per variant (whichever first), pick the one with the higher leading indicator (CTR / scroll-50 / hero-CTA-click) and ship. Tag the result `[directional, n insufficient for stat-sig]`. Acknowledge you may be wrong; revisit if the call seems off.

2. **Test on leading indicators, not lagging conversions.** Use CTR, scroll-50, hero-CTA-click — they fire at higher volume than conversions. You can call a test on CTR with n=100–200 sessions per variant, vs. the hundreds of conversions needed for CVR.

3. **Don't test until you have the volume.** Make the most-defensible call once, ship, optimize on real performance over time. Testing prematurely just adds noise.

The Digital Marketer's `/digital`-side discipline of `30 × target CPA = decision-grade` applies here too: if you can't fund both variants to that level, you're not testing, you're guessing with extra steps.

## Test duration

Even with sufficient volume, run tests for at least:

- **7 days minimum** (covers a full weekly cycle — Tuesday traffic differs from Saturday)
- **One full conversion lag cycle** (if your conversion takes 3 days post-click on average, run for at least 7 days post-launch)

Don't call a test in 48 hours. Even with statistical significance triggered, the early cohort is non-representative.

## Test discipline — write the hypothesis up front

Before launching, write the hypothesis as ONE sentence:

> "Headline B will outperform Headline A on CVR by ≥15% because <reason — specifically, B is more specific / B uses a different framework that better matches audience state / B has stronger message congruence with the ad>."

If you can't write this sentence, you don't have a test, you have a fishing trip. Fishing trips don't produce learning even when they produce numbers.

After the test, the hypothesis is either:
- **Confirmed**: B outperformed by ≥15%; reason ratified; ship B + log learning
- **Disconfirmed**: A held or beat B; reason wrong; ship A + log learning ("specificity didn't matter for this audience because <new hypothesis>")
- **Inconclusive**: results within noise; ship the lower-risk variant and revisit

The disconfirmed outcomes are the most valuable. They contradict assumptions; they sharpen the next test's hypothesis.

## What ships after a test

Whichever variant won, OR both losing — there's always a learning. Log to `cmo-memory/`:

### Log to `cmo-memory/winners.md` when

A specific *pattern* (not just one ad) wins repeatedly. Not "this hook beat that hook"; rather "stat-led hooks consistently beat outcome-led hooks for this audience on this channel."

### Log to `cmo-memory/voice.md` when

A *voice signal* gets confirmed across multiple winning variants. "Founder-POV first-person consistently beats third-person across 3 LP tests in this segment."

### Don't log

- Single-test results without a confirmable pattern
- Test results below decision-grade volume
- Tests that confirmed what we already knew (those don't add evidence; they consume budget)

## Common bad test designs

### The "let's test 8 variants" mistake

8 variants × $50/day budget per variant × 30 days = $12,000 of spend, with each variant getting ~50 conversions — below decision-grade for any pairwise comparison. You've spent $12k to learn nothing readable.

Fix: pick 2 variants. Fund both to decision-grade. Ship the winner. Then test the next dimension on the winner.

### The "let's test our gut against industry benchmarks" mistake

Running a test where one variant is "what we think will work" and the other is "what we read in a Twitter thread someone wrote about Meta best practices in 2023." The two variants aren't testing the same hypothesis — they're testing two unrelated guesses. No learning compounds.

Fix: hypothesis-driven testing. If you don't have a specific hypothesis about which variant should win and why, don't run the test.

### The "we'll just keep testing forever" mistake

Eternal optimization. After 8 tests, the program is still in test mode, no clear winning version of anything has shipped to scale. Spend is fragmented; learning is fragmented.

Fix: at some point, declare the test phase done and SHIP. Use what you've learned. The point of testing is to inform the production version, not to replace it.

### The "test creative AND audience AND budget all at once" mistake

Concurrent variation across multiple dimensions. Numbers move; you don't know which dimension drove it.

Fix: stagger tests. Lock audience and budget; test creative. Once creative is locked, test audience expansion. Once that's locked, test budget scale.

## The only pattern that works at small scale

**The Simple Two-Variant Test.**

1. Pick the highest-impact variable to test (priority order above)
2. Write the hypothesis as one sentence
3. Build two variants — A is your current best; B is the hypothesis-driven alternative
4. Run for at least 7 days; ideally to 200 conversions per variant or until the leading-indicator gap is decisive
5. Pick the winner; log the learning; ship

Don't try to test 8 things at once. Don't test what doesn't matter. Don't test without a hypothesis. The discipline is what separates *learning programs* from *spending programs that produce dashboards*.

## When to push back on user-requested tests

Two probes max, then accept and run.

- ❌ User requests "let's just test all the headline variants you wrote" → push back: "we don't have volume to read 8 variants. Pick the 2 with the strongest hypothesis difference; we'll ship the winner and revisit the others later."
- ❌ User requests testing button color → push back: "lower-priority test; even if we run it, the move is 2–5% of CVR. The same effort on a headline test would move 20–50%."
- ❌ User requests "test everything against the control" → that's not testing, that's optimization-by-vibes. Force them to pick the dimension first.

After two probes, accept and run whatever the user wants. Log the design decision to `cmo-memory/` so the retro can flag if eternal-test mode developed.
