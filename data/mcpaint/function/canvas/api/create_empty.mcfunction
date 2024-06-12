#####################################################################
# canvas/api/create_empty.mcfunction
# written by Eroxen
#
# Creates a new canvas that has all pixels transparent.
#
# Scoreboard input:
# - mcpaint.calc:
#   - #canvas.width_px: width (pixels)
#   - #canvas.height_px: height (pixels)
#   - #canvas.width_blocks: width (blocks)
#   - #canvas.height_blocks: height (blocks)
#
# Storage output :
# - mcpaint:calc api.canvas.canvas : canvas object
#####################################################################

data modify storage mcpaint:calc api.canvas.canvas set value {colour_array:[],resolved_text:''}

data modify storage mcpaint:calc internal.canvas.create_empty set value {array:[],element:-1}
scoreboard players operation #canvas.i mcpaint.calc = #canvas.width_px mcpaint.calc
execute if score #canvas.i mcpaint.calc matches 1.. run function mcpaint:canvas/internal/create_empty_loop

data modify storage mcpaint:calc internal.canvas.create_empty.element set from storage mcpaint:calc internal.canvas.create_empty.array
data modify storage mcpaint:calc internal.canvas.create_empty.array set value []
scoreboard players operation #canvas.i mcpaint.calc = #canvas.height_px mcpaint.calc
execute if score #canvas.i mcpaint.calc matches 1.. run function mcpaint:canvas/internal/create_empty_loop

data modify storage mcpaint:calc api.canvas.canvas.colour_array set from storage mcpaint:calc internal.canvas.create_empty.array
execute store result storage mcpaint:calc api.canvas.canvas.width_px int 1 run scoreboard players get #canvas.width_px mcpaint.calc
execute store result storage mcpaint:calc api.canvas.canvas.height_px int 1 run scoreboard players get #canvas.height_px mcpaint.calc
execute store result storage mcpaint:calc api.canvas.canvas.width_blocks int 1 run scoreboard players get #canvas.width_blocks mcpaint.calc
execute store result storage mcpaint:calc api.canvas.canvas.height_blocks int 1 run scoreboard players get #canvas.height_blocks mcpaint.calc
function mcpaint:canvas/api/compile_grid