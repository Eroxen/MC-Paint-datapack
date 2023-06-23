data modify storage mcpaint:calc canvas.resolved_rows set from storage mcpaint:calc array_op.resolved_rows
data modify storage mcpaint:calc resolve_text set value '{"font":"mcpaint:ink","storage":"mcpaint:calc","nbt":"canvas.resolved_rows[]","separator":"\\n","interpret":true}'
loot replace entity @e[type=minecraft:item_display,tag=mcpaint.resolve_text,distance=..0.1,limit=1] container.0 loot mcpaint:resolve_text
data modify storage mcpaint:calc canvas.resolved_text set from entity @e[type=minecraft:item_display,tag=mcpaint.resolve_text,distance=..0.1,limit=1] item.tag.display.Name
execute store result storage mcpaint:calc canvas.resolved_text_size int 1 run data get storage mcpaint:calc canvas.resolved_text

data remove storage mcpaint:calc canvas.async_catrra_in_progress