data modify storage mcpaint:calc set_pixels.write_c[-1] append from storage mcpaint:calc set_pixels.read_c[0][0]

data remove storage mcpaint:calc set_pixels.read_c[0][0]

scoreboard players add current_v mcpaint.calc 1
execute if score next_v mcpaint.calc > current_v mcpaint.calc run function mcpaint:canvas/set_pixels/step_row