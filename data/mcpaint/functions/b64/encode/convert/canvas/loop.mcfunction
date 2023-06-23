data modify storage mcpaint:calc b64.encode.colours append from storage mcpaint:calc b64.encode.canvas.colour_array[0][]
data remove storage mcpaint:calc b64.encode.canvas.colour_array[0]

execute if data storage mcpaint:calc b64.encode.colours[0] run function mcpaint:b64/encode/convert/canvas/loop2

execute if data storage mcpaint:calc b64.encode.canvas.colour_array[0] run function mcpaint:b64/encode/convert/canvas/loop