scoreboard players add #canvas.decoder.step.iter mcpaint.calc 1

scoreboard players remove #canvas.colour mcpaint.calc 32768
function eroxified2:math.b64/api/decoder/read_byte
scoreboard players operation #canvas.length mcpaint.calc = math.b64.decoder.byte eroxified2.api
execute if score #canvas.length mcpaint.calc matches 128.. run scoreboard players set #canvas.colour mcpaint.calc -1
execute if score #canvas.length mcpaint.calc matches 128.. run scoreboard players remove #canvas.length mcpaint.calc 128
scoreboard players add #canvas.length mcpaint.calc 1