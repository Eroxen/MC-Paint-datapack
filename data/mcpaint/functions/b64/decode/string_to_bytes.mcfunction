data modify storage mcpaint:calc b64.decode.char set string storage mcpaint:calc b64.decode.string 0 1
function mcpaint:b64/decode/char_to_bits
execute if data storage mcpaint:calc b64.decode.bits[7] unless data storage mcpaint:calc b64.decode{char:"="} run function mcpaint:b64/decode/bits_to_byte

scoreboard players add b64.iter mcpaint.calc 1

data modify storage mcpaint:calc b64.decode.string set string storage mcpaint:calc b64.decode.string 1
execute unless data storage mcpaint:calc b64.decode{string:""} unless data storage mcpaint:calc b64.decode{char:"="} run function mcpaint:b64/decode/string_to_bytes