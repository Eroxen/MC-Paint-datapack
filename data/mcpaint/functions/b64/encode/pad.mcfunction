data modify storage mcpaint:calc b64.encode.bits append value 0
data modify storage mcpaint:calc b64.encode.bits append value 0
data modify storage mcpaint:calc b64.encode.bits append value 0
data modify storage mcpaint:calc b64.encode.bits append value 0
data modify storage mcpaint:calc b64.encode.bits append value 0
data modify storage mcpaint:calc b64.encode.bits append value 0
data modify storage mcpaint:calc b64.encode.bits append value 0
data modify storage mcpaint:calc b64.encode.bits append value 0
function mcpaint:b64/encode/bits_to_char
data modify storage mcpaint:calc b64.encode.chars append value "="
execute unless data storage mcpaint:calc b64.encode.bits[5] run data modify storage mcpaint:calc b64.encode.chars append value "="