$data modify storage mcpaint:calc internal.canvas.compile_row.output set value '$(output),{"text":"$(queue)"}'

data modify storage mcpaint:calc internal.canvas.compile_row.queue set value ""
scoreboard players set #canvas.compile_row.queue.state mcpaint.calc 0