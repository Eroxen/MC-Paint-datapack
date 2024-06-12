#####################################################################
# canvas/api/get_fullbright_shading.mcfunction
# written by Eroxen
#
# Gets the resolved text along with the fullbright font.
#
# Storage output:
# - mcpaint:calc api.canvas.text: text element
#####################################################################

data modify storage mcpaint:calc api.canvas.text set value '{"storage":"mcpaint:calc","nbt":"api.canvas.canvas.resolved_text","interpret":true,"font":"mcpaint:ink/fullbright"}'