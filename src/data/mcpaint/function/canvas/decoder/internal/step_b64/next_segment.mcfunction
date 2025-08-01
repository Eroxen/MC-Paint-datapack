scoreboard players add #canvas.decoder.step.iter mcpaint.calc 2
scoreboard players set #canvas.length mcpaint.calc 1

scoreboard players set #canvas.colour mcpaint.calc 256
function eroxified2:math.b64/api/decoder/read_byte
scoreboard players operation #canvas.colour mcpaint.calc *= math.b64.decoder.byte eroxified2.api
function eroxified2:math.b64/api/decoder/read_byte
scoreboard players operation #canvas.colour mcpaint.calc += math.b64.decoder.byte eroxified2.api

execute if score #canvas.colour mcpaint.calc matches 32768.. run function mcpaint:canvas/decoder/internal/step_b64/segment_length
execute store result storage mcpaint:calc internal.canvas.decoder.colour int 1 run scoreboard players get #canvas.colour mcpaint.calc

#tellraw @a ["",{"score":{"name":"#canvas.colour","objective": "mcpaint.calc"},"color":"red"},{"text":" * "},{"score":{"name":"#canvas.length","objective": "mcpaint.calc"},"color":"red"}]
function mcpaint:canvas/decoder/internal/step_b64/append_colour

#tellraw @a ["",{"score":{"name":"#canvas.decoder.rows_left","objective": "mcpaint.calc"},"color":"yellow"},{"text":" + "},{"score":{"name":"#canvas.decoder.row_length","objective": "mcpaint.calc"},"color":"green"}]
execute if score #canvas.decoder.rows_left mcpaint.calc matches ..1 if score #canvas.decoder.row_length mcpaint.calc >= #canvas.decoder.width_px mcpaint.calc run return 0

execute if score #canvas.decoder.step.iter mcpaint.calc < #canvas.b64.bytes_per_step mcpaint.calc run function mcpaint:canvas/decoder/internal/step_b64/next_segment