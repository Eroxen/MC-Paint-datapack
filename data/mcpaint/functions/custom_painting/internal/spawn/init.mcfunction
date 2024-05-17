tag @s remove mcpaint.custom_painting.item_display.new

execute on passengers if entity @s[type=text_display] run data modify entity @s text set from storage mcpaint:calc internal.custom_painting.spawn.canvas.resolved_text

data modify storage mcpaint:calc internal.custom_painting.data set value {}
data modify storage mcpaint:calc internal.custom_painting.data.filepath set from storage mcpaint:calc api.custom_painting.spawn.filepath
data modify storage mcpaint:calc internal.custom_painting.data.options set from storage mcpaint:calc api.custom_painting.spawn.options
data modify storage mcpaint:calc internal.custom_painting.data.width set from storage mcpaint:calc api.canvas.canvas.width_blocks
data modify storage mcpaint:calc internal.custom_painting.data.height set from storage mcpaint:calc api.canvas.canvas.height_blocks

data modify entity @s item.components.minecraft:custom_data.mcpaint.custom_painting set from storage mcpaint:calc internal.custom_painting.data