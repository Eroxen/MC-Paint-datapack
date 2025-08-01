data modify entity @s item.components."minecraft:custom_data".active set value 0b
data modify entity @s item.components."minecraft:custom_model_data".flags[1] set value 0b
execute positioned ~ ~-0.5 ~ if block ~ ~ ~ minecraft:command_block run data modify block ~ ~ ~ SuccessCount set value 0
function mcpaint:item/projector/internal/deactivate