scoreboard players set b64.encode.extend mcpaint.calc 1
execute if score b64.encode.colour mcpaint.calc matches 0.. if score b64.encode.length mcpaint.calc matches 1 run scoreboard players set b64.encode.extend mcpaint.calc 0

scoreboard players set op mcpaint.calc 256
scoreboard players operation byte mcpaint.calc = b64.encode.colour mcpaint.calc
scoreboard players operation byte mcpaint.calc /= op mcpaint.calc
execute if score b64.encode.extend mcpaint.calc matches 1 run scoreboard players add byte mcpaint.calc 128
data modify storage mcpaint:calc b64.encode.bytes append value 0
execute store result storage mcpaint:calc b64.encode.bytes[-1] int 1 run scoreboard players get byte mcpaint.calc

scoreboard players operation byte mcpaint.calc = b64.encode.colour mcpaint.calc
scoreboard players operation byte mcpaint.calc %= op mcpaint.calc
data modify storage mcpaint:calc b64.encode.bytes append value 0
execute store result storage mcpaint:calc b64.encode.bytes[-1] int 1 run scoreboard players get byte mcpaint.calc

execute if score b64.encode.extend mcpaint.calc matches 1 run function mcpaint:b64/encode/convert/canvas/different_colour_ext

#################
scoreboard players operation b64.encode.colour mcpaint.calc = b64.encode.colour2 mcpaint.calc
scoreboard players set b64.encode.length mcpaint.calc 0