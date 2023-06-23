data modify storage mcpaint:calc b64.decode.colour_array set value [[]]
execute store result score b64.decode.max_width mcpaint.calc run data get storage mcpaint:calc b64.decode.header.width_px 1
data modify storage mcpaint:calc b64.decode.interpret_body_in_progress set value {width:0}