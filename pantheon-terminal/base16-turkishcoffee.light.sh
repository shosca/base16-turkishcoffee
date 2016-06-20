#!/usr/bin/env bash
# Base16 Turkish Coffee - Pantheon Terminal color scheme install script
# Serkan Hosca
# Charles B Johnson (https://github.com/charlesbjohnson)

SCHEMA="org.pantheon.terminal.settings"

gsettings set "$SCHEMA" background "#fdfbfa"
gsettings set "$SCHEMA" foreground "#4a2a15"
gsettings set "$SCHEMA" palette "#fdfbfa:#9a2c38:#389a2c:#9a8e2c:#2c9a8e:#8e2c9a:#26867c:#c17038:#6f3712:#9a2c38:#389a2c:#9a8e2c:#2c9a8e:#8e2c9a:#26867c:#0a0102"
gsettings set "$SCHEMA" cursor-color "#0a0102"

unset SCHEMA
