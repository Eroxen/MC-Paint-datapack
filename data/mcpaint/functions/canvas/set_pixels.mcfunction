function mcpaint:canvas/get_info
data modify storage mcpaint:calc updated_rows set value []
data modify storage mcpaint:calc set_pixels.previous set value []
data modify storage mcpaint:calc set_pixels.changed_row set value 0b
data modify storage mcpaint:calc set_pixels.changed_any set value 0b

data modify storage mcpaint:calc set_pixels.read_c set from storage mcpaint:calc canvas.colour_array
data modify storage mcpaint:calc set_pixels.write_c set value []

execute store result score origin_u mcpaint.calc run data get storage mcpaint:calc set_pixels.u 1
execute store result score origin_v mcpaint.calc run data get storage mcpaint:calc set_pixels.v 1


scoreboard players set current_u mcpaint.calc 0
scoreboard players set current_v mcpaint.calc 0
scoreboard players set inside_canvas mcpaint.calc 0
execute if data storage mcpaint:calc set_pixels.pixels[0] run function mcpaint:canvas/set_pixels/get_next_uv
execute if score inside_canvas mcpaint.calc matches 1 run function mcpaint:canvas/set_pixels/loop

scoreboard players operation next_u mcpaint.calc = canvas_height_px mcpaint.calc
execute if score next_u mcpaint.calc > current_u mcpaint.calc run function mcpaint:canvas/set_pixels/skip_row

data modify storage mcpaint:calc set_pixels.write_c[-1] append from storage mcpaint:calc set_pixels.read_c[0][]

data modify storage mcpaint:calc canvas.colour_array set from storage mcpaint:calc set_pixels.write_c
execute if data storage mcpaint:calc set_pixels{changed_any:1b} run function mcpaint:canvas/colour_array_to_resolved_rows_updated