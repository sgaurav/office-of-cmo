#!/usr/bin/env bash
# Helpers for reading/writing workflow artifacts.

ocmo_artifacts_dir() {
  echo "${OCMO_ARTIFACTS_DIR:-./artifacts}"
}

ocmo_ads_artifact() {
  local name="$1"
  echo "$(ocmo_artifacts_dir)/ads/${name}"
}

ocmo_ensure_dir() {
  local p="$1"
  mkdir -p "$(dirname "${p}")"
}

ocmo_artifact_exists() {
  local p="$1"
  [[ -f "${p}" ]]
}
