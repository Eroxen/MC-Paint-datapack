scoreboard players operation #canvas.resize_grid.sample mcpaint.calc = #canvas.resize_grid.i mcpaint.calc
scoreboard players operation #canvas.resize_grid.sample mcpaint.calc *= #const.2 mcpaint.calc
scoreboard players add #canvas.resize_grid.sample mcpaint.calc 1
scoreboard players operation #canvas.resize_grid.sample mcpaint.calc *= #canvas.resize_grid.in_size mcpaint.calc
scoreboard players operation #canvas.resize_grid.sample mcpaint.calc /= #canvas.resize_grid.out_size mcpaint.calc
scoreboard players operation #canvas.resize_grid.sample mcpaint.calc /= #const.2 mcpaint.calc
execute store result storage mcpaint:calc internal.canvas.resize_grid.macro.i int 1 run scoreboard players get #canvas.resize_grid.sample mcpaint.calc
function mcpaint:canvas/internal/resize_grid/append_column with storage mcpaint:calc internal.canvas.resize_grid.macro

scoreboard players add #canvas.resize_grid.i mcpaint.calc 1
execute if score #canvas.resize_grid.i mcpaint.calc < #canvas.resize_grid.out_size mcpaint.calc run function mcpaint:canvas/internal/resize_grid/loop