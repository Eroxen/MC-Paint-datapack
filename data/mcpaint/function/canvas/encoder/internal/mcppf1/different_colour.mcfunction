scoreboard players set #canvas.extend mcpaint.calc 1
execute if score #canvas.colour mcpaint.calc matches 0.. if score #canvas.length mcpaint.calc matches 1 run scoreboard players set #canvas.extend mcpaint.calc 0

scoreboard players set op mcpaint.calc 256
scoreboard players operation math.b64.encoder.byte eroxified2.api = #canvas.colour mcpaint.calc
scoreboard players operation math.b64.encoder.byte eroxified2.api /= op mcpaint.calc
execute if score #canvas.extend mcpaint.calc matches 1 run scoreboard players add math.b64.encoder.byte eroxified2.api 128
execute if score #canvas.extend mcpaint.calc matches 1 if score #canvas.colour mcpaint.calc matches -1 run scoreboard players set math.b64.encoder.byte eroxified2.api 128
function eroxified2:math.b64/api/encoder/add_byte

scoreboard players operation math.b64.encoder.byte eroxified2.api = #canvas.colour mcpaint.calc
scoreboard players operation math.b64.encoder.byte eroxified2.api %= op mcpaint.calc
function eroxified2:math.b64/api/encoder/add_byte

execute if score #canvas.extend mcpaint.calc matches 1 run function mcpaint:canvas/encoder/internal/mcppf1/ext

scoreboard players operation #canvas.colour mcpaint.calc = #canvas.sample_colour mcpaint.calc
execute unless score #canvas.length mcpaint.calc matches 128.. run scoreboard players set #canvas.length mcpaint.calc 1
execute if score #canvas.length mcpaint.calc matches 128.. run scoreboard players set #canvas.length mcpaint.calc 0