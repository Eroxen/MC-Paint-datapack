function mcpaint:block/computer/kill_menu
execute at @s rotated as @s positioned ^ ^ ^0.55 run data modify entity @e[type=item_display,tag=mcpaint.computer.item_display.block,distance=..0.1,limit=1] item set from storage mcpaint:calc custom_models.computer_files
data modify entity @s data.computer_page set value {name:"files",selected_page:0,selected_row:0}
data modify storage mcpaint:calc horizontal_direction set from entity @s data.facing
execute at @s rotated as @s positioned ^ ^ ^0.55 run function mcpaint:block/computer/files/summon

function mcpaint:block/computer/files/update_data