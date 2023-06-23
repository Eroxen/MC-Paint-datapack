data modify storage mcpaint:calc set_pixel.write_c append from storage mcpaint:calc set_pixel.read_c[0]
data remove storage mcpaint:calc set_pixel.read_c[0]
scoreboard players remove i mcpaint.calc 1
execute if score i mcpaint.calc matches 1.. run function mcpaint:canvas/set_pixel_loop