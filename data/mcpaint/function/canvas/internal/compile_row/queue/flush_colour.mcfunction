execute store result storage mcpaint:calc internal.canvas.compile_row.index int 1 run scoreboard players get #canvas.compile_row.queue.colour mcpaint.calc
function mcpaint:canvas/internal/compile_row/lookup/colour with storage mcpaint:calc internal.canvas.compile_row
function mcpaint:canvas/internal/compile_row/queue/flush_colour_macro with storage mcpaint:calc internal.canvas.compile_row

data modify storage mcpaint:calc internal.canvas.compile_row.queue set value ""
scoreboard players set #canvas.compile_row.queue.state mcpaint.calc 0