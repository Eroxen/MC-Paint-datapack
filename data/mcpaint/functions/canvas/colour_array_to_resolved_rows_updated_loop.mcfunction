execute store result score target_row mcpaint.calc run data get storage mcpaint:calc array_op.updated[0] 1

data modify storage mcpaint:calc array_op.row set value []
execute if score target_row mcpaint.calc = current_row mcpaint.calc if data storage mcpaint:calc array_op.array[0][0] run function mcpaint:canvas/colour_array_to_resolved_rows_loop_row
execute if score target_row mcpaint.calc = current_row mcpaint.calc run data remove storage mcpaint:calc array_op.updated[0]
execute unless score target_row mcpaint.calc = current_row mcpaint.calc run data modify storage mcpaint:calc array_op.resolved_rows append from storage mcpaint:calc array_op.old[0]

data remove storage mcpaint:calc array_op.array[0]
data remove storage mcpaint:calc array_op.old[0]
scoreboard players add current_row mcpaint.calc 1
execute if data storage mcpaint:calc array_op.array[0] if data storage mcpaint:calc array_op.updated[0] run function mcpaint:canvas/colour_array_to_resolved_rows_updated_loop