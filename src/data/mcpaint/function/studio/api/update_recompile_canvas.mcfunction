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

data modify storage mcpaint:calc internal.studio.data set from entity @s data
data modify storage mcpaint:calc api.canvas.canvas set from storage mcpaint:calc internal.studio.data.canvas
function mcpaint:canvas/api/compile_grid
data modify storage mcpaint:calc internal.studio.data.canvas set from storage mcpaint:calc api.canvas.canvas
data modify entity @s data set from storage mcpaint:calc internal.studio.data

function mcpaint:studio/api/update_text_display