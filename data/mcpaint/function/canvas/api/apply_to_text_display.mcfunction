#####################################################################
# canvas/api/apply_to_text_display.mcfunction
# written by Eroxen
#
# Applies the resolved text to the executing text display.
#
# Storage input:
# - mcpaint:calc api.canvas.canvas: canvas object
#
# Macro arguments:
# - axis_shading: (bool) whether or not to use shading based on rotation
#####################################################################

data modify storage mcpaint:calc internal.canvas.text_display set value {}
$data modify storage mcpaint:calc internal.canvas.text_display.axis_shading set value $(axis_shading)b

execute if data storage mcpaint:calc internal.canvas.text_display{axis_shading:0b} run function mcpaint:canvas/api/get_fullbright_shading
execute if data storage mcpaint:calc internal.canvas.text_display{axis_shading:1b} run function mcpaint:canvas/api/get_rotation_shading
data modify entity @s text set from storage mcpaint:calc api.canvas.text