execute if score next_u mcpaint.calc > current_u mcpaint.calc run function mcpaint:canvas/set_pixels/skip_row
execute if score next_v mcpaint.calc > current_v mcpaint.calc if score current_v mcpaint.calc matches 0 run data modify storage mcpaint:calc set_pixels.write_c append value []
execute if score next_v mcpaint.calc > current_v mcpaint.calc run function mcpaint:canvas/set_pixels/step_row

data modify storage mcpaint:calc set_pixels.previous_colour set from storage mcpaint:calc set_pixels.read_c[0][0]
execute store success storage mcpaint:calc set_pixels.changed byte 1 run data modify storage mcpaint:calc set_pixels.read_c[0][0] set from storage mcpaint:calc set_pixels.colour
execute if data storage mcpaint:calc set_pixels{changed:1b} run data modify storage mcpaint:calc set_pixels.changed_row set value 1b
execute if data storage mcpaint:calc set_pixels{changed:1b} run data modify storage mcpaint:calc set_pixels.changed_any set value 1b
execute if data storage mcpaint:calc set_pixels{changed:1b} run data modify storage mcpaint:calc set_pixels.previous append value {}
execute if data storage mcpaint:calc set_pixels{changed:1b} run data modify storage mcpaint:calc set_pixels.previous[-1].u set from storage mcpaint:calc set_pixels.last_pixel.u
execute if data storage mcpaint:calc set_pixels{changed:1b} run data modify storage mcpaint:calc set_pixels.previous[-1].v set from storage mcpaint:calc set_pixels.last_pixel.v
execute if data storage mcpaint:calc set_pixels{changed:1b} run data modify storage mcpaint:calc set_pixels.previous[-1].colour set from storage mcpaint:calc set_pixels.previous_colour

scoreboard players set inside_canvas mcpaint.calc 0
execute if data storage mcpaint:calc set_pixels.pixels[0] run function mcpaint:canvas/set_pixels/get_next_uv
execute if score inside_canvas mcpaint.calc matches 1 run function mcpaint:canvas/set_pixels/loop