execute as @e[type=marker,tag=mcpaint.studio.marker.has_painter] run data modify entity @s data.painter.in_range set value 0b
execute if entity @a[predicate=mcpaint:painting_mode] run function mcpaint:painting_mode/players_exist
execute if data storage mcpaint:calc {debug_mode:1b} unless entity @a[predicate=mcpaint:painting_mode] if entity @e[type=armor_stand,tag=mcpaint.fake_player,predicate=mcpaint:painting_mode] run function mcpaint:painting_mode/players_exist

execute as @e[type=egg,tag=!mcpaint.tracked_egg] at @s run function mcpaint:egg/begin_track

execute as @e[type=marker,tag=mcpaint.marker.ticking] at @s run function mcpaint:entity/marker/tick

execute if score interaction_detection mcpaint.config matches 1 run function mcpaint:entity/interaction/player_search_tick


scoreboard players remove @a[scores={mcpaint.extended_brush_stroke=1..}] mcpaint.extended_brush_stroke 1
scoreboard players remove @a[scores={mcpaint.pro_brush_cooldown=1..}] mcpaint.pro_brush_cooldown 1
scoreboard players set @a[scores={mcpaint.sneak=1..}] mcpaint.sneak 0

execute as @a unless score @s mcpaint.message matches 0 at @s run function mcpaint:message
scoreboard players add @a[tag=mcpaint.player.message.rp] mcpaint.rp_message_delay 1
execute as @a[tag=mcpaint.player.message.rp,scores={mcpaint.rp_message_delay=200..}] at @s run function mcpaint:rp_message

scoreboard players enable @a mcpaint.reload
execute as @a[scores={mcpaint.reload=1..}] at @s run function mcpaint:trigger/reload
execute as @a[tag=mcpaint.player.reload_text_displays] at @s run function mcpaint:custom_painting/player_reload


scoreboard players enable @a mcpaint.debug
execute as @a[scores={mcpaint.debug=1..}] at @s run function mcpaint:trigger/debug

tag @a[tag=mcpaint.player.using_pro_brush] remove mcpaint.player.using_pro_brush