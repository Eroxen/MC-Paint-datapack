data remove storage eroxified2:api math.b64.encoder.output[0]
scoreboard players add #canvas.i mcpaint.calc 1
data modify storage mcpaint:calc internal.canvas.encoder.macro.substring set from storage eroxified2:api math.b64.encoder.output[0]
execute store result storage mcpaint:calc internal.canvas.encoder.macro.i int 1 run scoreboard players get #canvas.i mcpaint.calc

$data modify storage mcpaint:calc internal.canvas.compile_grid.compiled_rows.$(i) set value "$(substring)\\\\n\\\\n"

execute if data storage eroxified2:api math.b64.encoder.output[0] run function mcpaint:canvas/encoder/internal/loop_output with storage mcpaint:calc internal.canvas.encoder.macro