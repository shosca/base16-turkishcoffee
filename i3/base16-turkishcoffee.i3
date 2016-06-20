# ~/.i3/config
# i3 config template
# Base16 Turkish Coffee by Serkan Hosca
# template by Matt Parnell, @parnmatt

set $base00 #0a0102
set $base01 #140200
set $base02 #4a2a15
set $base03 #6f3712
set $base04 #915025
set $base05 #c17038
set $base06 #ecd1be
set $base07 #fdfbfa
set $base08 #9a2c38
set $base09 #2c6f9a
set $base0A #9a8e2c
set $base0B #389a2c
set $base0C #26867c
set $base0D #2c9a8e
set $base0E #8e2c9a
set $base0F #572c9a

client.focused $base0D $base0D $base00 $base01
client.focused_inactive $base02 $base02 $base03 $base01
client.unfocused $base01 $base01 $base03 $base01
client.urgent $base02 $base08 $base07 $base08

## remember to add the rest of your configuration

bar {
    ## remember to add your favourite status bar, i.e.,
    # status_command i3status
    
        colors {
        separator $base03
        background $base01
        statusline $base05
        focused_workspace $base0C $base0D $base00
        active_workspace $base02 $base02 $base07
        inactive_workspace $base01 $base01 $base03
        urgent_workspace $base08 $base08 $base07
    }
}


