data modify storage mcpaint:calc b64.encode.colours set value []
execute store result score b64.encode.colour mcpaint.calc run data get storage mcpaint:calc b64.encode.canvas.colour_array[0][0] 1
scoreboard players set b64.encode.length mcpaint.calc -1

execute if data storage mcpaint:calc b64.encode.canvas.colour_array[0] run function mcpaint:b64/encode/convert/canvas/loop
scoreboard players add b64.encode.length mcpaint.calc 1
function mcpaint:b64/encode/convert/canvas/different_colour

#tellraw @a {"nbt":"b64.encode.bytes","storage":"mcpaint:calc"}