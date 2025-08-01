data modify storage mcpaint:calc internal.canvas.recompile_indexed_rows.i set from storage mcpaint:calc internal.canvas.recompile_indexed_rows.list[0]
data remove storage mcpaint:calc internal.canvas.recompile_indexed_rows.list[0]

execute store result score #canvas.recompile.i mcpaint.calc run data get storage mcpaint:calc internal.canvas.recompile_indexed_rows.i 1
execute store success score #canvas.compile_row.leading_comma mcpaint.calc if score #canvas.recompile.i mcpaint.calc matches 1..
execute store success score #canvas.compile_row.add_newline mcpaint.calc if score #canvas.recompile.i mcpaint.calc < #canvas.compile_grid.i mcpaint.calc

function mcpaint:canvas/internal/recompile/index with storage mcpaint:calc internal.canvas.recompile_indexed_rows

execute if data storage mcpaint:calc internal.canvas.recompile_indexed_rows.list[0] run function mcpaint:canvas/internal/recompile/loop