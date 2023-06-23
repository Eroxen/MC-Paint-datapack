data modify storage mcpaint:calc canvas set value {}
data modify storage mcpaint:calc canvas.width_blocks set from storage mcpaint:calc builtin_painting.width
data modify storage mcpaint:calc canvas.height_blocks set from storage mcpaint:calc builtin_painting.height
data modify storage mcpaint:calc canvas.colour_array set from storage mcpaint:calc builtin_painting.colour_array
data modify entity @s data.width set from storage mcpaint:calc builtin_painting.width
data modify entity @s data.height set from storage mcpaint:calc builtin_painting.height
data modify entity @s data.filename set from storage mcpaint:calc builtin_painting.name
data modify entity @s data.canvas set from storage mcpaint:calc canvas

function mcpaint:studio/fix