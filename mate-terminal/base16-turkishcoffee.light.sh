#!/usr/bin/env bash
# Base16 Turkish Coffee - Mate Terminal color scheme install script
# Serkan Hosca

[[ -z "$PROFILE_NAME" ]] && PROFILE_NAME="Base 16 Turkish Coffee Light"
[[ -z "$PROFILE_SLUG" ]] && PROFILE_SLUG="base-16-turkishcoffee-light"
[[ -z "$DCONFTOOL" ]] && DCONFTOOL=dconf
[[ -z "$BASE_KEY" ]] && BASE_KEY=/org/mate/terminal/profiles

PROFILE_KEY="$BASE_KEY/$PROFILE_SLUG"

dset() {
  local key="$1"; shift
  local val="$1"; shift

  "$DCONFTOOL" write "$PROFILE_KEY/$key" "$val"
}

# Because gconftool doesn't have "append"
glist_append() {
  local key="$1"; shift
  local val="$1"; shift

  local entries="$(
    {
      "$DCONFTOOL" read "$key" | tr -d '[]' | tr , "\n" | fgrep -v "$val"
      echo "'$val'"
    } | head -c-1 | tr "\n" ,
  )"

  "$DCONFTOOL" write "$key" "[$entries]"
}

# Append the Base16 profile to the profile list
glist_append /org/mate/terminal/global/profile-list "$PROFILE_SLUG"

dset visible-name "'$PROFILE_NAME'"
dset palette "'#fdfbfa:#9a2c38:#389a2c:#9a8e2c:#2c9a8e:#8e2c9a:#26867c:#c17038:#6f3712:#9a2c38:#389a2c:#9a8e2c:#2c9a8e:#8e2c9a:#26867c:#0a0102'"
dset background-color "'#fdfbfa'"
dset foreground-color "'#4a2a15'"
dset bold-color "'#4a2a15'"
dset bold-color-same-as-fg "true"
dset use-theme-colors "false"
dset use-theme-background "false"
