#!/usr/bin/env bash
# Detect which ad-platform integrations are available in the current host.
# Skills branch on these flags to choose between MCP-driven flows and CSV-paste flows.

ocmo_has_google_ads() {
  [[ -n "${GOOGLE_ADS_DEVELOPER_TOKEN:-}" ]] && [[ -n "${GOOGLE_ADS_REFRESH_TOKEN:-}" ]]
}

ocmo_has_meta_ads() {
  [[ -n "${META_ADS_ACCESS_TOKEN:-}" ]] && [[ -n "${META_ADS_AD_ACCOUNT_ID:-}" ]]
}

ocmo_has_linkedin_ads() {
  [[ -n "${LINKEDIN_ADS_ACCESS_TOKEN:-}" ]]
}

ocmo_has_tiktok_ads() {
  [[ -n "${TIKTOK_ADS_ACCESS_TOKEN:-}" ]]
}

ocmo_has_ga4() {
  [[ -n "${GA4_PROPERTY_ID:-}" ]] && [[ -n "${GA4_SERVICE_ACCOUNT_PATH:-}" ]]
}

ocmo_platforms_summary() {
  echo "google_ads=$(ocmo_has_google_ads && echo yes || echo no)"
  echo "meta_ads=$(ocmo_has_meta_ads && echo yes || echo no)"
  echo "linkedin_ads=$(ocmo_has_linkedin_ads && echo yes || echo no)"
  echo "tiktok_ads=$(ocmo_has_tiktok_ads && echo yes || echo no)"
  echo "ga4=$(ocmo_has_ga4 && echo yes || echo no)"
}
