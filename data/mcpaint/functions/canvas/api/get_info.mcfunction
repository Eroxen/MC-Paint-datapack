#####################################################################
# canvas/api/get_info.mcfunction
# written by Eroxen
#
# Reads the info on a canvas object, and fixes missing fields.
#
# Storage input:
# - mcpaint:calc api.canvas.canvas: canvas object
#
# Scoreboard output:
# - mcpaint.calc:
#   - #canvas.width_px: width (pixels)
#   - #canvas.height_px: height (pixels)
#   - #canvas.width_blocks: width (blocks)
#   - #canvas.height_blocks: height (blocks)
#####################################################################

execute unless data storage mcpaint:calc api.canvas.canvas.resolved_text run function mcpaint:canvas/api/compile_grid
execute unless data storage mcpaint:calc api.canvas.canvas.resolved_text_size store result storage mcpaint:calc api.canvas.canvas.resolved_text_size int 1 run data get storage mcpaint:calc api.canvas.canvas.resolved_text
execute unless data storage mcpaint:calc api.canvas.canvas.width_px store result storage mcpaint:calc api.canvas.canvas.width_px int 1 run data get storage mcpaint:calc api.canvas.canvas.colour_array[0]
execute unless data storage mcpaint:calc api.canvas.canvas.height_px store result storage mcpaint:calc api.canvas.canvas.height_px int 1 run data get storage mcpaint:calc api.canvas.canvas.colour_array
execute unless data storage mcpaint:calc api.canvas.canvas.width_blocks run data modify storage mcpaint:calc api.canvas.canvas.width_blocks set value 1
execute unless data storage mcpaint:calc api.canvas.canvas.height_blocks run data modify storage mcpaint:calc api.canvas.canvas.height_blocks set value 1

execute store result score #canvas.width_px mcpaint.calc run data get storage mcpaint:calc api.canvas.canvas.width_px 1
execute store result score #canvas.height_px mcpaint.calc run data get storage mcpaint:calc api.canvas.canvas.height_px 1
execute store result score #canvas.width_blocks mcpaint.calc run data get storage mcpaint:calc api.canvas.canvas.width_blocks 1
execute store result score #canvas.height_blocks mcpaint.calc run data get storage mcpaint:calc api.canvas.canvas.height_blocks 1