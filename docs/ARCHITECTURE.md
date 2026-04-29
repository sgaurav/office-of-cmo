# Architecture

Office of CMO is three layers: roles, references, memory.

```
┌──────────────────────────────────────────────────────────┐
│  Roles               roles/<role>/SKILL.md               │  one persona per role
├──────────────────────────────────────────────────────────┤
│  References          roles/<role>/references/*.md        │  procedures, frameworks, playbooks
├──────────────────────────────────────────────────────────┤
│  Memory              cmo-memory/*.md                     │  persistent state across sessions
└──────────────────────────────────────────────────────────┘
```

## Roles

Each role is a single SKILL.md defining a persona — who they are, what they own, what they refuse, how they think, how they hand off.

The SKILL.md is **the persona**, not a procedure. It tells the role how to act; the references library tells them how to do specific things.

### Role anatomy

```
roles/<role>/
├── SKILL.md             # the persona; one file
├── references/          # procedures, frameworks, playbooks (only /digital has this in v0.2)
└── TODO.md              # deferred channels/disciplines (where applicable)
```

### Role frontmatter

```yaml
---
name: <role-slug>           # the slash command
preamble-tier: <1-4>
version: 0.2.0
description: |
  <One paragraph: who they are, what they own, when to call them.
  Ends with: "(office-of-cmo)">
allowed-tools: [...]
triggers:
  - <phrases that auto-route to this role>
specialist: <Display Name>
seniority: <Senior IC | Manager | Executive>
status: <implicit-full | stub>
---
```

`preamble-tier` controls how much of the bootstrap preamble runs (host detection, plan-mode safety, memory load). Tier 1 = full preamble (CMO, Digital); Tier 2 = lighter (stubs and utilities).

## References

The procedural/factual content roles consult.

In v0.2, only `/digital` has a real references library because it's the deeply-built role. The library contains:

- **Channel playbooks** (8): one per ad channel
- **Cross-channel disciplines** (5): strategy frameworks, kill & scale criteria, ABM, CRO, retargeting & 1P data
- **Tactical references** (~10): account structures, naming, benchmarks, copy frameworks, character limits, visual prompts, claim words, platform policies, competitor research, segment templates

In v0.3, each stub graduates and gets its own references library.

References are NOT auto-loaded. The role decides which to consult based on the conversation. They live as Markdown so any model can read them.

## Memory

`cmo-memory/` holds persistent state across sessions:

- **`cmo-context.md`** — base business profile (built by `/cmo` onboarding; refreshed lazily)
- **`icp.md`** — ICP and segment definitions
- **`voice.md`** — brand voice, banned phrases, mandatories
- **`winners.md`** — creatives/angles/audiences that repeatedly outperform
- **`kill-rules.md`** — hard-learned shortcuts that beat default kill thresholds
- **`compliance-notes.md`** — platform-specific learnings
- **`playbook.md`** — patterns confirmed across multiple retros

CRUD via `/cmo-memory`. All roles read; the CMO and the Digital Marketer write most often.

Memory is intentionally **short**. If an entry doesn't compound across multiple sessions, it doesn't belong here. Activity logs and one-off notes stay in `artifacts/` (or just in the conversation).

## Routing (Resolver pattern)

`CLAUDE.md` (and `AGENTS.md` for non-Claude hosts) contains a Resolver block — a flat trigger-to-role mapping. The host invokes the matching role directly when the user's intent is clear; falls back to `/cmo` when ambiguous.

`/cmo` also routes verbally during a conversation by stating the hand-off in one line.

See [`HANDOFFS.md`](HANDOFFS.md) for the role-to-role hand-off matrix.

## Plan-mode safety

When the host is in plan-mode, roles:
- Write only to the plan file and to `artifacts/` (no live external-system writes)
- Defer MCP calls that mutate state (paused campaign edits, budget changes, CRM updates)
- Return a "would-do" summary; live changes happen after plan-mode exits

## Host-agnosticism

Roles are plain Markdown. The `setup` script's only job is to place SKILL.md files at the host's expected path. `lib/platform-detect.sh` checks for available MCPs at runtime; roles branch on those, not on host identity.

Supported hosts: Claude Code (default), OpenAI Codex, Cursor.

## Why a flat role list (no role calling role programmatically)

Roles route to each other **conversationally** ("pulling in `/copy` for hooks"), not programmatically. We deliberately keep skills as siblings invoked by the user (or by the routing layer), not as functions calling each other.

Reasons:
1. Each conversation step is human-readable
2. The user can pause, redirect, or take over at any point
3. Composition lives in routing rules and hand-off prose, which is editable per-project
4. We avoid the "agent that summons agents that summon agents" debugging hell

## What changed from v0.1 (task-shaped) to v0.2 (role-shaped)

- v0.1: 16 task-SKILLs (`/ads-strategy`, `/ads-channel-plan`, `/ads-iterate`, etc.) + a hard artifact-passing contract
- v0.2: 7 role-SKILLs + conversational hand-offs + shared memory

The v0.1 task content didn't disappear — it became `/digital`'s reference library. The user-facing surface is now small, role-shaped, and forgiving (you don't need to know which task to invoke; you talk to the right person).

See [`ROADMAP.md`](ROADMAP.md) for what's planned in v0.3 and beyond.
