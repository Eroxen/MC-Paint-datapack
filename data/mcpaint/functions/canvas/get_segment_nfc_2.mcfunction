function mcpaint:segment/get_colour
execute unless score colour mcpaint.calc matches -1 run data modify storage mcpaint:calc resolve_text set from storage mcpaint:calc segment.colour
execute unless score colour mcpaint.calc matches -1 run loot replace entity @s container.0 loot mcpaint:resolve_text
execute unless score colour mcpaint.calc matches -1 run data modify storage mcpaint:calc segment.colour set from entity @s item.tag.display.Name
data modify storage mcpaint:calc array_op.row append from storage mcpaint:calc segment.colour