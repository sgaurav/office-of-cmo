#!/usr/bin/env bash
# Install Office of CMO skills into ~/.claude/skills/office-of-cmo/
set -euo pipefail

: "${OCMO_REPO_ROOT:?OCMO_REPO_ROOT must be set by setup}"
: "${OCMO_PREFIX:=false}"

TARGET="${HOME}/.claude/skills/office-of-cmo"

mkdir -p "${TARGET}"

# Symlink the repo into ~/.claude/skills so updates are tracked via git pull.
if [[ -L "${TARGET}" || -d "${TARGET}" ]]; then
  if [[ "$(readlink "${TARGET}" 2>/dev/null || true)" != "${OCMO_REPO_ROOT}" ]]; then
    rm -rf "${TARGET}"
    ln -s "${OCMO_REPO_ROOT}" "${TARGET}"
  fi
else
  ln -s "${OCMO_REPO_ROOT}" "${TARGET}"
fi

echo "Linked: ${TARGET} → ${OCMO_REPO_ROOT}"

if [[ "${OCMO_PREFIX}" == "true" ]]; then
  echo "Prefix mode: skills exposed as /ocmo-<name>."
else
  echo "No-prefix mode: skills exposed bare, e.g. /ads-strategy."
fi
