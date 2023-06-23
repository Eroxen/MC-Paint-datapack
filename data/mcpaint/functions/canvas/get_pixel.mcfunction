data modify storage mcpaint:calc get_pixel.read set from storage mcpaint:calc canvas.colour_array
execute store result score i mcpaint.calc run data get storage mcpaint:calc get_pixel.u 1
execute if score i mcpaint.calc matches 1.. run function mcpaint:canvas/get_pixel_loop
data modify storage mcpaint:calc get_pixel.read set from storage mcpaint:calc get_pixel.read[0]
execute store result score i mcpaint.calc run data get storage mcpaint:calc get_pixel.v 1
execute if score i mcpaint.calc matches 1.. run function mcpaint:canvas/get_pixel_loop
data modify storage mcpaint:calc get_pixel.colour set from storage mcpaint:calc get_pixel.read[0]