# Email Copy Basics

What `/copy` writes for email at v1.0.0: single emails (welcome, post-signup, transactional update), 3-touch starter sequences, cold-outbound starter sequences. Full lifecycle / multi-step / branching flows belong to a future `/lifecycle` role; I do the starting points.

## Single email — the structure

Every email I write has six elements, in order:

### 1. Subject line (≤50 chars)

The whole email rides on this. If the subject doesn't earn the open, the body doesn't matter.

Three patterns that work:
- **Specific reference**: "your Stripe integration broke last Tuesday" — feels personal even when it's generic
- **Direct value**: "the controller's diagnostic, free for next week"
- **Question**: "should we keep paying for this together?" (personal-feel from a senior voice)

Three patterns that fail:
- ❌ Generic ("Lattice Brief Newsletter — January Edition")
- ❌ Buzzword-stacked ("Unlock the Power of AI-Powered Reporting")
- ❌ Manipulative urgency ("Final reminder!! Don't miss out!!")

### 2. Preview text / preheader (≤90 chars)

The line that shows in inbox preview after the subject. Most senders waste this. Good preheaders extend the subject's promise without repeating it.

```
Subject: your Stripe integration broke last Tuesday
Preheader: it's fixed now. here's what we learned.
```

### 3. Greeting

For founder-led / personal emails: first-name, no comma confusion. "Hi Reema," / "Hey Mona," — natural.

Anti-pattern: "Dear Sir/Madam" or "Hi {first_name}" with a missing token. Personalization tokens that fail are the worst kind of email — feels like spam confirmed.

### 4. Body (≤120 words for cold outbound; ≤200 for warm/post-signup)

Scannable. Short paragraphs (≤3 sentences each). One idea per paragraph.

Pattern for cold outbound:
- **Para 1**: hook — why I'm reaching out *to you specifically*. Reference something concrete: their tweet, their product, their company milestone, their content. If you can't reference something specific, the email isn't ready.
- **Para 2**: the offer / observation — what I have that's relevant to them
- **Para 3**: the ask — one CTA, specific, low-friction

Pattern for post-signup welcome:
- **Para 1**: confirm the action — "thanks for signing up. your trial is live for 30 days."
- **Para 2**: one specific next step — "the 12-minute setup is here: [link]. Most users finish it in their first sitting."
- **Para 3**: human element — "I'm Mona, the founder. Reply to this email if anything's confusing — I read every reply."

### 5. CTA (one per email — never two)

Match the body's promise. Verb + outcome. Single button or single inline link, not both.

```
[ Book the 30-min review → ]
```

Anti-patterns:
- ❌ Two CTAs — splits the audience's decision; CTR drops
- ❌ "Click here to learn more" — generic
- ❌ Multiple inline links across the email all going different places

### 6. Signature

For founder-led: name, role, link to one thing (LinkedIn / Twitter / a recent post). Not a five-line corporate signature with phone numbers, fax numbers, and brand-trademarked tagline.

```
— Mona
Founder, Pocket Pulse
mona.bsky.social
```

## 3-touch cold-outbound sequence

When `/copy` writes cold outbound for a user (in stub form, max 3 emails), the structure is:

### Email 1 — initial reach

- Subject ≤50 chars; references something concrete about the recipient
- Body ≤120 words
- Single CTA — usually "30 min next week?" or "got 5 minutes for a quick question?"
- No "follow-up coming if I don't hear back" — that's a sales-cadence threat that reads weak

### Email 2 — bump (3–5 days later if no reply)

- Subject: "re: <original subject>" OR "small thing on <topic>"
- Body ≤80 words. Add a NEW value-add — a piece of data, a customer reference, an observation. **Never just "bumping this up"** — that's spam.
- Same CTA as Email 1 OR a smaller CTA ("not 30 min — just a 5-min question")

### Email 3 — final touch (5–7 days after #2)

- Subject: "last note from me on <topic>"
- Body ≤60 words. Set the expectation: "this is my last touch on this for now. If timing changes, my line is open."
- No CTA OR a very low-friction CTA ("if you're curious, here's the writeup: [link]")
- Optionally: an offer to refer them to someone else if it's not a fit

After Email 3, no further outbound on the same thread for 90+ days. Pestering kills brand more than it converts.

## Post-signup welcome email

The single most-read email a brand sends. Most brands waste it.

Pattern:
- Subject: "you're in — let's keep this short" (or similar; conversational)
- Body para 1: confirm the trial / signup is live; specific dates ("through Feb 12")
- Body para 2: ONE specific next step the user should take in the first sitting (≤15 min). NOT a feature tour.
- Body para 3: human element — founder's name; an offer to reply with questions; a real signature.

Anti-patterns:
- ❌ Five-step "getting started" emails (audience finishes step 1, fatigues, leaves)
- ❌ Marketing-team-written welcomes that read corporate
- ❌ Welcome email that pushes upsell ("upgrade to Pro now")
- ❌ Welcome without a specific next step — just "welcome to the family!"

## Trial-ending nudge email

Sent 3 days before trial expires. The only "marketing-feel" email that works in B2B.

Pattern:
- Subject: "<3 days left> — quick check-in"
- Body para 1: factual reminder of trial end date and what happens after
- Body para 2: ONE specific outcome the user has hit during the trial (pulled from product data) — "in your first 3 weeks, you've generated 4 investor updates"
- Body para 3: explicit offer — extend trial, lock in a paid plan with discount, talk to founder, keep using free tier
- Body para 4: human-element close

The personalization (the specific outcome) is what makes this work. Generic trial-end emails get ignored. Personalized trial-end emails (showing real usage data) convert at 15–30% in B2B.

## Deliverability hygiene basics

I'm a stub on this — full deliverability is `/ops` + a future `/lifecycle`. But the basics every email needs:

- **From address**: real-named, not `noreply@` (kills opens). For founder-led: `mona@pocketpulse.com` not `team@`.
- **Reply-to**: set to a real inbox, not /dev/null. If user replies, they get a response.
- **Plain-text version**: matches HTML; many spam filters check for parity
- **No URL shorteners** (bit.ly etc) — looks like phishing
- **No image-heavy emails for cold** — Gmail's "promotional tab" filtering punishes image-only
- **Single domain in CTAs** — multiple destinations in one email reads as spammy
- **Unsubscribe link** for promotional sends — legally required (CAN-SPAM, GDPR)

I always check these basics before shipping any email; flag for `/ops` if anything is off.

## Voice — same rules as ad copy

Every email runs through the same voice check as any other variant:

1. Banned phrases from `cmo-memory/voice.md` — rewrite
2. Mandatories — first-person, specific, in-voice
3. Read aloud test — does this sound like the founder talking?

Especially in cold outbound: anything that reads as "marketing-team-written" tanks. Cold outbound's whole conceit is "this is from a person reaching out specifically to you." Voice has to deliver on that.

## Anti-patterns I refuse

- ❌ **Cold outbound without a specific reference to the recipient** — generic outbound is spam, not outreach
- ❌ **More than 3 emails in a starter sequence** — past 3, deliverability suffers AND the user reads as desperate. Defer to v0.3+.
- ❌ **Personalization tokens that fail** ("Hi {first_name}") — broken merge tags signal "this email is automated even when it pretends not to be"
- ❌ **Subject lines with !!! or ALL CAPS** — spam-filter triggers + reads as desperate
- ❌ **"Just bumping this in case you missed it"** as the entire body of email 2 — adds zero value; user marks as spam
- ❌ **Multiple CTAs in one email** — splits decision, kills conversion
- ❌ **Image-only emails** — the audience's email client may block; trust drops
- ❌ **Welcome emails that demand the user do 5 things** — the welcome should ask for ONE thing
- ❌ **Selling in a transactional/utility email** ("your password reset" + 3 paragraphs of marketing) — kills trust

## What a stub `/copy` will NOT do at v1.0.0

- Multi-step nurture sequences beyond 3 touches
- Branching flows ("if user clicks X, send Y; if not, send Z")
- Drip campaigns over 30+ days
- Behavioral-trigger emails based on product events
- Win-back / churn sequences
- Post-purchase / upsell sequences

For all of these, I sketch a starter and explicitly flag: "this is the first email of what should be a multi-step sequence; defer the rest to a real lifecycle copywriter or v0.3+ `/lifecycle`."

## Hand-off to `/ops`

When email ships, `/ops` handles:
- DNS / SPF / DKIM / DMARC setup
- ESP integration (Postmark, SendGrid, Mailgun, Resend, Loops)
- Personalization token mapping to product data
- Open / click tracking infrastructure
- Bounce / unsubscribe handling

I write the words; `/ops` makes them deliverable.
