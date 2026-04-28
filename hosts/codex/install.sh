#!/usr/bin/env bash
# Install Office of CMO skills into ~/.codex/skills/office-of-cmo/
set -euo pipefail

: "${OCMO_REPO_ROOT:?OCMO_REPO_ROOT must be set by setup}"

TARGET="${HOME}/.codex/skills/office-of-cmo"
mkdir -p "$(dirname "${TARGET}")"

if [[ -L "${TARGET}" || -d "${TARGET}" ]]; then
  if [[ "$(readlink "${TARGET}" 2>/dev/null || true)" != "${OCMO_REPO_ROOT}" ]]; then
    rm -rf "${TARGET}"
    ln -s "${OCMO_REPO_ROOT}" "${TARGET}"
  fi
else
  ln -s "${OCMO_REPO_ROOT}" "${TARGET}"
fi

echo "Linked: ${TARGET} → ${OCMO_REPO_ROOT}"
