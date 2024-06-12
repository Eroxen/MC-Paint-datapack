#####################################################################
# canvas/api/set_pixel.mcfunction
# written by Eroxen
#
# Sets a single pixel on the canvas.
#
# Storage input:
# - mcpaint:calc api.canvas.canvas: canvas object
# - mcpaint:calc api.canvas.set_pixel:
#   - u: (int) row index
#   - v: (int) column index
#   - colour: (int) colour value
#
# Storage output :
# - mcpaint:calc api.canvas.canvas: canvas object
# - mcpaint:calc api.canvas.set_pixel:
#   - previous_colour: (int) previous colour value
#
# Scoreboard output:
# - #canvas.set_pixel.changed mcpaint.calc: (bool) whether or not the pixel changed (won't change if it already had specified colour)
#####################################################################

function mcpaint:canvas/api/get_info
function mcpaint:canvas/internal/set_pixel with storage mcpaint:calc api.canvas.set_pixel

execute if score #canvas.set_pixel.changed mcpaint.calc matches 1 run data modify storage mcpaint:calc api.canvas.recompile_indices set value []
execute if score #canvas.set_pixel.changed mcpaint.calc matches 1 run data modify storage mcpaint:calc api.canvas.recompile_indices append from storage mcpaint:calc api.canvas.set_pixel.u
execute if score #canvas.set_pixel.changed mcpaint.calc matches 1 run function mcpaint:canvas/api/recompile_indexed_rows