execute store result score b64.encode.colour2 mcpaint.calc run data get storage mcpaint:calc b64.encode.colours[0] 1
data remove storage mcpaint:calc b64.encode.colours[0]

scoreboard players add b64.encode.length mcpaint.calc 1
execute unless score b64.encode.colour2 mcpaint.calc = b64.encode.colour mcpaint.calc run function mcpaint:b64/encode/convert/canvas/different_colour
execute if score b64.encode.length mcpaint.calc matches 128.. run function mcpaint:b64/encode/convert/canvas/different_colour

execute if data storage mcpaint:calc b64.encode.colours[0] run function mcpaint:b64/encode/convert/canvas/loop2