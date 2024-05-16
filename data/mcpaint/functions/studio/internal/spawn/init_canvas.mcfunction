execute store result score #canvas.width_px mcpaint.calc run data get storage mcpaint:calc internal.studio.spawn.width 16
execute store result score #canvas.width_blocks mcpaint.calc run data get storage mcpaint:calc internal.studio.spawn.width 1
execute store result score #canvas.height_px mcpaint.calc run data get storage mcpaint:calc internal.studio.spawn.height 16
execute store result score #canvas.height_blocks mcpaint.calc run data get storage mcpaint:calc internal.studio.spawn.height 1

function mcpaint:canvas/api/create_empty
data modify storage mcpaint:calc internal.studio.spawn.canvas set from storage mcpaint:calc api.canvas.canvas