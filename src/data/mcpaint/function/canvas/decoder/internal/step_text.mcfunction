data modify storage mcpaint:calc api.canvas.canvas set from storage mcpaint:calc internal.canvas.decoder.canvas
data modify storage mcpaint:calc api.canvas.recompile_indices set value []
execute store result score #canvas.decoder.height_px mcpaint.calc run data get storage mcpaint:calc internal.canvas.decoder.canvas.height_px 1
execute store result score #canvas.decoder.row mcpaint.calc run data get storage mcpaint:calc internal.canvas.decoder.steps.text.row 1
execute store result score #canvas.decoder.rows_per_step mcpaint.calc run data get storage mcpaint:calc internal.canvas.decoder.steps.text.rows_per_step 1

scoreboard players set #canvas.decoder.step.iter mcpaint.calc 0
function mcpaint:canvas/decoder/internal/step_text/add_indices

function mcpaint:canvas/api/recompile_indexed_rows
data modify storage mcpaint:calc internal.canvas.decoder.canvas set from storage mcpaint:calc api.canvas.canvas
execute store result storage mcpaint:calc internal.canvas.decoder.steps.text.row int 1 run scoreboard players get #canvas.decoder.row mcpaint.calc

execute unless score #canvas.decoder.row mcpaint.calc < #canvas.decoder.height_px mcpaint.calc run data modify storage mcpaint:calc internal.canvas.decoder.finished set value 1b