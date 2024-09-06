### move row from read to write buffer ###
execute if score #canvas.set_pixels.current.v mcpaint.calc matches 0 run data modify storage mcpaint:calc internal.canvas.set_pixels.rows_w append from storage mcpaint:calc internal.canvas.set_pixels.rows_r[0]
## if inside of row, push all unprocessed items ##
execute if score #canvas.set_pixels.current.v mcpaint.calc matches 1.. run data modify storage mcpaint:calc internal.canvas.set_pixels.rows_w[-1] append from storage mcpaint:calc internal.canvas.set_pixels.rows_r[0][]
scoreboard players set #canvas.set_pixels.current.v mcpaint.calc 0
## remove row from read buffer ##
data remove storage mcpaint:calc internal.canvas.set_pixels.rows_r[0]


### save changed row index ###
execute if score #canvas.set_pixels.changed_row mcpaint.calc matches 1 run data modify storage mcpaint:calc internal.canvas.set_pixels.changed_row_idx append value -1
execute if score #canvas.set_pixels.changed_row mcpaint.calc matches 1 store result storage mcpaint:calc internal.canvas.set_pixels.changed_row_idx[-1] int 1 run scoreboard players get #canvas.set_pixels.current.u mcpaint.calc
scoreboard players set #canvas.set_pixels.changed_row mcpaint.calc 0
scoreboard players add #canvas.set_pixels.current.u mcpaint.calc 1
execute if score #canvas.set_pixels.u mcpaint.calc > #canvas.set_pixels.current.u mcpaint.calc run function mcpaint:canvas/internal/set_pixels/skip_row