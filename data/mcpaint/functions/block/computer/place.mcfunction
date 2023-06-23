function mcpaint:entity/get_horizontal_direction
function mcpaint:entity/horizontal_direction_to_rotation

execute if data storage mcpaint:calc {horizontal_direction:"north"} run setblock ~ ~ ~ command_block[facing=north]{auto:0b,Command:""}
execute if data storage mcpaint:calc {horizontal_direction:"east"} run setblock ~ ~ ~ command_block[facing=east]{auto:0b,Command:""}
execute if data storage mcpaint:calc {horizontal_direction:"south"} run setblock ~ ~ ~ command_block[facing=south]{auto:0b,Command:""}
execute if data storage mcpaint:calc {horizontal_direction:"west"} run setblock ~ ~ ~ command_block[facing=west]{auto:0b,Command:""}

data modify storage mcpaint:calc EntityData set value {Tags:["mcpaint.computer.marker"],data:{}}
data modify storage mcpaint:calc EntityData.Rotation set from storage mcpaint:calc Rotation
data modify storage mcpaint:calc EntityData.data.facing set from storage mcpaint:calc horizontal_direction
execute align xyz positioned ~0.5 ~0.5 ~0.5 summon marker run data modify entity @s {} merge from storage mcpaint:calc EntityData

execute align xyz positioned ~0.5 ~ ~0.5 summon interaction run function mcpaint:block/computer/internal/place/interaction_data

data modify storage mcpaint:calc EntityData set value {Tags:["mcpaint.computer.item_display","mcpaint.computer.item_display.block"],transformation:{translation:[0f,0f,-0.55f]}}
data modify storage mcpaint:calc EntityData.item set from storage mcpaint:calc custom_models.computer_desktop
execute align xyz positioned ~0.5 ~0.5 ~0.5 rotated as @e[type=marker,tag=mcpaint.computer.marker,distance=..0.1,limit=1] positioned ^ ^ ^0.55 run function mcpaint:block/computer/new_item_display
execute align xyz positioned ~0.5 ~0.5 ~0.5 rotated as @e[type=marker,tag=mcpaint.computer.marker,distance=..0.1,limit=1] positioned ^ ^ ^0.55 run data modify entity @e[type=item_display,tag=mcpaint.computer.item_display.new,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData

execute align xyz positioned ~0.5 ~0.5 ~0.5 as @e[type=marker,tag=mcpaint.computer.marker,distance=..0.1,limit=1] run function mcpaint:block/computer/desktop/open