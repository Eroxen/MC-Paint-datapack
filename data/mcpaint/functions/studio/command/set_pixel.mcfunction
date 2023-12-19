function mcpaint:canvas/api/set_pixel
execute if score #canvas.set_pixel.changed mcpaint.calc matches 1 run data modify entity @s data.canvas set from storage mcpaint:calc api.canvas.canvas
execute if score #canvas.set_pixel.changed mcpaint.calc matches 1 if data entity @s data{unsaved_changes:0b} run function mcpaint:studio/get_unsaved_changes
execute if score #canvas.set_pixel.changed mcpaint.calc matches 1 run function mcpaint:studio/update_text_display