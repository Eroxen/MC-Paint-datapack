data modify storage mcpaint:calc b64.decode.colour_array[-1] append value 0
execute store result storage mcpaint:calc b64.decode.colour_array[-1][-1] int 1 run scoreboard players get b64.decode.colour mcpaint.calc
scoreboard players add b64.decode.width mcpaint.calc 1
execute if score b64.decode.width mcpaint.calc >= b64.decode.max_width mcpaint.calc run function mcpaint:b64/decode/interpret/new_row

scoreboard players add b64.iter mcpaint.calc 1