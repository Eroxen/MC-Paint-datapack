function mcpaint:block/computer/kill_menu
execute at @s rotated as @s positioned ^ ^ ^0.55 run data modify entity @e[type=item_display,tag=mcpaint.computer.item_display.block,distance=..0.1,limit=1] item set from storage mcpaint:calc custom_models.computer_desktop
data modify entity @s data.computer_page set value {name:"desktop"}
data modify storage mcpaint:calc horizontal_direction set from entity @s data.facing
execute at @s rotated as @s positioned ^ ^ ^0.55 run function mcpaint:block/computer/desktop/summon