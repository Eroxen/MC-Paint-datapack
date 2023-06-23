execute store result score b64.decode.length mcpaint.calc run data get storage mcpaint:calc b64.decode.bytes[0] 1
execute if score b64.decode.length mcpaint.calc matches 128.. run scoreboard players set b64.decode.colour mcpaint.calc -1
execute if score b64.decode.length mcpaint.calc matches 128.. run scoreboard players remove b64.decode.length mcpaint.calc 128
scoreboard players add b64.decode.length mcpaint.calc 1

data remove storage mcpaint:calc b64.decode.bytes[0]