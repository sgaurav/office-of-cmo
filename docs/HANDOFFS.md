# Hand-off Matrix

How roles route to each other. This is the contract that makes the team work.

## The hand-off pattern

When a role hits the edge of their scope, they route in **a single line**:

> **Digital Marketer**: "This is more `/copy`'s call beyond hooks — pulling them in."

That's it. The next role takes over; the user doesn't have to invoke a new slash command. Conversations flow like a real team meeting.

## Hand-off matrix

Rows = "from" role; columns = "to" role; cells = trigger conditions.

| from \ to | /cmo | /digital | /creative | /copy | /content | /analyst | /ops |
|---|---|---|---|---|---|---|---|
| **/cmo** | — | paid / channel-tactical | concept work | copy work | blog/SEO/editorial | attribution / measurement | tracking infra |
| **/digital** | strategic mix / kill program / hiring | — | concept gen / art direction | copy variants beyond hooks | paid amplification of organic | attribution audit / holdout design | pixel/CAPI/GTM |
| **/creative** | brand-strategic level | channel-fit / format constraints | — | final copy variants | content for ad creative | — | — |
| **/copy** | strategic voice evolution | channel-fit | concept gen | — | long-form content | — | — |
| **/content** | strategic content mix | paid amplification | content for ad creative | production / writing | — | content performance | technical SEO infra |
| **/analyst** | strategic implications | tactical implications | — | — | content performance | — | tracking infra / event taxonomy |
| **/ops** | strategic re-architecting | channel-specific tag work | — | — | — | measurement requirements | — |

## Common hand-off chains

Some patterns recur. These are the typical role-chains for common requests:

### "We want to start paid from scratch"
```
/cmo (or direct to /digital) → /digital
  (writes strategy, channel plan, picks creative angle)
/digital → /creative
  (briefs concepts and art direction)
/creative → /copy
  (writes hook + body variants)
/digital ← (loops back, finalizes ship list)
/digital → /ops
  (verifies pixel + CAPI + UTM)
/digital → live
```

### "Our CAC is creeping up"
```
/digital
  (diagnoses: spend pacing, frequency, creative decay, audience saturation, LP CVR)
  (assigns root cause: creative / targeting / LP / offer / measurement)

If creative-side: → /creative → /copy → back to /digital
If LP-side: → /digital handles it (CRO is in /digital scope) + maybe /copy
If measurement-side: → /analyst (audit) → /digital
```

### "Our marketing isn't working" (ambiguous)
```
/cmo
  (asks 1-2 clarifying questions: primary objective, what does winning look like, what would tell us this is wrong)
/cmo → routes verbally to the right role
```

### "Set up GA4 conversion import"
```
/ops
  (walks through GA4 → Google Ads import; verifies "Receiving Events")
  (if measurement gaps emerge: → /analyst)
```

### Quarterly retro
```
/cmo
  (rolls up reviews + iterations + attribution audit from the period)
  (memory updates, playbook promotions)
  (implications for next quarter's strategy doc)
  (if cross-role learning: notes for /creative, /copy, /content, /analyst, /ops)
```

## Hand-off principles

1. **One sender, one receiver, one line.** Route once, clearly. Don't loop in three roles at once.
2. **The receiver picks up cold.** Their SKILL.md tells them how to onboard from the conversation context plus `cmo-memory/`.
3. **Don't bounce back.** Once routed, stay routed. The receiver may route forward to a third role, but doesn't kick back to the sender unless explicitly escalating.
4. **The CMO is the only role that handles ambiguous starts.** Every other role assumes the user knows what scope they need.
5. **Memory is the shared substrate.** ICP, voice, winners, kill rules — all roles read/write the same `cmo-memory/`. Hand-offs don't carry state; memory does.

## What hand-offs are NOT

- Not a workflow step ("now we run `/X` next") — they're conversational pivots
- Not an artifact contract — roles share context via `cmo-memory/`, not by passing files
- Not always required — many sessions stay with one role end-to-end
- Not a permission system — every role can read/write `cmo-memory/` and the artifacts directory
