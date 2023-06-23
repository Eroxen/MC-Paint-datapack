scoreboard players operation byte mcpaint.calc = b64.encode.length mcpaint.calc
execute if score b64.encode.colour mcpaint.calc matches -1 run scoreboard players add byte mcpaint.calc 128
execute if score b64.encode.colour mcpaint.calc matches -1 run data modify storage mcpaint:calc b64.encode.bytes[-2] set value 128
scoreboard players remove byte mcpaint.calc 1
data modify storage mcpaint:calc b64.encode.bytes append value 0
execute store result storage mcpaint:calc b64.encode.bytes[-1] int 1 run scoreboard players get byte mcpaint.calc