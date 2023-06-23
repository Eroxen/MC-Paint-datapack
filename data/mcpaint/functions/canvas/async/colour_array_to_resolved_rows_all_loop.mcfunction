data modify storage mcpaint:calc array_op.row set value []

execute if data storage mcpaint:calc array_op.array[0][0] run function mcpaint:canvas/colour_array_to_resolved_rows_loop_row

data remove storage mcpaint:calc array_op.array[0]
scoreboard players add canvas.async.iter mcpaint.calc 1
execute if data storage mcpaint:calc array_op.array[0] if score canvas.async.iter mcpaint.calc < canvas.async.max_iter mcpaint.config run function mcpaint:canvas/async/colour_array_to_resolved_rows_all_loop