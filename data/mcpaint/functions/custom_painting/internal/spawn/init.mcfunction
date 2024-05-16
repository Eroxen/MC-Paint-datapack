tag @s remove mcpaint.custom_painting.item_display.new

execute on passengers if entity @s[type=text_display] run data modify entity @s text set from storage mcpaint:calc internal.custom_painting.spawn.canvas.resolved_text

data modify entity @s item.components.minecraft:custom_data.mcpaint.custom_painting set value {}
data modify entity @s item.components.minecraft:custom_data.mcpaint.custom_painting.filepath set from storage mcpaint:calc api.custom_painting.spawn.filepath
data modify entity @s item.components.minecraft:custom_data.mcpaint.custom_painting.options set from storage mcpaint:calc api.custom_painting.spawn.options