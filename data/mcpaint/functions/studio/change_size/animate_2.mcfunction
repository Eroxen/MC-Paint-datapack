function mcpaint:studio/get_default_data

data modify storage mcpaint:calc EntityData set value {transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f]}}
data modify storage mcpaint:calc EntityData.item set from storage mcpaint:calc studio_data.bg_model
data modify entity @e[type=item_display,tag=mcpaint.studio.item_display.bg,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData
data modify entity @e[type=item_display,tag=mcpaint.studio.item_display.border,distance=..0.1,limit=1] item set from storage mcpaint:calc studio_data.border_model

tag @s remove mcpaint.studio.change_size.2

execute if entity @s[tag=mcpaint.studio.marker.has_painter] run function mcpaint:studio/ui/open