execute unless entity @s[tag=mcpaint.studio.marker.has_painter] run data modify storage mcpaint:calc join_studio.studio_willing set value 1b
execute if data storage mcpaint:calc join_studio{player_willing:1b,studio_willing:1b,player_finished:0b,studio_finished:0b} run function mcpaint:studio/gain_painter