function mcpaint:block/computer/files/retrieve_data
data modify storage mcpaint:calc computer_render set from entity @s data.computer_page
data modify storage mcpaint:calc computer_render.canvas set from storage mcpaint:calc selected_work.canvas
execute if data storage mcpaint:calc selected_work at @s rotated as @s positioned ^ ^ ^0.55 run function mcpaint:block/computer/files/update_expensive_text_displays
execute unless data storage mcpaint:calc selected_work at @s rotated as @s positioned ^ ^ ^0.55 run function mcpaint:block/computer/files/clear_expensive_text_displays
execute at @s rotated as @s positioned ^ ^ ^0.55 run function mcpaint:block/computer/files/update_cheap_text_displays