# Platform Policies — Quick Reference

Surface-level checklist of the policies that block most B2B/B2C SaaS ads. Always defer to the platform's full policy docs (linked) for category-specific rules.

## Meta (Facebook + Instagram)

**Full policy:** https://www.facebook.com/policies/ads/

### Common blockers
- **Personal attributes**: don't say "you" + sensitive trait ("Are you 50? Tired of feeling old?")
- **Before/after imagery**: largely banned; especially body, weight, beauty
- **Discrimination**: housing/employment/credit ads have strict targeting limits
- **Sensational content**: shock imagery, exaggerated bodily fluids, etc.
- **Misleading claims**: any claim must match what the LP delivers
- **Prohibited products**: tobacco, weapons, illegal drugs, adult content, etc.
- **Restricted categories** (require approval): alcohol, gambling, financial services, healthcare, social issues/political

### Subtle violations
- Brand mentions: don't use Meta/Facebook/Instagram in ads ("Beat the Facebook algorithm" → rejected)
- Price prominent in image (sometimes flagged)
- "Click here" / "Click below" — outdated, may auto-flag

## Google Ads

**Full policy:** https://support.google.com/adspolicy/

### Common blockers
- **Misleading content**: claims that don't match the LP
- **Healthcare**: many treatment/medication terms restricted; LegitScript certification required for some
- **Financial services**: lending requires verification; crypto requires certification
- **Trademark in ad text**: avoid competitor names in headlines unless on LP
- **LP quality**: redirect chains, malware, intrusive interstitials, broken pages
- **Sensitive categories**: gambling, dating, alcohol, political — country-specific restrictions

### Subtle violations
- Phone numbers in ad text (use call extensions instead)
- Repeated punctuation ("Save!!!" → rejected)
- Capitalization ("FREE TRIAL" → rejected; "Free Trial" OK)
- Special characters / emoji in headlines (some allowed in extensions, not headlines)

## LinkedIn

**Full policy:** https://www.linkedin.com/legal/ads-policy

### Common blockers
- **Personal attribute targeting violations**: targeting on race, religion, sexual orientation, age (with limits), pregnancy status, disability — illegal/restricted
- **"Are you a [protected]?"** framing — auto-rejection
- **Get-rich-quick**: aggressive earnings claims for courses/programs
- **Recruitment claims**: must be honest about role, comp, and employment terms
- **Sensitive industries**: alcohol, gambling, dating — restricted on most personal accounts

### Subtle violations
- Heavy outbound sales tone — LinkedIn favors educational/professional framing
- LP requiring login wall to read — LP quality issue
- Email-collection without clear value exchange — flagged as low-quality

## TikTok

**Full policy:** https://ads.tiktok.com/help/article/advertising-policies-industry-entry

### Common blockers
- **Music licensing**: only commercial-music library; user-generated audio cannot be repurposed for ads
- **Healthcare**: stricter than Meta — many supplement/wellness claims rejected
- **Financial services**: stringent verification
- **Younger audiences**: stricter on ANY ad shown to <18; some categories blocked entirely from minors
- **Sensational / shocking**: lower tolerance than Meta

### Subtle violations
- Static images that look like Instagram ads — rejected; must be native vertical video
- Voiceover-heavy ads with no captions — accessibility / engagement penalty
- Watermarks of competitor platforms (TikTok rejects ads with visible IG/FB logos)

## Account-level risks (apply across platforms)

- **Multi-account violations**: don't run from multiple accounts to circumvent bans
- **Cloaking**: showing different content to crawlers vs. users — instant ban
- **Affiliate / arbitrage** without disclosure
- **Repeat policy violations** triggers account-level review even on unrelated ads

## When in doubt

- Submit a single ad for review first; iterate based on feedback
- Build relationships with platform reps once spend justifies (Meta, Google, LinkedIn all assign reps above $10k–25k/month)
- Document approvals/rejections in `cmo-memory/compliance-notes.md` for pattern-finding
