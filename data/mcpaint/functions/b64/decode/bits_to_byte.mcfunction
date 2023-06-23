scoreboard players set byte mcpaint.calc 0
execute store result score bit mcpaint.calc run data get storage mcpaint:calc b64.decode.bits[7] 1
scoreboard players operation byte mcpaint.calc += bit mcpaint.calc
execute store result score bit mcpaint.calc run data get storage mcpaint:calc b64.decode.bits[6] 2
scoreboard players operation byte mcpaint.calc += bit mcpaint.calc
execute store result score bit mcpaint.calc run data get storage mcpaint:calc b64.decode.bits[5] 4
scoreboard players operation byte mcpaint.calc += bit mcpaint.calc
execute store result score bit mcpaint.calc run data get storage mcpaint:calc b64.decode.bits[4] 8
scoreboard players operation byte mcpaint.calc += bit mcpaint.calc
execute store result score bit mcpaint.calc run data get storage mcpaint:calc b64.decode.bits[3] 16
scoreboard players operation byte mcpaint.calc += bit mcpaint.calc
execute store result score bit mcpaint.calc run data get storage mcpaint:calc b64.decode.bits[2] 32
scoreboard players operation byte mcpaint.calc += bit mcpaint.calc
execute store result score bit mcpaint.calc run data get storage mcpaint:calc b64.decode.bits[1] 64
scoreboard players operation byte mcpaint.calc += bit mcpaint.calc
execute store result score bit mcpaint.calc run data get storage mcpaint:calc b64.decode.bits[0] 128
scoreboard players operation byte mcpaint.calc += bit mcpaint.calc

data modify storage mcpaint:calc b64.decode.bytes append value 0
execute store result storage mcpaint:calc b64.decode.bytes[-1] int 1 run scoreboard players get byte mcpaint.calc

data remove storage mcpaint:calc b64.decode.bits[0]
data remove storage mcpaint:calc b64.decode.bits[0]
data remove storage mcpaint:calc b64.decode.bits[0]
data remove storage mcpaint:calc b64.decode.bits[0]
data remove storage mcpaint:calc b64.decode.bits[0]
data remove storage mcpaint:calc b64.decode.bits[0]
data remove storage mcpaint:calc b64.decode.bits[0]
data remove storage mcpaint:calc b64.decode.bits[0]