execute unless data entity @s item.components."minecraft:custom_data".tape_item run return run scoreboard players set #projector.powered mcpaint.calc 0

execute store success score #projector.powered mcpaint.calc unless data entity @s item.components."minecraft:custom_data"{active:1b}
execute store result entity @s item.components."minecraft:custom_data".active byte 1 run scoreboard players get #projector.powered mcpaint.calc
execute store result entity @s item.components."minecraft:custom_model_data".flags[1] byte 1 run scoreboard players get #projector.powered mcpaint.calc

execute if score #projector.powered mcpaint.calc matches 0 run function mcpaint:item/projector/internal/deactivate
execute if score #projector.powered mcpaint.calc matches 1 run function mcpaint:item/projector/internal/activate