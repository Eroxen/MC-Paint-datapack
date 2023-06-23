function mcpaint:canvas/set_pixel
execute if data storage mcpaint:calc set_pixel{changed:1b} run data modify entity @s data.canvas set from storage mcpaint:calc canvas
execute if data storage mcpaint:calc set_pixel{changed:1b} if data entity @s data{unsaved_changes:0b} run function mcpaint:studio/get_unsaved_changes
execute if data storage mcpaint:calc set_pixel{changed:1b} run function mcpaint:studio/update_text_display