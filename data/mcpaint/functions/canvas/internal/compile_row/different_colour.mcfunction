#tellraw @a ["",{"score":{"name":"#canvas.compile_row.length","objective":"mcpaint.calc"}},{"text":" * "},{"score":{"name":"#canvas.compile_row.colour","objective":"mcpaint.calc"}}]

execute if score #canvas.compile_row.colour mcpaint.calc matches -1 run function mcpaint:canvas/internal/compile_row/queue/add_spacing
execute if score #canvas.compile_row.colour mcpaint.calc matches 0.. if score #canvas.compile_row.length mcpaint.calc matches 0 run function mcpaint:canvas/internal/compile_row/queue/add_single
execute if score #canvas.compile_row.colour mcpaint.calc matches 0.. if score #canvas.compile_row.length mcpaint.calc matches 1.. run function mcpaint:canvas/internal/compile_row/queue/add_segment

scoreboard players operation #canvas.compile_row.colour mcpaint.calc = #canvas.compile_row.sample mcpaint.calc
scoreboard players set #canvas.compile_row.length mcpaint.calc 0