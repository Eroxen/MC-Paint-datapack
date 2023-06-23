function mcpaint:block/computer/popup/kill
data modify entity @s data.popup set value {name:"import_overwrite"}
data modify storage mcpaint:calc horizontal_direction set from entity @s data.facing
execute at @s rotated as @s positioned ^ ^ ^0.55 run function mcpaint:block/computer/popup/import_overwrite/summon