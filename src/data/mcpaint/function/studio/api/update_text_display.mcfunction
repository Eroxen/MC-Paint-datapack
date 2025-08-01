#####################################################################
# studio/api/update_text_display.mcfunction
# written by Eroxen
#
# Called on a studio marker.
# Recalculates the text display transformation.
#####################################################################

data modify storage mcpaint:calc internal.studio.data set from entity @s data
data modify storage mcpaint:calc api.canvas.canvas set from storage mcpaint:calc internal.studio.data.canvas
data modify storage mcpaint:calc api.canvas.get_transformation set value {offset_z:-0.4375f}
function mcpaint:canvas/api/get_transformation_painting
execute at @s run data modify entity @e[type=text_display,tag=mcpaint.studio.text_display.canvas,distance=..0.1,limit=1] transformation set from storage mcpaint:calc api.canvas.get_transformation.transformation