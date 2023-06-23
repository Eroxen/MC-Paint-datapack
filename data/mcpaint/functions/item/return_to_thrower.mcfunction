summon item_display ~ ~ ~ {Tags:["mcpaint.return_to_thrower"]}

data modify entity @e[type=minecraft:item_display,tag=mcpaint.return_to_thrower,distance=..0.1,limit=1] item set from entity @s Item
execute on origin run item replace entity @s weapon.mainhand from entity @e[type=minecraft:item_display,tag=mcpaint.return_to_thrower,distance=..0.1,limit=1] container.0

kill @e[type=minecraft:item_display,tag=mcpaint.return_to_thrower,distance=..0.1,limit=1]
kill @s