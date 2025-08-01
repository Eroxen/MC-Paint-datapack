execute store result score #canvas.sample_colour mcpaint.calc run data get storage mcpaint:calc internal.canvas.encoder.pixel_queue[0]
data remove storage mcpaint:calc internal.canvas.encoder.pixel_queue[0]
execute if score #canvas.colour mcpaint.calc = #canvas.sample_colour mcpaint.calc run scoreboard players add #canvas.length mcpaint.calc 1
execute unless score #canvas.colour mcpaint.calc = #canvas.sample_colour mcpaint.calc run function mcpaint:canvas/encoder/internal/mcppf1/different_colour
execute if score #canvas.length mcpaint.calc matches 128.. run function mcpaint:canvas/encoder/internal/mcppf1/different_colour

scoreboard players remove #canvas.i mcpaint.calc 1
execute if score #canvas.i mcpaint.calc matches 1.. run function mcpaint:canvas/encoder/internal/mcppf1/loop