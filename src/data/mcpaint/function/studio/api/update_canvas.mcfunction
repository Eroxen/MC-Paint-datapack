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
execute as @e[type=text_display,tag=mcpaint.studio.text_display.canvas,distance=..0.1,limit=1] run function mcpaint:canvas/api/apply_to_text_display with storage mcpaint:calc internal.studio.data.display_settings