data modify storage eroxified2:api math.b64.decoder.state set from storage mcpaint:calc internal.canvas.decoder.b64_decoder
function eroxified2:math.b64/api/decoder/load_state
execute store result score #canvas.decoder.width_px mcpaint.calc run data get storage mcpaint:calc internal.canvas.decoder.canvas.width_px 1
execute store result score #canvas.decoder.height_px mcpaint.calc run data get storage mcpaint:calc internal.canvas.decoder.canvas.height_px 1
execute store result score #canvas.decoder.row_length mcpaint.calc run data get storage mcpaint:calc internal.canvas.decoder.steps.b64.row_length 1
execute store result score #canvas.decoder.rows_left mcpaint.calc run data get storage mcpaint:calc internal.canvas.decoder.steps.b64.rows_left 1


scoreboard players set #canvas.decoder.step.iter mcpaint.calc 0
function mcpaint:canvas/decoder/internal/step_b64/next_segment

execute store result score #canvas.length mcpaint.calc run data get storage mcpaint:calc internal.canvas.decoder.colour_array
execute if score math.b64.decoder.eof eroxified2.api matches 1 run return run function mcpaint:canvas/decoder/internal/fail {error:"unexpected_eof"}
execute if score #canvas.decoder.rows_left mcpaint.calc matches ..1 if score #canvas.decoder.row_length mcpaint.calc >= #canvas.decoder.width_px mcpaint.calc run function mcpaint:canvas/decoder/internal/step_b64/finish

function eroxified2:math.b64/api/decoder/save_state
data modify storage mcpaint:calc internal.canvas.decoder.b64_decoder set from storage eroxified2:api math.b64.decoder.state
execute store result storage mcpaint:calc internal.canvas.decoder.steps.b64.row_length int 1 run scoreboard players get #canvas.decoder.row_length mcpaint.calc
execute store result storage mcpaint:calc internal.canvas.decoder.steps.b64.rows_left int 1 run scoreboard players get #canvas.decoder.rows_left mcpaint.calc