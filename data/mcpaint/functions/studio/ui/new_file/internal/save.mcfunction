data modify storage mcpaint:calc internal.studio.ui.data set from entity @s data
function mcpaint:studio/internal/ui/close

data modify storage mcpaint:calc internal.studio.data.filepath set from storage mcpaint:calc internal.studio.ui.data.filepath

execute store result score #canvas.width_blocks mcpaint.calc run data get storage mcpaint:calc internal.studio.ui.data.width_blocks 1
execute store result score #canvas.width_px mcpaint.calc run data get storage mcpaint:calc internal.studio.ui.data.width_px 1
execute store result score #canvas.height_blocks mcpaint.calc run data get storage mcpaint:calc internal.studio.ui.data.height_blocks 1
execute store result score #canvas.height_px mcpaint.calc run data get storage mcpaint:calc internal.studio.ui.data.height_px 1
function mcpaint:canvas/api/create_empty
function mcpaint:studio/api/update_canvas

function mcpaint:studio/internal/event/save
function mcpaint:studio/internal/event/update_size