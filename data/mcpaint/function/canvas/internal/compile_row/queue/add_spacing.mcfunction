execute store result storage mcpaint:calc internal.canvas.compile_row.index int 1 run scoreboard players get #canvas.compile_row.length mcpaint.calc
function mcpaint:canvas/internal/compile_row/lookup/spacing with storage mcpaint:calc internal.canvas.compile_row
function mcpaint:canvas/internal/compile_row/queue/append_item with storage mcpaint:calc internal.canvas.compile_row
execute if score #canvas.compile_row.queue.state mcpaint.calc matches 0 run scoreboard players set #canvas.compile_row.queue.state mcpaint.calc 1