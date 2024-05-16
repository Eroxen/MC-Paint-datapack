data modify storage mcpaint:calc internal.studio.ui.data set from entity @s data
function mcpaint:studio/internal/ui/close

data modify storage mcpaint:calc internal.studio.data.filepath set from storage mcpaint:calc internal.studio.ui.data.filepath
data modify entity @e[type=marker,tag=mcpaint.studio.marker,distance=..0.1,limit=1] data.filepath set from storage mcpaint:calc internal.studio.data.filepath

execute store result score #canvas.width_blocks mcpaint.calc run data get storage mcpaint:calc internal.studio.ui.data.width_blocks 1
execute store result score #canvas.width_px mcpaint.calc run data get storage mcpaint:calc internal.studio.ui.data.width_px 1
execute store result score #canvas.height_blocks mcpaint.calc run data get storage mcpaint:calc internal.studio.ui.data.height_blocks 1
execute store result score #canvas.height_px mcpaint.calc run data get storage mcpaint:calc internal.studio.ui.data.height_px 1
function mcpaint:canvas/api/create_empty
execute as @e[type=marker,tag=mcpaint.studio.marker,distance=..0.1,limit=1] run function mcpaint:studio/api/update_canvas

function mcpaint:studio/internal/event/save
execute as @e[type=marker,tag=mcpaint.studio.marker,distance=..0.1,limit=1] run function mcpaint:studio/internal/event/update_size