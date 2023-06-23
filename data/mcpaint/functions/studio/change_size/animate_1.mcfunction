data modify entity @e[type=item_display,tag=mcpaint.studio.item_display.bg,distance=..0.1,limit=1] {} merge from entity @s data.change_size_animation.item_display
data modify entity @e[type=item_display,tag=mcpaint.studio.item_display.border,distance=..0.1,limit=1] item set value {Count:1b,id:"minecraft:air"}
data modify entity @e[type=text_display,tag=mcpaint.studio.text_display,distance=..0.1,limit=1] {} merge from entity @s data.change_size_animation.text_display
data remove entity @s data.change_size_animation

tag @s remove mcpaint.studio.change_size.1
tag @s add mcpaint.studio.change_size.2