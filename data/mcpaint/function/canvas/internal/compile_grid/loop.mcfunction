data modify storage mcpaint:calc api.canvas.compile_row set from storage mcpaint:calc internal.canvas.compile_grid.input[0]
data remove storage mcpaint:calc internal.canvas.compile_grid.input[0]
execute unless data storage mcpaint:calc internal.canvas.compile_grid.input[0] run scoreboard players set #canvas.compile_row.add_newline mcpaint.calc 0
function mcpaint:canvas/api/compile_row
scoreboard players set #canvas.compile_row.leading_comma mcpaint.calc 1
execute store result storage mcpaint:calc internal.canvas.compile_grid.macro.i int 1 run scoreboard players get #canvas.compile_grid.i mcpaint.calc
scoreboard players add #canvas.compile_grid.i mcpaint.calc 1
function mcpaint:canvas/internal/compile_grid/add_row with storage mcpaint:calc internal.canvas.compile_grid.macro

execute if data storage mcpaint:calc internal.canvas.compile_grid.input[0] run function mcpaint:canvas/internal/compile_grid/loop