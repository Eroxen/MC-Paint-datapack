execute if score #canvas.compile_row.queue.state mcpaint.calc matches 3 run function mcpaint:canvas/internal/compile_row/queue/flush_white with storage mcpaint:calc internal.canvas.compile_row
execute if score #canvas.compile_row.queue.state mcpaint.calc matches 2 unless score #canvas.compile_row.queue.colour mcpaint.calc = #canvas.compile_row.colour mcpaint.calc run function mcpaint:canvas/internal/compile_row/queue/flush_colour with storage mcpaint:calc internal.canvas.compile_row

execute store result storage mcpaint:calc internal.canvas.compile_row.index int 1 run scoreboard players get #canvas.compile_row.length mcpaint.calc
function mcpaint:canvas/internal/compile_row/lookup/solid with storage mcpaint:calc internal.canvas.compile_row
function mcpaint:canvas/internal/compile_row/queue/append_item with storage mcpaint:calc internal.canvas.compile_row

scoreboard players operation #canvas.compile_row.queue.colour mcpaint.calc = #canvas.compile_row.colour mcpaint.calc
scoreboard players set #canvas.compile_row.queue.state mcpaint.calc 2