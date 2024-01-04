data modify entity @s data.filename set from storage mcpaint:calc painter_command.filename
data modify storage mcpaint:calc api.canvas.canvas set from storage mcpaint:database search.work.canvas
function mcpaint:canvas/api/get_info
scoreboard players operation width mcpaint.calc = #canvas.width_blocks mcpaint.calc
scoreboard players operation height mcpaint.calc = #canvas.height_blocks mcpaint.calc
data modify entity @s data.canvas set from storage mcpaint:calc api.canvas.canvas
data modify entity @s data.unsaved_changes set value 0b
function mcpaint:studio/update_text_display

data modify storage mcpaint:calc api.canvas.get_transformation set value {offset_z:-0.4375f}
data modify storage mcpaint:calc api.canvas.canvas.width_blocks set from entity @s data.width
data modify storage mcpaint:calc api.canvas.canvas.height_blocks set from entity @s data.height
function mcpaint:canvas/api/get_transformation_painting
data modify entity @e[type=text_display,tag=mcpaint.studio.text_display,distance=..0.1,limit=1] transformation set from storage mcpaint:calc api.canvas.get_transformation.transformation


execute as @e[type=marker,tag=mcpaint.studio.ui_controller,distance=..0.1,limit=1] run function mcpaint:studio/ui/dynamic_elements


function mcpaint:studio/change_size/start