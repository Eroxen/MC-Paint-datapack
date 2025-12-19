#####################################################################
# canvas/api/get_transformation_painting.mcfunction
# written by Eroxen
#
# Gets the transformation for a text display to show the canvas
# for a painting.
#
# Storage input:
# - mcpaint:calc api.canvas.canvas: canvas object
# - mcpaint:calc api.canvas.get_transformation:
#   - offset_z: (float) z offset
#   - bar_height: (int)
#   - (roll): (float) roll of the text display in degrees
#
# Storage output:
# - mcpaint:calc api.canvas.get_transformation:
#   - transformation: transformation
#####################################################################

function mcpaint:canvas/api/get_info
data modify storage mcpaint:calc api.canvas.get_transformation merge value {scale:1f,offset_x:0f,offset_y:0f}

scoreboard players operation #canvas.get_transformation.max_blocks mcpaint.calc = #canvas.width_blocks mcpaint.calc
scoreboard players operation #canvas.get_transformation.max_blocks mcpaint.calc > #canvas.height_blocks mcpaint.calc
execute store result storage mcpaint:calc api.canvas.get_transformation.scale float 1 run scoreboard players get #canvas.get_transformation.max_blocks mcpaint.calc
scoreboard players add #canvas.height_blocks mcpaint.calc 2
execute store result storage mcpaint:calc api.canvas.get_transformation.offset_y float 0.5 run scoreboard players get #canvas.height_blocks mcpaint.calc
execute store result score #canvas.height_blocks mcpaint.calc run data get storage mcpaint:calc api.canvas.get_transformation.offset_y 16
execute store result score #canvas.temp mcpaint.calc run data get storage mcpaint:calc api.canvas.get_transformation.bar_height 1
scoreboard players operation #canvas.height_blocks mcpaint.calc += #canvas.temp mcpaint.calc
execute store result storage mcpaint:calc api.canvas.get_transformation.offset_y float 0.0625 run scoreboard players get #canvas.height_blocks mcpaint.calc

function mcpaint:canvas/api/get_transformation_contain