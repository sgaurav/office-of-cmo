# Concept Critique Rubric

How `/creative` scores proposed concepts. Four dimensions, 1–5 each, total /20. Anything below 14 is a deletion candidate. Below 12 is a hard cut.

## The four dimensions

### 1. Relevance to single-minded message (1–5)

Does this concept actually deliver the brief's one message?

| Score | What it looks like |
|---|---|
| 5 | The concept *can only* mean the single-minded message. There's no ambiguity — anyone who sees it gets the message. |
| 4 | The concept clearly delivers the message; minor reading required to connect the dots. |
| 3 | The message is in there but the concept could plausibly be read as several different claims. |
| 2 | The message is faintly present but the concept could be running for a different brief entirely. |
| 1 | The concept is on-angle but doesn't actually say the single-minded message. Off-target. |

Relevance is the *most-failed dimension* in fan-outs. Concepts drift from the message under their own weight. This score is the discipline check.

### 2. Hook strength (1–5)

Would this earn the scroll-stop / earn-the-5th-second / hold attention through the first decision moment?

| Score | What it looks like |
|---|---|
| 5 | The hook *interrupts*. I'd keep watching even if I didn't know what was being sold. |
| 4 | Strong hook; would hold most of the audience. |
| 3 | Solid hook; works in retargeting / warm contexts but might not earn cold attention. |
| 2 | Hook is conventional. Will be skipped 70%+ of the time on cold prospecting. |
| 1 | No real hook. Opens like an ad. Skipped. |

Test: imagine the concept playing in a real feed scroll, sound off, your thumb hovering. Would you stop? If "maybe", that's a 3. "Yes" is a 4 or 5; "no" is a 1 or 2.

### 3. Differentiation (1–5)

Does this look like something nobody else in the category is running?

| Score | What it looks like |
|---|---|
| 5 | The concept is a category-first. Audience would notice "this isn't an X-category ad." |
| 4 | The concept lives in category whitespace identified in the competitor scan. |
| 3 | The concept is in the category's mainstream. Recognizable but not distinctive. |
| 2 | The concept could plausibly be running by a competitor. Audience can't tell us apart. |
| 1 | The concept is the category's red ocean — what *every* competitor is running right now. |

Reference the competitor scan if available. If 80% of competitor ads in the category are running Outcome with founder-POV, an Outcome + founder-POV concept is automatically a 2 — not because it's bad, but because it's invisible.

### 4. Production feasibility (1–5)

Can this actually be made well at the user's production tier and budget?

| Score | What it looks like |
|---|---|
| 5 | The user can ship this with their existing setup (iPhone, Adobe Express, an existing customer testimonial). No new spend. |
| 4 | Requires modest new spend (UGC creator hire, half-day shoot, one round of motion graphics). Achievable in days. |
| 3 | Requires real production effort — week-of-prep half-day shoot, multiple rounds of motion graphics, custom illustration. |
| 2 | Requires substantial production budget — multi-day shoot, named talent, original animation. Weeks of timeline. |
| 1 | Requires production tier the user can't realistically support (commercial-grade reshoot, original score, named director). |

A concept that scores 5 on Relevance/Hook/Differentiation but 1 on Production Feasibility might be a stretch concept (worth flagging) but never the lead. Production tier matters because **the concept that ships at the wrong production tier dies in feed regardless of how good it is on paper**.

## Total scores and decisions

| Total /20 | Decision |
|---|---|
| 18–20 | Lead concept candidate. Almost always ships. |
| 15–17 | Ship list candidate. Ship if it's complementary to the lead on one of the four-axis-spread dimensions. |
| 13–14 | Cut from ship list unless there's a specific reason (production-tier diversity, retargeting fallback). Note the specific reason. |
| ≤12 | Hard cut. Don't ship. |
| 5/5 across all dimensions | Re-score. First-pass 5/5 across all dimensions is confirmation bias. Find the dimension where the concept is weakest. |

## Worked example — Acme Observability launch

Brief: ML observability for VPs of ML Platform, Outcome angle, "Catch model drift before it becomes a customer ticket"

Concept fan-out:

| Concept | Description | Relevance | Hook strength | Differentiation | Prod feasibility | Total |
|---|---|---|---|---|---|---|
| **A** — VP at standing desk, dashboard glow, sound-off captioned | Subject-led, photographic, in-flow visual | 5 | 4 | 3 | 5 | **17** |
| **B** — Anti-spec: bold typography on near-black, hook is the entire ad | No subject, typographic, contrarian | 4 | 5 | 5 | 5 | **19** |
| **C** — Customer testimonial, real engineer talking head | Subject-led, UGC-feel, social-proof angle | 5 | 3 | 3 | 4 | **15** |
| **D** — Generic "powered by AI" stock-image carousel | On-brand-but-boring | 3 | 2 | 1 | 5 | **11** |
| **E** — Animated explainer, 60s with custom illustration, narrator VO | Stretch — high differentiation, low feasibility for early-PMF budget | 5 | 4 | 5 | 2 | **16** |

Ship list:
- **Lead: B** (19/20) — typographic anti-spec is highest-scoring, lives in category whitespace (no observability competitor runs typography-only)
- **A** (17/20) — subject-led complement; tests whether audience responds to story (VP in flow) or to claim (typographic)
- **C** (15/20) — social-proof variant; complementary to A and B on the proof-element axis (logos vs. testimonial vs. claim-only)

Cut:
- **D** (11/20) — hard cut; differentiation 1, hook strength 2; no reason to test.

Stretch:
- **E** (16/20) — flag as stretch; 60s animated explainer requires production budget user doesn't currently have. If they had it, this would be the lottery-ticket concept with very high differentiation. Recommendation: pass for first launch; revisit if ROAS supports production investment in Q2 refresh.

## How to actually score (tactical)

When scoring a concept, do it in this order:

1. **Read the brief again** — the single-minded message and the angle. (Score Relevance with the brief in front of you.)
2. **Mentally run the concept** at 1.5x speed in real feed conditions, sound off. (Score Hook strength here.)
3. **Pull the competitor scan** (if available). What's everyone running? Where does this concept sit? (Score Differentiation.)
4. **Talk to the user about production constraints**. What tier do they have? What can they ship in 1 week vs. 3 weeks vs. a month? (Score Production Feasibility against their actual context.)

Don't score in isolation. Score against the brief and the user's reality. A concept that's 5/5 in a vacuum but 2/5 production-feasibility for *this* user is a 5/5 fantasy — useless.

## When to override the rubric

Two cases:

1. **The user has a strong intuition that the rubric undervalues a concept.** Worth taking seriously, but require them to articulate which dimension is wrong and why. If their argument is "I just feel it", we trust the rubric. If their argument names a specific axis the rubric missed, update the score.

2. **The rubric scores too uniformly across the fan-out** (everything 16–17). That suggests the rubric's score range is being compressed; one or more dimensions is being scored too generously. Re-score with a sharper Relevance or Differentiation pass.

The rubric is a discipline, not an oracle. It catches obvious problems and forces explicit comparisons. But the call to ship is still a judgment.

## Anti-patterns

- ❌ Scoring 5/5 across all dimensions on first pass — confirmation bias; re-score
- ❌ Skipping the rubric on small fan-outs (3 concepts) — even small fan-outs benefit from the four-axis comparison
- ❌ Letting "production feasibility" eat the score — a concept can be a 2 on production but a stretch concept worth flagging; don't kill it on production alone
- ❌ Counting a typographic concept as "no production needed" — typographic ads still need typographic talent; they're not free
- ❌ Sentimentalizing concepts you wrote — apply the same rubric to your own ideas as to the user's

## Reporting back to `/digital`

Score table goes in the concept-set hand-off (per `concept-fan-out-patterns.md` template). Always include the cut reasons explicitly so `/digital` knows why the ship list is what it is, and so the *next* fan-out can avoid the same dimension's failures.
