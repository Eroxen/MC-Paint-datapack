data modify storage mcpaint:calc studio_data set value {model:{Count:1b,id:"minecraft:stone"}}
data modify storage mcpaint:calc studio_data.ui set from storage mcpaint:calc default_studio_data.ui

execute if data entity @s data{width:1,height:1} run data modify storage mcpaint:calc studio_data merge from storage mcpaint:calc default_studio_data.sizes.1x1
execute if data entity @s data{width:1,height:2} run data modify storage mcpaint:calc studio_data merge from storage mcpaint:calc default_studio_data.sizes.1x2
execute if data entity @s data{width:1,height:3} run data modify storage mcpaint:calc studio_data merge from storage mcpaint:calc default_studio_data.sizes.1x3
execute if data entity @s data{width:1,height:4} run data modify storage mcpaint:calc studio_data merge from storage mcpaint:calc default_studio_data.sizes.1x4
execute if data entity @s data{width:2,height:1} run data modify storage mcpaint:calc studio_data merge from storage mcpaint:calc default_studio_data.sizes.2x1
execute if data entity @s data{width:2,height:2} run data modify storage mcpaint:calc studio_data merge from storage mcpaint:calc default_studio_data.sizes.2x2
execute if data entity @s data{width:2,height:3} run data modify storage mcpaint:calc studio_data merge from storage mcpaint:calc default_studio_data.sizes.2x3
execute if data entity @s data{width:2,height:4} run data modify storage mcpaint:calc studio_data merge from storage mcpaint:calc default_studio_data.sizes.2x4
execute if data entity @s data{width:3,height:1} run data modify storage mcpaint:calc studio_data merge from storage mcpaint:calc default_studio_data.sizes.3x1
execute if data entity @s data{width:3,height:2} run data modify storage mcpaint:calc studio_data merge from storage mcpaint:calc default_studio_data.sizes.3x2
execute if data entity @s data{width:3,height:3} run data modify storage mcpaint:calc studio_data merge from storage mcpaint:calc default_studio_data.sizes.3x3
execute if data entity @s data{width:3,height:4} run data modify storage mcpaint:calc studio_data merge from storage mcpaint:calc default_studio_data.sizes.3x4
execute if data entity @s data{width:4,height:1} run data modify storage mcpaint:calc studio_data merge from storage mcpaint:calc default_studio_data.sizes.4x1
execute if data entity @s data{width:4,height:2} run data modify storage mcpaint:calc studio_data merge from storage mcpaint:calc default_studio_data.sizes.4x2
execute if data entity @s data{width:4,height:3} run data modify storage mcpaint:calc studio_data merge from storage mcpaint:calc default_studio_data.sizes.4x3
execute if data entity @s data{width:4,height:4} run data modify storage mcpaint:calc studio_data merge from storage mcpaint:calc default_studio_data.sizes.4x4

data modify storage mcpaint:calc studio_data.ui merge from storage mcpaint:calc studio_data.positioned_ui