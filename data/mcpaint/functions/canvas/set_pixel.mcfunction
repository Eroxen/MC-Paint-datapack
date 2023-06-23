function mcpaint:canvas/get_info

data modify storage mcpaint:calc set_pixel.changed set value 0b

data modify storage mcpaint:calc set_pixel.read_c set from storage mcpaint:calc canvas.colour_array
data modify storage mcpaint:calc set_pixel.write_c set value []
execute store result score i mcpaint.calc run data get storage mcpaint:calc set_pixel.u 1
execute if score i mcpaint.calc matches 1.. run function mcpaint:canvas/set_pixel_loop

data modify storage mcpaint:calc set_pixel.rows_0_c set from storage mcpaint:calc set_pixel.write_c
data modify storage mcpaint:calc set_pixel.rows_1_c set from storage mcpaint:calc set_pixel.read_c
data modify storage mcpaint:calc set_pixel.read_c set from storage mcpaint:calc set_pixel.rows_1_c[0]
data remove storage mcpaint:calc set_pixel.rows_1_c[0]
data modify storage mcpaint:calc set_pixel.write_c set value []
execute store result score i mcpaint.calc run data get storage mcpaint:calc set_pixel.v 1
execute if score i mcpaint.calc matches 1.. run function mcpaint:canvas/set_pixel_loop

data modify storage mcpaint:calc set_pixel.previous_colour set from storage mcpaint:calc set_pixel.read_c[0]
execute store success storage mcpaint:calc set_pixel.changed byte 1 run data modify storage mcpaint:calc set_pixel.read_c[0] set from storage mcpaint:calc set_pixel.colour
execute if data storage mcpaint:calc set_pixel{changed:1b} store result score colour mcpaint.calc run data get storage mcpaint:calc set_pixel.colour 1
execute if data storage mcpaint:calc set_pixel{changed:1b} run function mcpaint:colour/get_colour
execute if data storage mcpaint:calc set_pixel{changed:1b} run data modify storage mcpaint:calc set_pixel.read_t[0] set from storage mcpaint:calc pixel

data modify storage mcpaint:calc set_pixel.write_c append from storage mcpaint:calc set_pixel.read_c[]
data modify storage mcpaint:calc set_pixel.rows_0_c append from storage mcpaint:calc set_pixel.write_c
data modify storage mcpaint:calc set_pixel.rows_0_c append from storage mcpaint:calc set_pixel.rows_1_c[]

data modify storage mcpaint:calc canvas.colour_array set from storage mcpaint:calc set_pixel.rows_0_c
execute if data storage mcpaint:calc set_pixel{changed:1b} run data modify storage mcpaint:calc updated_rows set value []
execute if data storage mcpaint:calc set_pixel{changed:1b} run data modify storage mcpaint:calc updated_rows append from storage mcpaint:calc set_pixel.u
execute if data storage mcpaint:calc set_pixel{changed:1b} run function mcpaint:canvas/colour_array_to_resolved_rows_updated