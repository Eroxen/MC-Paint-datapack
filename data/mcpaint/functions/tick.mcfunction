execute as @a[scores={mcpaint.using_brush=1..}] at @s run function mcpaint:item/brush/api/has_score
execute as @a[tag=mcpaint.player.in_session] at @s run function mcpaint:studio/api/player_in_session_tick

execute as @e[type=egg] at @s positioned ~ ~0.125 ~ if entity @e[type=painting,distance=..8] run function mcpaint:item/egg/api/tick