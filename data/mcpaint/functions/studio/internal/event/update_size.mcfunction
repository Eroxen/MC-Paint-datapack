data modify storage mcpaint:calc api.canvas.get_transformation set value {offset_z:-0.4375f}
function mcpaint:canvas/api/get_transformation_painting
data modify entity @e[type=text_display,tag=mcpaint.studio.text_display.canvas,distance=..0.1,limit=1] transformation set from storage mcpaint:calc api.canvas.get_transformation.transformation

function mcpaint:canvas/api/get_info
execute store result score #studio.old_width mcpaint.calc run data get entity @s data.width 1
execute store result score #studio.old_height mcpaint.calc run data get entity @s data.height 1
execute if score #canvas.width_blocks mcpaint.calc = #studio.old_width mcpaint.calc if score #canvas.height_blocks mcpaint.calc = #studio.old_height mcpaint.calc run return 0
say to do