execute as @a[scores={mcpaint.using_brush=1..}] at @s run function mcpaint:item/brush/api/has_score
execute as @a[tag=mcpaint.player.in_session] at @s run function mcpaint:studio/api/player_in_session_tick

execute as @a[scores={mcpaint.reload=1..}] at @s run function mcpaint:util/reload_text_displays/api/trigger
execute as @a[scores={mcpaint.settings=1..}] at @s run function mcpaint:settings/api/trigger_client
execute as @a[scores={mcpaint.credits=1..}] at @s run function mcpaint:credit/api/trigger

execute as @e[type=egg] at @s positioned ~ ~0.125 ~ if entity @e[type=painting,distance=..8] run function mcpaint:item/egg/api/tick