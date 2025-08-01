### move to correct position in colour array ###
execute if score #canvas.set_pixels.u mcpaint.calc > #canvas.set_pixels.current.u mcpaint.calc run function mcpaint:canvas/internal/set_pixels/skip_row
execute if score #canvas.set_pixels.v mcpaint.calc > #canvas.set_pixels.current.v mcpaint.calc if score #canvas.set_pixels.current.v mcpaint.calc matches 0 run data modify storage mcpaint:calc internal.canvas.set_pixels.rows_w append value []
execute if score #canvas.set_pixels.v mcpaint.calc > #canvas.set_pixels.current.v mcpaint.calc run function mcpaint:canvas/internal/set_pixels/step_row

### set pixel ###
execute store result score #canvas.set_pixels.previous_colour mcpaint.calc run data get storage mcpaint:calc internal.canvas.set_pixels.rows_r[0][0] 1
execute unless score #canvas.set_pixels.previous_colour mcpaint.calc = #canvas.set_pixels.colour mcpaint.calc run function mcpaint:canvas/internal/set_pixels/change

### continue ###
scoreboard players set #canvas.set_pixels.inside_canvas mcpaint.calc 0
execute if data storage mcpaint:calc internal.canvas.set_pixels.pixels[0] run function mcpaint:canvas/internal/set_pixels/next_uv
execute if score #canvas.set_pixels.inside_canvas mcpaint.calc matches 1 run function mcpaint:canvas/internal/set_pixels/loop