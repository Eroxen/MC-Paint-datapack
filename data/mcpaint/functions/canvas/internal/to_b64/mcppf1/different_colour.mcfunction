scoreboard players set #canvas.to_b64.extend mcpaint.calc 1
execute if score #canvas.to_b64.colour mcpaint.calc matches 0.. if score #canvas.to_b64.length mcpaint.calc matches 1 run scoreboard players set #canvas.to_b64.extend mcpaint.calc 0

scoreboard players set op mcpaint.calc 256
scoreboard players operation math.b64.encoder.byte eroxified2.api = #canvas.to_b64.colour mcpaint.calc
scoreboard players operation math.b64.encoder.byte eroxified2.api /= op mcpaint.calc
execute if score #canvas.to_b64.extend mcpaint.calc matches 1 run scoreboard players add math.b64.encoder.byte eroxified2.api 128
execute if score #canvas.to_b64.extend mcpaint.calc matches 1 if score #canvas.to_b64.colour mcpaint.calc matches -1 run scoreboard players set math.b64.encoder.byte eroxified2.api 128
function eroxified2:math.b64/api/encoder/add_byte

scoreboard players operation math.b64.encoder.byte eroxified2.api = #canvas.to_b64.colour mcpaint.calc
scoreboard players operation math.b64.encoder.byte eroxified2.api %= op mcpaint.calc
function eroxified2:math.b64/api/encoder/add_byte

execute if score #canvas.to_b64.extend mcpaint.calc matches 1 run function mcpaint:canvas/internal/to_b64/mcppf1/ext

scoreboard players operation #canvas.to_b64.colour mcpaint.calc = #canvas.to_b64.sample_colour mcpaint.calc
execute unless score #canvas.to_b64.length mcpaint.calc matches 128.. run scoreboard players set #canvas.to_b64.length mcpaint.calc 1
execute if score #canvas.to_b64.length mcpaint.calc matches 128.. run scoreboard players set #canvas.to_b64.length mcpaint.calc 0