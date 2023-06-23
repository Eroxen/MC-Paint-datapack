execute unless data storage mcpaint:calc canvas.async_catrra_in_progress run function mcpaint:canvas/async/colour_array_to_resolved_rows_all_start

summon item_display ~ ~ ~ {Tags:["mcpaint.resolve_text"]}
scoreboard players set canvas.async.iter mcpaint.calc 0

execute if data storage mcpaint:calc array_op.array[0] if score canvas.async.iter mcpaint.calc < canvas.async.max_iter mcpaint.config as @e[type=minecraft:item_display,tag=mcpaint.resolve_text,distance=..0.1,limit=1] run function mcpaint:canvas/async/colour_array_to_resolved_rows_all_loop

data modify storage mcpaint:calc canvas.async_catrra_in_progress.array_op set from storage mcpaint:calc array_op
execute unless data storage mcpaint:calc array_op.array[0] run function mcpaint:canvas/async/colour_array_to_resolved_rows_all_finish

kill @e[type=minecraft:item_display,tag=mcpaint.resolve_text,distance=..0.1,limit=1]