data modify storage mcpaint:calc internal.canvas.encoder set from storage mcpaint:calc internal.studio.ui.data.process
function mcpaint:canvas/encoder/api/step
execute if data storage mcpaint:calc internal.canvas.encoder{finished:1b} run return run function mcpaint:studio/ui/files/api/encode_process/finish
data modify storage mcpaint:calc internal.studio.ui.data.process set from storage mcpaint:calc internal.canvas.encoder