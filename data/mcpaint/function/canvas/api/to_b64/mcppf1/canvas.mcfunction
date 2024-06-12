#####################################################################
# canvas/api/to_b64/mcppf1/canvas.mcfunction
# written by Eroxen
#
# Adds colour array information for the MCPPF1 format to the base64 encoder queue.
#
# Storage input:
# - mcpaint:calc api.canvas.canvas: canvas object
#####################################################################

data modify storage mcpaint:calc internal.canvas.to_b64.queue set value []
data modify storage mcpaint:calc internal.canvas.to_b64.queue append from storage mcpaint:calc api.canvas.canvas.colour_array[][]

execute store result score #canvas.to_b64.i mcpaint.calc run data get storage mcpaint:calc internal.canvas.to_b64.queue
execute store result score #canvas.to_b64.colour mcpaint.calc run data get storage mcpaint:calc internal.canvas.to_b64.queue[0]
scoreboard players set #canvas.to_b64.length mcpaint.calc 0
execute if score #canvas.to_b64.i mcpaint.calc matches 1.. run function mcpaint:canvas/internal/to_b64/mcppf1/loop
execute if score #canvas.to_b64.length mcpaint.calc matches 1.. run function mcpaint:canvas/internal/to_b64/mcppf1/different_colour