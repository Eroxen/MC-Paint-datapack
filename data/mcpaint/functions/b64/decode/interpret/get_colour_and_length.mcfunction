execute store result score b64.decode.colour_1 mcpaint.calc run data get storage mcpaint:calc b64.decode.bytes[0] 1
execute store result score b64.decode.colour_2 mcpaint.calc run data get storage mcpaint:calc b64.decode.bytes[1] 1
data remove storage mcpaint:calc b64.decode.bytes[0]
data remove storage mcpaint:calc b64.decode.bytes[0]

execute store success score b64.decode.extend mcpaint.calc if score b64.decode.colour_1 mcpaint.calc matches 128..
execute if score b64.decode.extend mcpaint.calc matches 1 run scoreboard players remove b64.decode.colour_1 mcpaint.calc 128

scoreboard players set b64.decode.colour mcpaint.calc 256
scoreboard players operation b64.decode.colour mcpaint.calc *= b64.decode.colour_1 mcpaint.calc
scoreboard players operation b64.decode.colour mcpaint.calc += b64.decode.colour_2 mcpaint.calc

execute if score b64.decode.extend mcpaint.calc matches 1 run function mcpaint:b64/decode/interpret/get_colour_and_length_extend

#execute if score b64.decode.extend mcpaint.calc matches 0 run tellraw @a {"score":{"name":"b64.decode.colour","objective":"mcpaint.calc"}}
#execute if score b64.decode.extend mcpaint.calc matches 1 run tellraw @a [{"score":{"name":"b64.decode.colour","objective":"mcpaint.calc"}},{"text":" * "},{"score":{"name":"b64.decode.length","objective":"mcpaint.calc"}}]