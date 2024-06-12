#####################################################################
# canvas/api/compile_grid.mcfunction
# written by Eroxen
#
# Converts the colour array of a canvas object into resolved text
#
# Storage input:
# - mcpaint:calc api.canvas.canvas: canvas object
#
# Storage output :
# - mcpaint:calc api.canvas.canvas: canvas object
#####################################################################

data modify storage mcpaint:calc internal.canvas.compile_grid set value {compiled_rows:{},macro:{i:0}}
data modify storage mcpaint:calc internal.canvas.compile_grid.input set from storage mcpaint:calc api.canvas.canvas.colour_array
scoreboard players set #canvas.compile_grid.i mcpaint.calc 0
scoreboard players set #canvas.compile_row.leading_comma mcpaint.calc 0
scoreboard players set #canvas.compile_row.add_newline mcpaint.calc 1
execute if data storage mcpaint:calc internal.canvas.compile_grid.input[0] run function mcpaint:canvas/internal/compile_grid/loop
function mcpaint:canvas/internal/compile_grid/glue_rows with storage mcpaint:calc internal.canvas.compile_grid.macro

data modify storage mcpaint:calc api.canvas.canvas.resolved_rows set from storage mcpaint:calc internal.canvas.compile_grid.compiled_rows
execute store result storage mcpaint:calc api.canvas.canvas.resolved_text_size int 1 run data get storage mcpaint:calc api.canvas.canvas.resolved_text