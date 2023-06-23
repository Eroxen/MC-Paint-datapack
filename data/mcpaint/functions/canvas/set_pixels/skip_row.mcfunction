execute if score current_v mcpaint.calc matches 0 run data modify storage mcpaint:calc set_pixels.write_c append from storage mcpaint:calc set_pixels.read_c[0]

execute if score current_v mcpaint.calc matches 1.. run data modify storage mcpaint:calc set_pixels.write_c[-1] append from storage mcpaint:calc set_pixels.read_c[0][]
execute if score current_v mcpaint.calc matches 1.. run scoreboard players set current_v mcpaint.calc 0

data remove storage mcpaint:calc set_pixels.read_c[0]

execute if data storage mcpaint:calc set_pixels{changed_row:1b} run data modify storage mcpaint:calc updated_rows append value -1
execute if data storage mcpaint:calc set_pixels{changed_row:1b} store result storage mcpaint:calc updated_rows[-1] int 1 run scoreboard players get current_u mcpaint.calc
scoreboard players add current_u mcpaint.calc 1
data modify storage mcpaint:calc set_pixels.changed_row set value 0b
execute if score next_u mcpaint.calc > current_u mcpaint.calc run function mcpaint:canvas/set_pixels/skip_row