function mcpaint:canvas/set_pixels
execute if data storage mcpaint:calc set_pixels{changed_any:1b} run data modify entity @s data.canvas set from storage mcpaint:calc canvas
execute if data storage mcpaint:calc set_pixels{changed_any:1b} if data entity @s data{unsaved_changes:0b} run function mcpaint:studio/get_unsaved_changes
execute if data storage mcpaint:calc set_pixels{changed_any:1b} run function mcpaint:studio/update_text_display