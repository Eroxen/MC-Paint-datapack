data modify storage mcpaint:calc get_author_name set value {}
summon item_display ~ ~ ~ {Tags:["mcpaint.get_author_name"]}
loot replace entity @e[type=minecraft:item_display,tag=mcpaint.get_author_name,distance=..0.1,limit=1] container.0 loot mcpaint:player_head
data modify storage mcpaint:calc get_author_name.name set from entity @e[type=minecraft:item_display,tag=mcpaint.get_author_name,distance=..0.1,limit=1] item.tag.SkullOwner.Name
kill @e[type=minecraft:item_display,tag=mcpaint.get_author_name,distance=..0.1,limit=1]