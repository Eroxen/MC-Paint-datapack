execute if score length mcpaint.calc matches 1..63 run function mcpaint:b64/encode/tail/1_63
execute if score length mcpaint.calc matches 64..127 run function mcpaint:b64/encode/tail/64_127
execute if score length mcpaint.calc matches 128..191 run function mcpaint:b64/encode/tail/128_191
execute if score length mcpaint.calc matches 192..255 run function mcpaint:b64/encode/tail/192_255
