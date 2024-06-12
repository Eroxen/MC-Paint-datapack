#####################################################################
# canvas/api/set_pixels.mcfunction
# written by Eroxen
#
# Sets multiple pixels on the canvas.
#
# Storage input:
# - mcpaint:calc api.canvas.canvas: canvas object
# - mcpaint:calc api.canvas.set_pixels:
#   - u: (int) row index origin
#   - v: (int) column index origin
#   - colour: (int, optional) base colour value
#   - pixels: (list<obj>): row-column sorted on idices
#     - u: (int) offset from origin
#     - v: (int) offset from origin
#     - colour: (int, optional) override base colour
#
# Storage output :
# - mcpaint:calc api.canvas.canvas: canvas object
# - mcpaint:calc api.canvas.set_pixels:
#
# Scoreboard output:
# - #canvas.set_pixels.changed mcpaint.calc: (bool) whether or not at least one pixel changed
#####################################################################

scoreboard players set #canvas.set_pixels.changed mcpaint.calc 0

function mcpaint:canvas/api/get_info
data modify storage mcpaint:calc internal.canvas.set_pixels set value {rows_r:[],rows_w:[],changed_row_idx:[],previous_pixels:[]}
data modify storage mcpaint:calc internal.canvas.set_pixels.rows_r set from storage mcpaint:calc api.canvas.canvas.colour_array
data modify storage mcpaint:calc internal.canvas.set_pixels.pixels set from storage mcpaint:calc api.canvas.set_pixels.pixels
execute store result score #canvas.set_pixels.base_colour mcpaint.calc run data get storage mcpaint:calc api.canvas.set_pixels.colour
execute store result score #canvas.set_pixels.origin.u mcpaint.calc run data get storage mcpaint:calc api.canvas.set_pixels.u
execute store result score #canvas.set_pixels.origin.v mcpaint.calc run data get storage mcpaint:calc api.canvas.set_pixels.v
scoreboard players set #canvas.set_pixels.current.u mcpaint.calc 0
scoreboard players set #canvas.set_pixels.current.v mcpaint.calc 0
scoreboard players set #canvas.set_pixels.inside_canvas mcpaint.calc 0
scoreboard players set #canvas.set_pixels.changed_row mcpaint.calc 0
execute if data storage mcpaint:calc internal.canvas.set_pixels.pixels[0] run function mcpaint:canvas/internal/set_pixels/next_uv
execute if score #canvas.set_pixels.inside_canvas mcpaint.calc matches 1 run function mcpaint:canvas/internal/set_pixels/loop
### flush last rows ###
scoreboard players operation #canvas.set_pixels.u mcpaint.calc = #canvas.height_px mcpaint.calc
execute if score #canvas.set_pixels.u mcpaint.calc > #canvas.set_pixels.current.u mcpaint.calc run function mcpaint:canvas/internal/set_pixels/skip_row
## flush rest of last row ##
data modify storage mcpaint:calc internal.canvas.set_pixels.rows_w[-1] append from storage mcpaint:calc internal.canvas.set_pixels.rows_r[0][]

### changed ###
execute unless data storage mcpaint:calc internal.canvas.set_pixels.changed_row_idx[0] run return 0
scoreboard players set #canvas.set_pixels.changed mcpaint.calc 1
data modify storage mcpaint:calc api.canvas.canvas.colour_array set from storage mcpaint:calc internal.canvas.set_pixels.rows_w
data modify storage mcpaint:calc api.canvas.recompile_indices set from storage mcpaint:calc internal.canvas.set_pixels.changed_row_idx
data modify storage mcpaint:calc api.canvas.set_pixels.previous_pixels set from storage mcpaint:calc internal.canvas.set_pixels.previous_pixels
function mcpaint:canvas/api/recompile_indexed_rows