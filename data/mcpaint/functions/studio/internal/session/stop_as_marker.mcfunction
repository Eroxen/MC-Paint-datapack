tag @s remove mcpaint.studio.in_session
scoreboard players reset @s mcpaint.session

loot replace entity @e[type=item_display,tag=mcpaint.studio.item_display.brush,distance=..0.1,limit=1] contents loot mcpaint:item/brush

kill @e[type=text_display,tag=mcpaint.studio.ui_element,distance=..0.1]