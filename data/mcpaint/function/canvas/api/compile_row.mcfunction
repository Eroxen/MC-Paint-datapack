#####################################################################
# canvas/api/compile_row.mcfunction
# written by Eroxen
#
# Converts a list of integers to text components
#
# Storage input:
# - mcpaint:calc api.canvas.compile_row: list of integers
#
# Scoreboard input:
# - #canvas.compile_row.leading_comma mcpaint.calc: add a comma in front
# - #canvas.compile_row.add_newline mcpaint.calc: add a newline in the back
#
# Storage output :
# - mcpaint:calc api.canvas.compiled_row : text components
#####################################################################

data modify storage mcpaint:calc internal.canvas.compile_row set value {output:"",queue:""}
data modify storage mcpaint:calc internal.canvas.compile_row.input set from storage mcpaint:calc api.canvas.compile_row

function mcpaint:canvas/internal/compile_row/start
data modify storage mcpaint:calc api.canvas.compiled_row set from storage mcpaint:calc internal.canvas.compile_row.output