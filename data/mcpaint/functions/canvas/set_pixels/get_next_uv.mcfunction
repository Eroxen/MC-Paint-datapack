data modify storage mcpaint:calc set_pixels.last_pixel set from storage mcpaint:calc set_pixels.pixels[0]
data remove storage mcpaint:calc set_pixels.pixels[0]
execute store result score next_u mcpaint.calc run data get storage mcpaint:calc set_pixels.last_pixel.u 1
execute store result score next_v mcpaint.calc run data get storage mcpaint:calc set_pixels.last_pixel.v 1
scoreboard players operation next_u mcpaint.calc += origin_u mcpaint.calc
scoreboard players operation next_v mcpaint.calc += origin_v mcpaint.calc
execute if data storage mcpaint:calc set_pixels.last_pixel.colour run data modify storage mcpaint:calc set_pixels.colour set from storage mcpaint:calc set_pixels.last_pixel.colour

execute if score next_u mcpaint.calc matches 0.. if score next_u mcpaint.calc < canvas_height_px mcpaint.calc if score next_v mcpaint.calc matches 0.. if score next_v mcpaint.calc < canvas_width_px mcpaint.calc run scoreboard players set inside_canvas mcpaint.calc 1
execute if score inside_canvas mcpaint.calc matches 0 if data storage mcpaint:calc set_pixels.pixels[0] run function mcpaint:canvas/set_pixels/get_next_uv