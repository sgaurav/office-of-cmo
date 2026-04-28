# Contributing to Office of CMO

Thank you for considering a contribution.

## Ground rules

1. **One specialist per skill.** A skill is one role doing one phase. If your PR collapses two roles into one skill, it will be rejected.
2. **Every skill ends in an artifact.** Decision documents only — no status updates, no slide decks, no "comprehensive overview" preambles.
3. **Quantify the kill criteria.** Strategy/budget/iteration skills must demand numbers from the user. No "we'll see" allowances.
4. **Match the SKILL.md.tmpl exactly.** Frontmatter fields are not optional.
5. **Reference, don't restate.** Frameworks and tables go in `references/`; the SKILL.md itself stays scannable.

## Adding a skill to an existing phase

1. Create `<phase>/<skill-name>/SKILL.md` from `SKILL.md.tmpl`
2. Define inputs (which prior artifacts) and outputs (which file you write)
3. Update `docs/ARTIFACTS.md` with your output's schema
4. Add the skill to `CLAUDE.md` under the right phase
5. Add at least one eval at `<skill-name>/evals/<scenario>.md` (input → expected output shape)
6. Bump `VERSION` per semver

## Adding a new phase / vertical

1. Open an issue first; phases are intentionally scoped and sequenced
2. Phase must follow the Strategy → Plan → Create → Launch → Measure → Optimize → Reflect arc, even if some phases collapse for the vertical (e.g., Brand may have no "Launch")
3. Define the vertical's specialist roles in `docs/ROLES.md`
4. Define the vertical's artifact directory in `docs/ARTIFACTS.md`
5. Ship the foundation skill (`<vertical>-context`) first; that PR is reviewable on its own

## Style

- Skill prompts are written in second person ("You are the…"). Direct, terse, opinionated.
- Markdown tables for matrices; numbered steps for procedures; ASCII diagrams for flows
- No emoji in skill bodies; use them in references only if they earn their place
- One sentence per bullet; no bullet should have a sub-bullet sub-bullet sub-bullet

## Reviews

PRs are reviewed against the principles in `ETHOS.md`. The reviewer's job is to ask "would a senior marketer read this and say *yes, that's how I think about it*?" If the answer is no, the skill is not ready.
