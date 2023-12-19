#####################################################################
# canvas/api/recompile_indexed_rows.mcfunction
# written by Eroxen
#
# Recompiles only the indexed rows. Relies on having resolved_rows
# field already present in the canvas object.
#
# Storage input:
# - mcpaint:calc api.canvas.canvas: canvas object
# - mcpaint:calc api.canvas.recompile_indices: (list<int>) row indices
#
# Storage output :
# - mcpaint:calc api.canvas.canvas: canvas object
#####################################################################

data modify storage mcpaint:calc internal.canvas.recompile_indexed_rows set value {}
data modify storage mcpaint:calc internal.canvas.recompile_indexed_rows.list set from storage mcpaint:calc api.canvas.recompile_indices
execute store result score #canvas.compile_grid.i mcpaint.calc run data get storage mcpaint:calc api.canvas.canvas.resolved_rows
scoreboard players remove #canvas.compile_grid.i mcpaint.calc 1
execute if data storage mcpaint:calc internal.canvas.recompile_indexed_rows.list[0] run function mcpaint:canvas/internal/recompile/loop

execute store result storage mcpaint:calc internal.canvas.recompile_indexed_rows.macro.i int 1 run scoreboard players get #canvas.compile_grid.i mcpaint.calc
function mcpaint:canvas/internal/recompile/glue_rows with storage mcpaint:calc internal.canvas.recompile_indexed_rows.macro
execute store result storage mcpaint:calc api.canvas.canvas.resolved_text_size int 1 run data get storage mcpaint:calc api.canvas.canvas.resolved_text