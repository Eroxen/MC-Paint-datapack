execute at @s run playsound minecraft:entity.item.pickup block @s

scoreboard players add .new mcpaint.session 1
scoreboard players operation @s mcpaint.session = .new mcpaint.session
tag @s add mcpaint.player.in_session

loot replace entity @e[type=item_display,tag=mcpaint.studio.item_display.brush,distance=..0.1,limit=1] contents loot mcpaint:item/brush
execute store result entity @e[type=item_display,tag=mcpaint.studio.item_display.brush,distance=..0.1,limit=1] item.components.minecraft:custom_data.mcpaint.brush_data.session int 1 run scoreboard players get .new mcpaint.session
item replace entity @s weapon.mainhand from entity @e[type=item_display,tag=mcpaint.studio.item_display.brush,distance=..0.1,limit=1] contents
item replace entity @e[type=item_display,tag=mcpaint.studio.item_display.brush,distance=..0.1,limit=1] contents with air

execute as @e[type=marker,tag=mcpaint.studio.marker,distance=..0.1,limit=1] run function mcpaint:studio/internal/session/start_as_marker