# Office of CMO — Routing for non-Claude Hosts

This file mirrors `CLAUDE.md` for hosts that aren't Claude Code (OpenAI Codex CLI, Cursor agents, Factory Droid, etc.). The Resolver, role registry, and hand-off pattern are identical; see [`CLAUDE.md`](CLAUDE.md).

When this repo is installed via `./setup --host <name>`, the host's equivalent of `CLAUDE.md` is updated to include the Resolver block. Skills are plain Markdown with YAML frontmatter and are intended to be host-agnostic.

The only host-specific behavior is in:
- `lib/platform-detect.sh` — detects which ad-platform MCPs are available in the current host
- `hosts/<host>/install.sh` — places skill files at the host's expected path

The roles, the Resolver, the memory layer (`cmo-memory/`), and the hand-off rules travel unchanged across hosts.
