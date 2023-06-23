data modify storage mcpaint:calc resolve_text set value '{"nbt":"test","storage":"mcpaint:calc","color":"#109898"}'
data modify storage mcpaint:calc test set value "BBBBBBBBBBBBBBBB"


summon item_display ~ ~ ~ {Tags:["mcpaint.resolve_text"]}
loot replace entity @e[type=minecraft:item_display,tag=mcpaint.resolve_text,distance=..0.1,limit=1] container.0 loot mcpaint:resolve_text
data modify storage mcpaint:calc test set from entity @e[type=minecraft:item_display,tag=mcpaint.resolve_text,distance=..0.1,limit=1] item.tag.display.Name
kill @e[type=minecraft:item_display,tag=mcpaint.resolve_text,distance=..0.1,limit=1]