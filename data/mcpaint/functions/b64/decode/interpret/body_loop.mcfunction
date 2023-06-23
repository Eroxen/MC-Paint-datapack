function mcpaint:b64/decode/interpret/get_colour_and_length
execute if score b64.decode.extend mcpaint.calc matches 0 run function mcpaint:b64/decode/interpret/body_append
execute if score b64.decode.extend mcpaint.calc matches 1 run function mcpaint:b64/decode/interpret/body_loop2

execute if data storage mcpaint:calc b64.decode.bytes[0] if score b64.iter mcpaint.calc < b64.max_iter mcpaint.config run function mcpaint:b64/decode/interpret/body_loop