#####################################################################
# canvas/api/compile_row.mcfunction
# written by Eroxen
#
# Converts a list of integers to text components
#
# Storage input:
# - mcpaint:calc api.canvas.compile_row: list of integers
#
# Storage output :
# - mcpaint:calc api.canvas.compiled_row : text components
#####################################################################

data modify storage mcpaint:calc internal.canvas.compile_row set value {output:"",queue:""}
data modify storage mcpaint:calc internal.canvas.compile_row.input set from storage mcpaint:calc api.canvas.compile_row

scoreboard players set #canvas.compile_row.leading_comma mcpaint.calc 0
scoreboard players set #canvas.compile_row.add_newline mcpaint.calc 1
function mcpaint:canvas/internal/compile_row/start