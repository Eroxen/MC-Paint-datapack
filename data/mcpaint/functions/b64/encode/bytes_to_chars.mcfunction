data modify storage mcpaint:calc b64.encode.chars set value []
data modify storage mcpaint:calc b64.encode.bits set value []
execute if data storage mcpaint:calc b64.encode.bytes[0] run function mcpaint:b64/encode/bytes_to_chars_loop