execute store result score colour mcpaint.calc run data get storage mcpaint:calc array_op.array[0][0] 1
scoreboard players set length mcpaint.calc 0
scoreboard players set power mcpaint.calc 1
scoreboard players set op mcpaint.calc 2
scoreboard players set different mcpaint.calc 0
scoreboard players set first_colour mcpaint.calc -2
execute if data storage mcpaint:calc array_op.array[0][0] run function mcpaint:canvas/colour_array_to_resolved_rows_loop_row_loop
function mcpaint:canvas/get_segment

execute store result score length mcpaint.calc run data get storage mcpaint:calc array_op.row
#data modify storage mcpaint:calc resolve_text set value '{"nbt":"array_op.row[]","storage":"mcpaint:calc","separator":"","interpret":true}'
function mcpaint:segment/generated_r/1_64
loot replace entity @s container.0 loot mcpaint:resolve_text
data modify storage mcpaint:calc array_op.resolved_rows append from entity @s item.tag.display.Name