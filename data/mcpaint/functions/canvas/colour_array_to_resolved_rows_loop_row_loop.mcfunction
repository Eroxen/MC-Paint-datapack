execute store result score new_colour mcpaint.calc run data get storage mcpaint:calc array_op.array[0][0] 1


execute if score length mcpaint.calc matches 1.. unless score colour mcpaint.calc = new_colour mcpaint.calc run scoreboard players set different mcpaint.calc 1
execute if score length mcpaint.calc matches 64.. run scoreboard players set different mcpaint.calc 1

execute if score different mcpaint.calc matches 0 run scoreboard players add length mcpaint.calc 1

execute if score different mcpaint.calc matches 1 run function mcpaint:canvas/get_segment


data remove storage mcpaint:calc array_op.array[0][0]
execute if data storage mcpaint:calc array_op.array[0][0] run function mcpaint:canvas/colour_array_to_resolved_rows_loop_row_loop