#####################################################################
# canvas/api/get_rotation_shading.mcfunction
# written by Eroxen
#
# Gets the resolved text along with the correct font to account
# for axis rotation, based on the rotation of the executing entity.
#
# Storage output:
# - mcpaint:calc api.canvas.text: text element
#####################################################################

data modify storage mcpaint:calc api.canvas.text set value '{"storage":"mcpaint:calc","nbt":"api.canvas.canvas.resolved_text","interpret":true,"font":"mcpaint:ink/fullbright"}'
execute if entity @s[x_rotation=-45..45,y_rotation=-45..45] run data modify storage mcpaint:calc api.canvas.text set value '{"storage":"mcpaint:calc","nbt":"api.canvas.canvas.resolved_text","interpret":true,"font":"mcpaint:ink/z_face"}'
execute if entity @s[x_rotation=-45..45,y_rotation=135..225] run data modify storage mcpaint:calc api.canvas.text set value '{"storage":"mcpaint:calc","nbt":"api.canvas.canvas.resolved_text","interpret":true,"font":"mcpaint:ink/z_face"}'
execute if entity @s[x_rotation=-45..45,y_rotation=45..135] run data modify storage mcpaint:calc api.canvas.text set value '{"storage":"mcpaint:calc","nbt":"api.canvas.canvas.resolved_text","interpret":true,"font":"mcpaint:ink/x_face"}'
execute if entity @s[x_rotation=-45..45,y_rotation=225..315] run data modify storage mcpaint:calc api.canvas.text set value '{"storage":"mcpaint:calc","nbt":"api.canvas.canvas.resolved_text","interpret":true,"font":"mcpaint:ink/x_face"}'
execute if entity @s[x_rotation=45..90] run data modify storage mcpaint:calc api.canvas.text set value '{"storage":"mcpaint:calc","nbt":"api.canvas.canvas.resolved_text","interpret":true,"font":"mcpaint:ink/bottom_face"}'