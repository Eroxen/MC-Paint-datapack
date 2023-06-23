data modify storage mcpaint:calc b64.decode.string set from storage mcpaint:calc b64.decode.strings[0]
data remove storage mcpaint:calc b64.decode.strings[0]
function mcpaint:b64/decode/string_to_bytes
execute if data storage mcpaint:calc b64.decode.strings[0] if score b64.iter mcpaint.calc < b64.max_iter mcpaint.config run function mcpaint:b64/decode/strings_to_bytes_loop