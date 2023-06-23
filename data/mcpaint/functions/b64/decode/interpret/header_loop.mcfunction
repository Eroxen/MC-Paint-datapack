data modify storage mcpaint:calc b64.decode.header.array append from storage mcpaint:calc b64.decode.bytes[0]
data remove storage mcpaint:calc b64.decode.bytes[0]
scoreboard players remove i mcpaint.calc 1
execute if score i mcpaint.calc matches 1.. run function mcpaint:b64/decode/interpret/header_loop