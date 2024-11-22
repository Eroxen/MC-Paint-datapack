#####################################################################
# canvas/api/resize_grid.mcfunction
# written by Eroxen
#
# Converts a 2D colour array of arbitrary size to the
# specified output size using nearest neighbour interpolation
#
# Storage input:
# - mcpaint:calc api.canvas.resize_grid.input: colour array
# - mcpaint:calc api.canvas.resize_grid.output_size:
#   - width: int
#   - height: int
#
# Storage output :
# - mcpaint:calc api.canvas.resize_grid.output: colour array
#####################################################################

data modify storage mcpaint:calc internal.canvas.resize_grid set value {in:[],out:[]}

data modify storage mcpaint:calc internal.canvas.resize_grid.in set from storage mcpaint:calc api.canvas.resize_grid.input
execute store result score #canvas.resize_grid.in_size mcpaint.calc run data get storage mcpaint:calc internal.canvas.resize_grid.in[0]
execute store result score #canvas.resize_grid.out_size mcpaint.calc run data get storage mcpaint:calc api.canvas.resize_grid.output_size.width 1
scoreboard players set #canvas.resize_grid.i mcpaint.calc 0
execute if score #canvas.resize_grid.i mcpaint.calc < #canvas.resize_grid.out_size mcpaint.calc run function mcpaint:canvas/internal/resize_grid/loop

data modify storage mcpaint:calc internal.canvas.resize_grid.in set from storage mcpaint:calc internal.canvas.resize_grid.out
data modify storage mcpaint:calc internal.canvas.resize_grid.out set value []
execute store result score #canvas.resize_grid.in_size mcpaint.calc run data get storage mcpaint:calc internal.canvas.resize_grid.in[0]
execute store result score #canvas.resize_grid.out_size mcpaint.calc run data get storage mcpaint:calc api.canvas.resize_grid.output_size.height 1
scoreboard players set #canvas.resize_grid.i mcpaint.calc 0
execute if score #canvas.resize_grid.i mcpaint.calc < #canvas.resize_grid.out_size mcpaint.calc run function mcpaint:canvas/internal/resize_grid/loop

data modify storage mcpaint:calc api.canvas.resize_grid.output set from storage mcpaint:calc internal.canvas.resize_grid.out