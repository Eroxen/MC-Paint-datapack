execute if score @s mcpaint.reload matches 3.. run return run scoreboard players remove @s mcpaint.reload 1
execute if score @s mcpaint.reload matches 2 run return run function mcpaint:util/reload_text_displays/internal/reset

execute unless predicate mcpaint:permission/reload_text_displays run return run function mcpaint:util/reload_text_displays/internal/reset_permission

execute store result score #util.reload.count mcpaint.calc run tag @e[type=text_display,tag=mcpaint.entity.text_display.reload,tag=!mcpaint.entity.text_display.reload.queue,distance=..64,limit=100,sort=nearest] add mcpaint.entity.text_display.reload.queue
execute if score #util.reload.count mcpaint.calc matches 0 run return run function mcpaint:util/reload_text_displays/internal/reset_fail
tellraw @s {"translate":"mcpaint.message.reload_text_displays.queue","with":[{"score":{"name": "#util.reload.count","objective": "mcpaint.calc"}}]}

execute summon marker run function mcpaint:util/reload_text_displays/internal/init
scoreboard players set @s mcpaint.reload 2
scoreboard players operation @s mcpaint.reload += #util.reload.count mcpaint.calc