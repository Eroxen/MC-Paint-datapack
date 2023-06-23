summon item_display ~ ~ ~ {Tags:["mcpaint.swap_hands"]}

item replace entity @e[type=minecraft:item_display,tag=mcpaint.swap_hands,distance=..0.1,limit=1] container.0 from entity @s weapon.mainhand
item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand from entity @e[type=minecraft:item_display,tag=mcpaint.swap_hands,distance=..0.1,limit=1] container.0

kill @e[type=minecraft:item_display,tag=mcpaint.swap_hands,distance=..0.1,limit=1]