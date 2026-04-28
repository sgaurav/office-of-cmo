# Office of CMO

> An opinionated stack for marketing leaders. Turn Claude Code into a virtual marketing team.

Office of CMO is a skill pack for [Claude Code](https://docs.claude.com/en/docs/claude-code) (and other AI coding agents) that gives you specialist marketers as slash commands — a CMO, a VP of Performance Marketing, a Creative Director, an Analytics Lead, and more — composed into a clean **Strategy → Plan → Create → Launch → Measure → Optimize → Reflect** sprint.

Inspired by [gstack](https://github.com/garrytan/gstack). Each skill is sharp, role-shaped, and writes a hand-off artifact the next phase reads automatically.

## Status

**v0.1.0 — Phase 1: Ads.** The ads vertical is the first to ship end-to-end. Subsequent phases (Content/SEO, Lifecycle, Brand, CRO, Analytics, Launches, Growth, RevOps, Pricing) follow the same shape.

## The CMO Sprint

```
Strategy → Plan → Create → Launch → Measure → Optimize → Reflect
   CMO    Perf Lead  Creative   Trafficker  Analytics  Perf Lead   CMO
```

Each phase is a slash command run by the right specialist. Outputs from one phase are the inputs to the next, persisted as Markdown artifacts under `artifacts/<vertical>/`.

## Phase 1 Skills (Ads)

| Phase | Slash command | Specialist | Output |
|---|---|---|---|
| Foundation | `/cmo-context`, `/cmo-memory`, `/ads-context` | — | shared memory |
| Strategy | `/ads-strategy` | CMO | `ads-strategy-doc.md` |
| Strategy | `/ads-audience-research` | Audience Insights Lead | `audience-doc.md` |
| Strategy | `/ads-competitor-scan` | Competitive Intel | `competitor-creative-report.md` |
| Plan | `/ads-channel-plan` | VP Performance Marketing | `channel-plan.md` |
| Plan | `/ads-budget-plan` | VP Performance Marketing | `budget-plan.md` |
| Plan | `/ads-measurement-plan` | Analytics Lead | `measurement-plan.md`, `tagging-spec.md` |
| Create | `/ads-creative-brief` | Creative Director | `creative-briefs/{slug}.md` |
| Create | `/ads-creative-generate` | Senior Copywriter + Creative Director | `creative-decks/{slug}.md` |
| Create | `/ads-landing-brief` | Conversion Strategist | `landing-briefs/{slug}.md` |
| Launch | `/ads-pre-launch-check` | Ads Trafficker | `pre-launch-checks/{date}.md` |
| Launch | `/ads-platform-setup` | Ads Trafficker | `platform-setup-log.md` |
| Measure | `/ads-performance-review` | Analytics Lead | `reviews/{date}-{cadence}.md` |
| Measure | `/ads-attribution-audit` | Analytics Lead | `attribution-audit-{month}.md` |
| Optimize | `/ads-iterate` | VP Performance Marketing | `iterations/{date}.md` |
| Reflect | `/ads-retro` | CMO | `retros/{period}.md` |
| Utility | `/ads-compliance-check` | Compliance Reviewer | `compliance/{date}.md` |

## Install

```sh
git clone --depth 1 https://github.com/<your-username>/office-of-cmo.git ~/.claude/skills/office-of-cmo
cd ~/.claude/skills/office-of-cmo && ./setup
```

`./setup` auto-detects your AI coding host (Claude Code, Codex, Cursor) and installs to the right location. Pass `--prefix` if you want commands namespaced (`/ocmo-ads-strategy` instead of `/ads-strategy`).

After install, add an Office of CMO section to your project's `CLAUDE.md` listing the available skills (see [`CLAUDE.md`](CLAUDE.md) in this repo).

## Philosophy

See [`ETHOS.md`](ETHOS.md). Short version: most marketing software optimizes for "more dashboards." We optimize for **fewer, sharper decisions**. Every skill ends in an artifact a human can read in five minutes. Every artifact is a real input to the next phase. No skill produces a slide deck.

## Roadmap

| Phase | Vertical | Status |
|---|---|---|
| 1 | Ads | In progress |
| 2 | Content & SEO | Planned |
| 3 | Lifecycle (Email/CRM/Onboarding) | Planned |
| 4 | Brand & Positioning | Planned |
| 5 | Conversion (CRO) | Planned |
| 6 | Analytics & Attribution | Planned |
| 7 | Launches & GTM | Planned |
| 8 | Growth Loops & Community | Planned |
| 9 | Sales Alignment & RevOps | Planned |
| 10 | Pricing & Packaging | Planned |

## License

MIT.
