#!/usr/bin/env bash
# Minimal YAML frontmatter parser for SKILL.md files.
# Usage: ocmo_frontmatter_get <file> <key>
# Only reads top-level scalar keys (name, version, specialist, phase, preamble-tier).

ocmo_frontmatter_get() {
  local file="$1"
  local key="$2"
  awk -v key="${key}" '
    /^---$/ { count++; if (count == 2) exit; next }
    count == 1 {
      n = index($0, ":")
      if (n > 0) {
        k = substr($0, 1, n-1)
        v = substr($0, n+1)
        gsub(/^[ \t]+|[ \t]+$/, "", k)
        gsub(/^[ \t]+|[ \t]+$/, "", v)
        gsub(/^"|"$/, "", v)
        if (k == key) { print v; exit }
      }
    }
  ' "${file}"
}

ocmo_frontmatter_list_skills() {
  local repo_root="$1"
  find "${repo_root}" -name "SKILL.md" -not -path "*/.*" | sort
}
