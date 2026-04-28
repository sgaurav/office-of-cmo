# Architecture

Office of CMO is a flat collection of role-shaped skills that compose into a sprint via shared artifacts.

## Three layers

```
┌──────────────────────────────────────────────────────────┐
│  Skills              <vertical>/<skill-name>/SKILL.md     │  one role, one phase, one output
├──────────────────────────────────────────────────────────┤
│  Artifacts           artifacts/<vertical>/<file>.md       │  hand-off contract between skills
├──────────────────────────────────────────────────────────┤
│  Memory              cmo-memory/<file>.md                 │  persistent state across sessions
└──────────────────────────────────────────────────────────┘
```

## Skill anatomy

Every skill folder contains:
- `SKILL.md` — frontmatter + body, formatted per `SKILL.md.tmpl`
- `references/` — frameworks, tables, checklists referenced by the body
- `evals/` (optional) — input/output fixtures used to validate skill quality
- `artifacts/` (optional) — JSON/Markdown schemas for the artifact this skill writes

## Frontmatter contract

The router (`CLAUDE.md`) and the install script (`setup`) both read frontmatter:
- `name` — the slash command (without prefix)
- `preamble-tier` — controls how much of the bootstrap preamble runs
- `triggers` — phrases that auto-invoke the skill
- `specialist`, `phase` — used by the workflow doc and by `/cmo-memory` to attribute artifacts
- `inputs`, `outputs` — declarative DAG; `setup` validates the chain has no missing nodes

## Artifact contract

Each artifact has a canonical path and schema (see `ARTIFACTS.md`). A downstream skill MUST be able to consume the upstream artifact without re-prompting the user, except for explicit decisions (e.g., "approve this brief?"). Schemas are loose Markdown — the contract is the section headings and required fields, not the prose.

## Memory layer

`cmo-memory/` holds long-lived facts about the user's business:
- `icp.md` — ideal customer profile (built by `/ads-audience-research`, refined by retros)
- `voice.md` — brand voice, banned phrases, mandatories
- `winners.md` — creatives/angles/audiences that have repeatedly outperformed
- `kill-rules.md` — patterns we've learned to kill faster than the strategy doc would
- `compliance-notes.md` — platform-specific learnings (e.g., "Meta rejects X for our category")
- `cmo-context.md` — base business profile from `/cmo-context`

Memory is written by skills and pruned by `/cmo-memory`. Skills read memory before asking the user.

## Plan-mode safety

When the host is in plan-mode, skills:
- Write only to the plan file and to `artifacts/` (no live platform writes)
- Defer MCP tool calls that mutate ad accounts
- Return a "plan applied" summary when plan-mode exits

## Host-agnosticism

Skills are plain Markdown. The `setup` script's only job is to place SKILL.md files at the host's expected path. `lib/platform-detect.sh` checks for available MCPs (Google Ads, Meta, etc.) at runtime; skills branch on those, not on host identity.

## Why a flat skill list (no skill calling skill)

We deliberately keep skills as siblings invoked by the user (or by routing in `CLAUDE.md`), not as functions calling each other. Reasons:
1. Each artifact is a human-readable checkpoint
2. The user can pause/replan between phases
3. Composition lives in `CLAUDE.md` routing, which is editable per-project
4. We avoid the "agent that summons agents that summon agents" debugging hell
