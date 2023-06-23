tag @s add mcpaint.computer.marker.has_active_task
tag @s add mcpaint.marker.ticking

data modify storage mcpaint:calc EntityData set value {Tags:["mcpaint.computer.item_display","mcpaint.computer.item_display.loading"],transformation:{translation:[0f,0f,0.5f]}}
data modify storage mcpaint:calc EntityData.item set from storage mcpaint:calc custom_models.loading
execute rotated as @s positioned ^ ^ ^0.55 run function mcpaint:block/computer/new_item_display
execute rotated as @s positioned ^ ^ ^0.55 run data modify entity @e[type=item_display,tag=mcpaint.computer.item_display.new,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData