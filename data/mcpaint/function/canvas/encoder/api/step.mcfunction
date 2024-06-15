#####################################################################
# canvas/encoder/api/step.mcfunction
# written by Eroxen
#
# Advances the canvas base64 encoder by 1 step.
#####################################################################

execute if data storage mcpaint:calc internal.canvas.encoder{finished:1b} run return 0

data modify storage eroxified2:api math.b64.encoder.state set from storage mcpaint:calc internal.canvas.encoder.b64_encoder
function eroxified2:math.b64/api/encoder/load_state
execute store result score #canvas.colour mcpaint.calc run data get storage mcpaint:calc internal.canvas.encoder.colour 1
execute store result score #canvas.length mcpaint.calc run data get storage mcpaint:calc internal.canvas.encoder.length 1

execute store result score #canvas.i mcpaint.calc run data get storage mcpaint:calc internal.canvas.encoder.pixel_queue
scoreboard players operation #canvas.i mcpaint.calc < #canvas.b64.pixels_per_step mcpaint.calc
execute if score #canvas.i mcpaint.calc matches 1.. run function mcpaint:canvas/encoder/internal/mcppf1/loop
execute unless data storage mcpaint:calc internal.canvas.encoder.pixel_queue[0] if score #canvas.length mcpaint.calc matches 1.. run function mcpaint:canvas/encoder/internal/mcppf1/different_colour
execute unless data storage mcpaint:calc internal.canvas.encoder.pixel_queue[0] run function mcpaint:canvas/encoder/internal/finish

function eroxified2:math.b64/api/encoder/save_state
data modify storage mcpaint:calc internal.canvas.encoder.b64_encoder set from storage eroxified2:api math.b64.encoder.state
execute store result storage mcpaint:calc internal.canvas.encoder.colour int 1 run scoreboard players get #canvas.colour mcpaint.calc
execute store result storage mcpaint:calc internal.canvas.encoder.length int 1 run scoreboard players get #canvas.length mcpaint.calc