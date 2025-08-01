data modify storage mcpaint:calc api.studio.spawn set value {width:1,height:1,facing:"south"}
execute if data entity @s {facing:1b} run data modify storage mcpaint:calc api.studio.spawn.facing set value "west"
execute if data entity @s {facing:2b} run data modify storage mcpaint:calc api.studio.spawn.facing set value "north"
execute if data entity @s {facing:3b} run data modify storage mcpaint:calc api.studio.spawn.facing set value "east"

execute store result storage mcpaint:calc api.studio.spawn.width int 1 run scoreboard players get #width mcpaint.calc
execute store result storage mcpaint:calc api.studio.spawn.height int 1 run scoreboard players get #height mcpaint.calc

execute align xyz positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=mcpaint.studio,distance=..0.1,limit=1] run function mcpaint:studio/api/spawn