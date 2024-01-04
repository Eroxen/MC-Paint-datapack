#####################################################################
# canvas/api/get_transformation_contain.mcfunction
# written by Eroxen
#
# Gets the transformation for a text display to show the canvas
# contained in a square box of configurable size and offset.
#
# Storage input:
# - mcpaint:calc api.canvas.canvas: canvas object
# - mcpaint:calc api.canvas.get_transformation:
#   - scale: (float) max size of the canvas in blocks
#   - offset_x: (float) x offset from the centre of the display entity to the centre of the canvas
#   - offset_y: (float) y offset from the centre of the display entity to the centre of the canvas
#   - offset_z: (float) z offset, does not depend on canvas
#
# Storage output:
# - mcpaint:calc api.canvas.get_transformation:
#   - transformation: transformation
#####################################################################

function mcpaint:canvas/api/get_info
data modify storage mcpaint:calc api.canvas.get_transformation.transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}

execute store result score #canvas.get_transformation.scale mcpaint.calc run data get storage mcpaint:calc api.canvas.get_transformation.scale 40960
scoreboard players operation #canvas.get_transformation.max_blocks mcpaint.calc = #canvas.width_blocks mcpaint.calc
scoreboard players operation #canvas.get_transformation.max_blocks mcpaint.calc > #canvas.height_blocks mcpaint.calc

scoreboard players operation #canvas.get_transformation.scale.x mcpaint.calc = #canvas.get_transformation.scale mcpaint.calc
scoreboard players operation #canvas.get_transformation.scale.x mcpaint.calc /= #canvas.get_transformation.max_blocks mcpaint.calc
scoreboard players operation #canvas.get_transformation.scale.x mcpaint.calc *= #canvas.width_blocks mcpaint.calc
scoreboard players operation #canvas.get_transformation.scale.x mcpaint.calc /= #canvas.width_px mcpaint.calc

scoreboard players operation #canvas.get_transformation.scale.y mcpaint.calc = #canvas.get_transformation.scale mcpaint.calc
scoreboard players operation #canvas.get_transformation.scale.y mcpaint.calc /= #canvas.get_transformation.max_blocks mcpaint.calc
scoreboard players operation #canvas.get_transformation.scale.y mcpaint.calc *= #canvas.height_blocks mcpaint.calc
scoreboard players operation #canvas.get_transformation.scale.y mcpaint.calc /= #canvas.height_px mcpaint.calc

execute store result storage mcpaint:calc api.canvas.get_transformation.transformation.scale[0] float 0.00009766 run scoreboard players get #canvas.get_transformation.scale.x mcpaint.calc
execute store result storage mcpaint:calc api.canvas.get_transformation.transformation.scale[1] float 0.00009766 run scoreboard players get #canvas.get_transformation.scale.y mcpaint.calc

scoreboard players set #canvas.get_transformation.offset.x mcpaint.calc -1
scoreboard players operation #canvas.get_transformation.offset.x mcpaint.calc *= #canvas.get_transformation.scale.x mcpaint.calc
execute store result score #temp mcpaint.calc run data get storage mcpaint:calc api.canvas.get_transformation.offset_x 409584
scoreboard players operation #canvas.get_transformation.offset.x mcpaint.calc += #temp mcpaint.calc

scoreboard players set #canvas.get_transformation.offset.y mcpaint.calc -1
scoreboard players operation #canvas.get_transformation.offset.y mcpaint.calc *= #canvas.get_transformation.scale.y mcpaint.calc
execute store result score #temp mcpaint.calc run data get storage mcpaint:calc api.canvas.get_transformation.offset_y 409584
scoreboard players operation #canvas.get_transformation.offset.y mcpaint.calc += #temp mcpaint.calc
scoreboard players set #temp mcpaint.calc 5
scoreboard players operation #temp mcpaint.calc *= #canvas.height_blocks mcpaint.calc
scoreboard players operation #temp mcpaint.calc *= #canvas.get_transformation.scale mcpaint.calc
scoreboard players operation #temp mcpaint.calc /= #canvas.get_transformation.max_blocks mcpaint.calc
scoreboard players operation #canvas.get_transformation.offset.y mcpaint.calc -= #temp mcpaint.calc

execute store result storage mcpaint:calc api.canvas.get_transformation.transformation.translation[0] float 0.0000024415 run scoreboard players get #canvas.get_transformation.offset.x mcpaint.calc
execute store result storage mcpaint:calc api.canvas.get_transformation.transformation.translation[1] float 0.0000024415 run scoreboard players get #canvas.get_transformation.offset.y mcpaint.calc
data modify storage mcpaint:calc api.canvas.get_transformation.transformation.translation[2] set from storage mcpaint:calc api.canvas.get_transformation.offset_z