data modify storage mcpaint:calc internal.canvas.decoder set from storage mcpaint:calc internal.studio.ui.data.process
function mcpaint:canvas/decoder/api/step
execute if data storage mcpaint:calc internal.canvas.decoder{finished:1b} run return run function mcpaint:studio/ui/import_code/api/process/finish
execute if score #canvas.b64.error mcpaint.calc matches 1 run return run function mcpaint:studio/ui/import_code/api/process/fail
data modify storage mcpaint:calc internal.studio.ui.data.process set from storage mcpaint:calc internal.canvas.decoder