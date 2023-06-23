data modify storage mcpaint:calc b64.decode set from entity @s data.task.data
data modify storage mcpaint:calc canvas set value {}
data modify storage mcpaint:calc canvas.colour_array set from storage mcpaint:calc b64.decode.colour_array
data modify storage mcpaint:calc canvas.width_blocks set from storage mcpaint:calc b64.decode.header.width_blocks
data modify storage mcpaint:calc canvas.height_blocks set from storage mcpaint:calc b64.decode.header.height_blocks
data modify storage mcpaint:calc canvas.width_px set from storage mcpaint:calc b64.decode.header.width_px
data modify storage mcpaint:calc canvas.height_px set from storage mcpaint:calc b64.decode.header.height_px
data modify entity @s data.task.data set from storage mcpaint:calc canvas
scoreboard players add step mcpaint.calc 1