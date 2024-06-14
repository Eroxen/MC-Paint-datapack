#####################################################################
# canvas/decoder/api/step.mcfunction
# written by Eroxen
#
# Advances the canvas base64 decoder by 1 step.
#
# Scoreboard output:
# - #canvas.b64.error mcpaint.calc: 1 if an error occured, 0 otherwise
#####################################################################

scoreboard players set #canvas.b64.error mcpaint.calc 0

execute if data storage mcpaint:calc internal.canvas.decoder{finished:1b} run say finished already
execute if data storage mcpaint:calc internal.canvas.decoder{finished:1b} run return 0

execute if data storage mcpaint:calc internal.canvas.decoder{phase:"b64"} run return run function mcpaint:canvas/decoder/internal/step_b64
execute if data storage mcpaint:calc internal.canvas.decoder{phase:"text"} run return run function mcpaint:canvas/decoder/internal/step_text