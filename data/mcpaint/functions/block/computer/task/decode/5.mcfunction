data modify storage mcpaint:calc api.canvas.canvas set from entity @s data.task.data
function mcpaint:canvas/api/compile_grid
data modify entity @s data.task.data set from storage mcpaint:calc api.canvas.canvas
scoreboard players add step mcpaint.calc 1