#####################################################################
# studio/api/update_canvas.mcfunction
# written by Eroxen
#
# Called on a studio marker.
# Updates the canvas.
#
# Storage input:
# - mcpaint:calc api.canvas.canvas: canvas object
#####################################################################

data modify storage mcpaint:calc internal.studio.data.canvas set from storage mcpaint:calc api.canvas.canvas
data modify entity @e[type=text_display,tag=mcpaint.studio.text_display.canvas,distance=..0.1,limit=1] text set from storage mcpaint:calc api.canvas.canvas.resolved_text