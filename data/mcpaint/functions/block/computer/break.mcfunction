setblock ~ ~ ~ air destroy
execute align y run kill @e[type=interaction,tag=mcpaint.computer.interaction,distance=..0.1]

execute at @s rotated as @s positioned ^ ^ ^0.55 run kill @e[type=item_display,tag=mcpaint.computer.item_display,distance=..0.1]
execute at @s rotated as @s positioned ^ ^ ^0.55 run kill @e[type=text_display,tag=mcpaint.computer.text_display,distance=..0.1]

loot spawn ~ ~ ~ loot mcpaint:computer

kill @s