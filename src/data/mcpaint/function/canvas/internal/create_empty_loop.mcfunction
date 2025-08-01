data modify storage mcpaint:calc internal.canvas.create_empty.array append from storage mcpaint:calc internal.canvas.create_empty.element
scoreboard players remove #canvas.i mcpaint.calc 1
execute if score #canvas.i mcpaint.calc matches 1.. run function mcpaint:canvas/internal/create_empty_loop