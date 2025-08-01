function mcpaint:database/api/get_work with entity @s item.components.minecraft:custom_data.mcpaint.custom_painting.filepath
execute if score #database.found mcpaint.calc matches 0 run return fail
data modify storage mcpaint:calc api.canvas.canvas set from storage mcpaint:calc api.database.work.canvas
execute on passengers if entity @s[type=text_display] run function mcpaint:canvas/api/apply_to_text_display with storage mcpaint:calc internal.custom_painting.data.options