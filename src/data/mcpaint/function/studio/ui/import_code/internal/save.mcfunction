data modify storage mcpaint:calc internal.studio.ui.data set from entity @s data
function mcpaint:studio/internal/ui/close

data modify storage mcpaint:calc internal.studio.data.filepath set from storage mcpaint:calc internal.studio.ui.data.filepath
data modify storage mcpaint:calc api.canvas.canvas set from storage mcpaint:calc internal.studio.ui.data.canvas
function mcpaint:studio/api/update_canvas

function mcpaint:studio/internal/event/save
function mcpaint:studio/internal/event/update_size