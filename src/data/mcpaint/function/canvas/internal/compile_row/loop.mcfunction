execute store result score #canvas.compile_row.sample mcpaint.calc run data get storage mcpaint:calc internal.canvas.compile_row.input[0] 1
data remove storage mcpaint:calc internal.canvas.compile_row.input[0]

# same colour as before #
execute if score #canvas.compile_row.sample mcpaint.calc = #canvas.compile_row.colour mcpaint.calc run scoreboard players add #canvas.compile_row.length mcpaint.calc 1

# different colour than before #
execute unless score #canvas.compile_row.sample mcpaint.calc = #canvas.compile_row.colour mcpaint.calc run function mcpaint:canvas/internal/compile_row/different_colour

scoreboard players remove #canvas.compile_row.items_left mcpaint.calc 1
execute if score #canvas.compile_row.items_left mcpaint.calc matches 1.. run function mcpaint:canvas/internal/compile_row/loop