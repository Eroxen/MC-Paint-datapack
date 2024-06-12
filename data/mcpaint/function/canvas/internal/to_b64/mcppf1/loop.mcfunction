execute store result score #canvas.to_b64.sample_colour mcpaint.calc run data get storage mcpaint:calc internal.canvas.to_b64.queue[0]
data remove storage mcpaint:calc internal.canvas.to_b64.queue[0]
execute if score #canvas.to_b64.colour mcpaint.calc = #canvas.to_b64.sample_colour mcpaint.calc run scoreboard players add #canvas.to_b64.length mcpaint.calc 1
execute unless score #canvas.to_b64.colour mcpaint.calc = #canvas.to_b64.sample_colour mcpaint.calc run function mcpaint:canvas/internal/to_b64/mcppf1/different_colour
execute if score #canvas.to_b64.length mcpaint.calc matches 128.. run function mcpaint:canvas/internal/to_b64/mcppf1/different_colour

scoreboard players remove #canvas.to_b64.i mcpaint.calc 1
execute if score #canvas.to_b64.i mcpaint.calc matches 1.. run function mcpaint:canvas/internal/to_b64/mcppf1/loop