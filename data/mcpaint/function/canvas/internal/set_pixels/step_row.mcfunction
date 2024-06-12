data modify storage mcpaint:calc internal.canvas.set_pixels.rows_w[-1] append from storage mcpaint:calc internal.canvas.set_pixels.rows_r[0][0]

data remove storage mcpaint:calc internal.canvas.set_pixels.rows_r[0][0]

scoreboard players add #canvas.set_pixels.current.v mcpaint.calc 1
execute if score #canvas.set_pixels.v mcpaint.calc > #canvas.set_pixels.current.v mcpaint.calc run function mcpaint:canvas/internal/set_pixels/step_row