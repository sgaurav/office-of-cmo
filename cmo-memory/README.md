# cmo-memory/

Persistent state across Office of CMO sessions. Skills read from these files first; only ask the user when memory is missing or stale.

| File | Owner skill | Purpose |
|---|---|---|
| `cmo-context.md` | `/cmo-context` | Base business profile |
| `icp.md` | `/ads-audience-research` (writes), retros (refine) | Full ICP with segments |
| `voice.md` | user-edited; retros refine | Brand voice + banned phrases + mandatories |
| `winners.md` | `/ads-performance-review`, `/ads-retro` | Repeatedly outperforming creatives/angles/audiences |
| `kill-rules.md` | `/ads-iterate`, `/ads-retro` | Hard-learned kill thresholds |
| `compliance-notes.md` | `/ads-compliance-check`, retros | Platform-specific learnings |
| `playbook.md` | `/ads-retro` | Validated patterns (≥2 retros confirm) |

CRUD via `/cmo-memory`. Do not edit by hand if you can avoid it — skills assume the schemas in their `SKILL.md` files are intact.

State files (large, ephemeral, generated) live under `cmo-memory/state/` and are gitignored.
