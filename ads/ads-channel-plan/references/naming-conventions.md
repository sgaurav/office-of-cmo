# Naming Conventions

A naming scheme that survives campaign churn and feeds clean reporting. Used across `/ads-channel-plan`, `/ads-platform-setup`, and `/ads-performance-review`.

## Universal pattern

```
<channel>_<objective>_<segment>_<phase>_<YYYYMMDD>
```

- `channel`: lowercase platform identifier — `meta`, `google`, `linkedin`, `tiktok`, `reddit`, `x`, `youtube`
- `objective`: `conv` (conversions), `sales`, `leads`, `traffic`, `engagement`, `brand`, `retarget`
- `segment`: kebab-case audience shorthand from audience-doc — `eng-vps`, `smb-ops`, `solo-founders`, `controllers-mid`
- `phase`: `test` or `scale`
- `YYYYMMDD`: launch date for tracking cohorts

### Examples
- `meta_conv_eng-vps_test_20260105`
- `google_search_smb-ops_test_20260105`
- `linkedin_sc_eng-vps_test_20260115`
- `meta_retarget_30d_scale_20260201`

## Ad-set / Ad-group naming

```
<audience-or-keyword-cluster>
```

- Meta ad-sets: `lal-1pct-customers`, `broad-interest-stack`, `retarget-30d`
- Google ad-groups: `<keyword-cluster>` like `category-term-2`, `competitor-comparison`, `branded-modifier`
- LinkedIn campaigns: `<segment>-<format>` like `eng-vps-singleimage`, `eng-vps-video`

## Ad / Asset naming

```
<format>_<hook-id>_<concept-letter>
```

- `video9x16_h3_A` — 9:16 video, hook #3, concept A
- `static1x1_h5_C` — 1:1 static, hook #5, concept C
- `carousel_h2_B` — multi-card carousel, hook #2, concept B

This lets `/ads-performance-review` group performance by hook (which hooks win?) and concept (which formats win?) across audiences.

## Why these formats matter

- **Period bucketing**: the date stamp lets you compare cohorts launched at different times without conflating
- **Segment rollups**: every report can group by segment for cross-channel comparison
- **Hook attribution**: tying every ad to a hook ID (from creative-deck) enables learning which hooks compound — feeds `cmo-memory/winners.md`
- **Phase tagging**: easy to filter test vs. scale spend at any time

## Anti-patterns

- ❌ Names with spaces (`Meta Test 1`) — break URL/UTM consistency
- ❌ Camel/Pascal case (`MetaTest1`) — harder to grep, inconsistent across platforms
- ❌ Names without dates — can't reconstruct launch cohorts
- ❌ Names without segment — cross-channel rollups become impossible
- ❌ Free-form ad names ("Concept that worked last quarter") — kills hook-level analysis

## UTM parameter mapping

Naming convention feeds UTMs cleanly:
- `utm_campaign` = campaign name
- `utm_content` = ad-set / ad-group name
- `utm_term` = ad / asset name (hook + concept)

So a click from `meta_conv_eng-vps_test_20260105 / lal-1pct-customers / video9x16_h3_A` carries:
```
?utm_source=meta&utm_medium=paid_social
 &utm_campaign=meta_conv_eng-vps_test_20260105
 &utm_content=lal-1pct-customers
 &utm_term=video9x16_h3_A
```

Every layer of analysis is now possible without re-tagging.
