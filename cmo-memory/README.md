# cmo-memory/

Persistent state across Office of CMO sessions. Roles read from these files first; only ask the user when memory is missing or stale.

| File | Primary writer | Purpose |
|---|---|---|
| `cmo-context.md` | `/cmo` (onboarding) | Base business profile |
| `icp.md` | `/digital`, refined by `/cmo` retros | Full ICP with segments |
| `voice.md` | user-edited; `/cmo` retros refine | Brand voice + banned phrases + mandatories |
| `winners.md` | `/digital`, `/cmo` retros | Repeatedly outperforming creatives/angles/audiences |
| `kill-rules.md` | `/digital`, `/cmo` retros | Hard-learned kill thresholds |
| `compliance-notes.md` | `/digital`, `/analyst`, `/ops` | Platform-specific learnings |
| `playbook.md` | `/cmo` retros | Validated patterns (≥2 retros confirm) |
| `open-homework.md` | any role that sends user away | Pending homework when user was told "come back when X is true" — see `docs/PUSHBACK.md` |

All roles can read; the writer column is who typically appends. CRUD via `/cmo-memory`. Do not edit by hand if you can avoid it — roles assume the schemas in `/cmo-memory`'s SKILL.md are intact.

State files (large, ephemeral, generated) live under `cmo-memory/state/` and are gitignored.
