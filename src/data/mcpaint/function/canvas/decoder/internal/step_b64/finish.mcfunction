execute if score #canvas.decoder.rows_left mcpaint.calc matches ..0 run return run function mcpaint:canvas/decoder/internal/fail {error:"trailing_data"}
function eroxified2:math.b64/api/decoder/read_byte
execute if score math.b64.decoder.eof eroxified2.api matches 0 run return run function mcpaint:canvas/decoder/internal/fail {error:"trailing_data"}

data modify storage mcpaint:calc internal.canvas.decoder.phase set value "text"