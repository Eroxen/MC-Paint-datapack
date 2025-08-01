scoreboard players set #canvas.set_pixels.changed_row mcpaint.calc 1

data modify storage mcpaint:calc internal.canvas.set_pixels.previous_pixels append value {}
data modify storage mcpaint:calc internal.canvas.set_pixels.previous_pixels[-1].colour set from storage mcpaint:calc internal.canvas.set_pixels.rows_r[0][0]
data modify storage mcpaint:calc internal.canvas.set_pixels.previous_pixels[-1].u set from storage mcpaint:calc internal.canvas.set_pixels.last_pixel.u
data modify storage mcpaint:calc internal.canvas.set_pixels.previous_pixels[-1].v set from storage mcpaint:calc internal.canvas.set_pixels.last_pixel.v

execute store result storage mcpaint:calc internal.canvas.set_pixels.rows_r[0][0] int 1 run scoreboard players get #canvas.set_pixels.colour mcpaint.calc