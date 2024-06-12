execute if score #canvas.compile_row.queue.state mcpaint.calc matches 2 unless score #canvas.compile_row.queue.colour mcpaint.calc = #canvas.compile_row.colour mcpaint.calc run function mcpaint:canvas/internal/compile_row/queue/flush_colour with storage mcpaint:calc internal.canvas.compile_row

execute unless score #canvas.compile_row.queue.state mcpaint.calc matches 2 store result storage mcpaint:calc internal.canvas.compile_row.index int 1 run scoreboard players get #canvas.compile_row.colour mcpaint.calc
execute unless score #canvas.compile_row.queue.state mcpaint.calc matches 2 run function mcpaint:canvas/internal/compile_row/lookup/cjk with storage mcpaint:calc internal.canvas.compile_row
execute unless score #canvas.compile_row.queue.state mcpaint.calc matches 2 run scoreboard players set #canvas.compile_row.queue.state mcpaint.calc 3

execute if score #canvas.compile_row.queue.state mcpaint.calc matches 2 run data modify storage mcpaint:calc internal.canvas.compile_row.item set value "A."

function mcpaint:canvas/internal/compile_row/queue/append_item with storage mcpaint:calc internal.canvas.compile_row