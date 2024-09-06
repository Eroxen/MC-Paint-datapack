data modify storage mcpaint:calc api.canvas.canvas set from storage mcpaint:calc internal.studio.ui.data.canvas
function mcpaint:studio/internal/ui/close
execute as @e[type=marker,tag=mcpaint.studio.ui_element.import_code,distance=..0.1,limit=1] run function mcpaint:studio/ui/import_code/internal/set_canvas