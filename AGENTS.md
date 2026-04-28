# Office of CMO — Agent Routing

This file mirrors `CLAUDE.md` for non-Claude AI coding agents (OpenAI Codex, Cursor agents, Factory Droid, etc.). The routing rules and skill registry are identical; see [`CLAUDE.md`](CLAUDE.md) for the full table.

When this repo's skills are installed via `./setup --host <name>`, the host's equivalent of `CLAUDE.md` (e.g., `~/.codex/AGENTS.md`) is updated to include the same skill registry. Skills are written in plain Markdown with YAML frontmatter and are intended to be host-agnostic.

The only host-specific behavior is in:
- `lib/platform-detect.sh` — detects which ad-platform MCPs are available in the current host
- `hosts/<host>/install.sh` — places skill files at the host's expected path

The Sprint, the role names, the artifact contract, and the kill-criteria opinion travel unchanged across hosts.
