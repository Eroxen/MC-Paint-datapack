scoreboard players set byte mcpaint.calc 0
execute store result score bit mcpaint.calc run data get storage mcpaint:calc b64.encode.bits[5] 1
scoreboard players operation byte mcpaint.calc += bit mcpaint.calc
execute store result score bit mcpaint.calc run data get storage mcpaint:calc b64.encode.bits[4] 2
scoreboard players operation byte mcpaint.calc += bit mcpaint.calc
execute store result score bit mcpaint.calc run data get storage mcpaint:calc b64.encode.bits[3] 4
scoreboard players operation byte mcpaint.calc += bit mcpaint.calc
execute store result score bit mcpaint.calc run data get storage mcpaint:calc b64.encode.bits[2] 8
scoreboard players operation byte mcpaint.calc += bit mcpaint.calc
execute store result score bit mcpaint.calc run data get storage mcpaint:calc b64.encode.bits[1] 16
scoreboard players operation byte mcpaint.calc += bit mcpaint.calc
execute store result score bit mcpaint.calc run data get storage mcpaint:calc b64.encode.bits[0] 32
scoreboard players operation byte mcpaint.calc += bit mcpaint.calc
data remove storage mcpaint:calc b64.encode.bits[0]
data remove storage mcpaint:calc b64.encode.bits[0]
data remove storage mcpaint:calc b64.encode.bits[0]
data remove storage mcpaint:calc b64.encode.bits[0]
data remove storage mcpaint:calc b64.encode.bits[0]
data remove storage mcpaint:calc b64.encode.bits[0]
function mcpaint:b64/encode/bits_to_char/0_63