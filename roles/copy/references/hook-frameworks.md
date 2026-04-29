# Hook Frameworks

The nine frameworks `/copy` defaults to when riffing on `/creative`'s hook prompts. Each has a different emotional posture, a different best-fit context, and a different way to fail.

## The full stack

### 1. PAS (Problem-Agitate-Solve)

**Pattern**: state the problem in the audience's language → twist the knife (why it's worse than they admit) → solve (your product, in one line).

**Best for**: solution-aware audiences who already know the problem, just need permission to commit.

**Example**: "Your CSV exports take 40 minutes. The team waits. The CFO asks why. <Tool> exports in 8 seconds."

**Voice**: direct, specific, slightly aggressive. Names the pain bluntly.

**Fails when**: audience isn't problem-aware (they'll wonder why you're "yelling" at them about something they don't have).

### 2. BAB (Before-After-Bridge)

**Pattern**: Before-state → After-state → Bridge (your product is how you get there).

**Best for**: direct-response with clear value math. Especially good when the after-state is *visible* (a dashboard, a Slack thread, a clean inbox).

**Example**: "Before: 3 hours of triage every Monday. After: triage runs itself overnight. Bridge: <tool>'s rules engine."

**Voice**: matter-of-fact, journalistic, structural.

**Fails when**: the after-state is abstract or aspirational without proof.

### 3. AIDA (Attention-Interest-Desire-Action)

**Pattern**: bold opener → relevant detail → outcome they want → clear CTA.

**Best for**: longer-form contexts where you have room to build (LinkedIn Document Ads, YouTube In-Stream, multi-page funnels).

**Example**: opening 30 seconds of a YouTube ad — strong visual hook → industry stat → specific outcome the product enables → "start free trial."

**Voice**: confident, paced, slightly classical.

**Fails when**: rushed into 280 characters or 1.5 seconds — AIDA needs room.

### 4. Hook-Story-Offer (Russell Brunson)

**Pattern**: stop-scrolling line → 2–3 sentence narrative ("I used to <X>, then I realized <Y>") → specific, time-bound, low-friction next step.

**Best for**: founder-POV / personal-narrative angles. Especially strong on Reddit, X, LinkedIn (Document Ads with founder voice).

**Example**: "I have 3 bank accounts. I used to spend Sundays trying to figure out my money. Now it's a 60-second daily check. Try it free for 3 weeks."

**Voice**: first-person, founder, intimate. The "I" is doing real work.

**Fails when**: the founder voice is forced (audiences smell ghostwriting); when the offer is vague at the close.

### 5. Status flip

**Pattern**: "Stop being the team/founder/person that <undesirable status>. Start being the one that <desirable status>."

**Best for**: Comparison and Identity angles. Works when there's a clear "in" and "out" of the audience's tribe.

**Example**: "Stop being the team that finds drift in retrospectives. Start being the team that catches it before deploy."

**Voice**: direct, slightly confrontational, tribal.

**Fails when**: the "in" status is contested or culturally loaded; when the contrast feels like put-down rather than aspiration. Can come off preachy on LinkedIn.

### 6. Contrarian

**Pattern**: "Everyone says <conventional wisdom>. We disagree because <reason>."

**Best for**: category whitespace plays. Only works when the contrarian take is *genuinely defensible* — not just a marketing gesture.

**Example**: "Most ML observability is dashboards with model metrics. Real drift detection is a different shape of problem. Here's how 4 teams built it."

**Voice**: assertive, intellectually rigorous. Has to back the claim.

**Fails when**: the contrarian position is performative ("everyone says X, we say not-X" without reasoning) → audience reads it as posturing.

### 7. Stat-led

**Pattern**: "<specific number> of <segment> <do undesirable thing>. Here's why that's wrong" OR "Here's the playbook from teams that don't."

**Best for**: high-trust contexts; B2B with substantiated stats; thought-leadership angles.

**Example**: "71% of ML teams discover drift from a customer ticket, not a monitor."

**Voice**: factual, journalistic. Feels like an article opening.

**Fails when**: the stat is fabricated, vague ("most teams"), or sourced from a self-interested study (your own marketing piece). Audiences in B2B will check.

### 8. Question-led

**Pattern**: open with a question the audience answers in their head.

**Best for**: Curiosity angle; pre-aware audiences scrolling Meta/TikTok where you need to *interrupt* before you sell.

**Example**: "What if your model drift had its own runbook, the way your latency does?"

**Voice**: conversational, slightly Socratic. Gives the audience agency.

**Fails when**: the question is rhetorical / pandering ("Tired of slow tools?") — audiences read this as a script. The question has to be one a competent operator might genuinely ask themselves.

### 9. Direct benefit

**Pattern**: "<Outcome>, in <timeframe>, for <audience>."

**Best for**: when you have nothing better, OR when the audience is fully bottom-of-funnel and you just need to close. Especially strong for Google Search RSAs.

**Example**: "Closed books in 3 days, not 3 weeks. For controllers at $10–50M ARR companies."

**Voice**: declarative, plain, no rhetoric.

**Fails when**: it's actually weak (you don't have a strong outcome to claim). Direct benefit only works when the benefit is *itself* sharp.

## Voice modifiers (apply after framework)

Once the framework is chosen, apply the brand's voice from `cmo-memory/voice.md`:

- **Direct/dry-witty**: trim every adjective; let the sentence end early
- **Technical**: include the specific noun/term the audience uses internally
- **Warm/founder**: "We" / "I" / "we did this because…"
- **Punchy**: ≤8 words preferred for hooks
- **Editorial**: slightly longer sentences; specific verbs over generic; avoid contractions
- **Conversational**: use contractions; aim for spoken-language rhythm

The framework gives the *structure*; the voice modifier gives the *texture*.

## When to mix frameworks

Generally: don't. One framework per hook. Mixing produces hybrid that lands neither.

Exception: Hook-Story-Offer is itself a tri-section structure that *contains* PAS (in the story) and Direct Benefit (in the offer). When using HSO, the constituent sub-frameworks are fine — they're built in.

## How to riff across frameworks for one brief

`/creative` typically tags 3–5 frameworks per brief. My job is to produce 8 hooks across those tagged frameworks.

Spread:
- 2 hooks in the strongest framework for the angle
- 1–2 hooks in each of 2–3 supporting frameworks
- 1 hook in Direct Benefit (the safe default — always include as backup)

For a brief tagged with PAS / Status flip / Stat-led, my 8 hooks would be:
- 2 PAS variants
- 2 Status flip variants
- 2 Stat-led variants
- 1 Question-led (close cousin of Stat-led, tests the curiosity angle)
- 1 Direct Benefit (safe default)

Never 8 of the same framework. Never frameworks the brief explicitly excluded.

## Anti-patterns

### Adjective stacks (the most common failure)

> "Powerful, intuitive, scalable AI-powered solution"

Useless. Adjectives describe nothing without specifics. Replacement: pick the one adjective that does the most work, then add a number, name, or example.

Bad: "The most powerful and intuitive ML observability platform"
Good: "ML observability that catches drift in 90 seconds, not 9 days"

### "Revolutionize / transform / unlock"

These verbs have no signal. They mean "change" but with extra calories. Just say what changes.

Bad: "Revolutionize how your team handles compliance"
Good: "Cut your SOC 2 prep from 6 weeks to 6 days"

### Curiosity gap with no benefit

> "You won't believe what we did"

Bait. The audience's bullshit detector fires; trust drops 1.5 seconds in. Curiosity *only* works when the gap is small AND the payoff is real.

### Hooks that try to do all the work in one sentence

> "Save 10 hours a week with our AI-powered automation tool that helps your team collaborate"

Three messages, zero punch. Pick the one message; ship one hook.

### Made-up stats

> "73% of teams say <thing>"

If you can't cite the source, the stat is bait. Audiences in B2B will check. Either find a real source, conduct your own research and cite it, or use a non-stat hook.

### "Click here" / "Click below"

Outdated. CTAs read as ads from 2009. Replace with the verb + outcome:

Bad: "Click here to learn more"
Good: "See how it works" / "Try the diagnostic" / "Start your free trial"

### Hooks longer than 12 words

Past 12 words, mobile-feed scroll skips. The discipline isn't elegance, it's surface area: 12 words is what fits on the screen during the 1.5-second decision window.

## Voice across frameworks — calibration check

When riffing for a specific brand, every variant gets checked against the brand's voice signature in `cmo-memory/voice.md`. If a hook violates a banned phrase or skips a mandatory, rewrite before showing.

Common voice violations across frameworks:

| Voice modifier | Common framework violation |
|---|---|
| Direct/dry-witty | Hook-Story-Offer's narrative cadence (too sentimental); AIDA's classical pacing (too formal) |
| Technical | Stat-led with non-technical sources; Question-led that's too colloquial |
| Warm/founder | PAS aggression; Status flip put-down register |
| Punchy | AIDA (too long); Hook-Story-Offer (too long) |
| Editorial | Direct Benefit (too plain); Question-led (too conversational) |

When the brand voice and the framework conflict, voice wins. Pick a different framework.
