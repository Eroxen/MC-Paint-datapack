execute if score #canvas.decoder.row_length mcpaint.calc >= #canvas.decoder.width_px mcpaint.calc run function mcpaint:canvas/decoder/internal/step_b64/append_row
scoreboard players add #canvas.decoder.row_length mcpaint.calc 1

data modify storage mcpaint:calc internal.canvas.decoder.canvas.colour_array[-1] append from storage mcpaint:calc internal.canvas.decoder.colour
scoreboard players remove #canvas.length mcpaint.calc 1
execute if score #canvas.length mcpaint.calc matches 1.. run function mcpaint:canvas/decoder/internal/step_b64/append_colour