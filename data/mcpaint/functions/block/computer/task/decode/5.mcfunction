data modify storage mcpaint:calc canvas set from entity @s data.task.data
function mcpaint:canvas/async/colour_array_to_resolved_rows_all
data modify entity @s data.task.data set from storage mcpaint:calc canvas
execute unless data storage mcpaint:calc canvas.async_catrra_in_progress run scoreboard players add step mcpaint.calc 1