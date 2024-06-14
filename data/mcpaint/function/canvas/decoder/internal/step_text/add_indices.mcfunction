execute unless score #canvas.decoder.row mcpaint.calc < #canvas.decoder.height_px mcpaint.calc run return fail

execute store result storage mcpaint:calc internal.canvas.decoder.row int 1 run scoreboard players get #canvas.decoder.row mcpaint.calc
scoreboard players add #canvas.decoder.row mcpaint.calc 1
data modify storage mcpaint:calc api.canvas.recompile_indices append from storage mcpaint:calc internal.canvas.decoder.row

scoreboard players add #canvas.decoder.step.iter mcpaint.calc 1
execute if score #canvas.decoder.step.iter mcpaint.calc < #canvas.b64.rows_per_step mcpaint.calc run function mcpaint:canvas/decoder/internal/step_text/add_indices