execute store result score #canvas.compile_row.sample mcpaint.calc run data get storage mcpaint:calc internal.canvas.compile_row.input[0] 1
data remove storage mcpaint:calc internal.canvas.compile_row.input[0]
execute store result score #canvas.compile_row.items_left mcpaint.calc run data get storage mcpaint:calc internal.canvas.compile_row.input

scoreboard players operation #canvas.compile_row.colour mcpaint.calc = #canvas.compile_row.sample mcpaint.calc
scoreboard players set #canvas.compile_row.length mcpaint.calc 0

# 0: nothing in queue, 1: spacing, 2: coloured text, 3: cjk
scoreboard players set #canvas.compile_row.queue.state mcpaint.calc 0

execute if score #canvas.compile_row.items_left mcpaint.calc matches 1.. run function mcpaint:canvas/internal/compile_row/loop

function mcpaint:canvas/internal/compile_row/different_colour
execute if score #canvas.compile_row.add_newline mcpaint.calc matches 1 run function mcpaint:canvas/internal/compile_row/queue/add_newline
function mcpaint:canvas/internal/compile_row/queue/flush
execute if score #canvas.compile_row.leading_comma mcpaint.calc matches 0 run data modify storage mcpaint:calc internal.canvas.compile_row.output set string storage mcpaint:calc internal.canvas.compile_row.output 1