data modify storage mcpaint:calc internal.canvas.encoder.finished set value 1b

scoreboard players set math.b64.encoder.split eroxified2.api 256
function eroxified2:math.b64/api/encoder/finish_split

data modify storage mcpaint:calc internal.canvas.encoder.output set value {book_pages:[]}
data modify storage mcpaint:calc internal.canvas.encoder.output.book_pages set from storage eroxified2:api math.b64.encoder.output
scoreboard players set #canvas.i mcpaint.calc 0
data modify storage mcpaint:calc internal.canvas.encoder.macro set value {}
data modify storage mcpaint:calc internal.canvas.encoder.macro.substring set from storage eroxified2:api math.b64.encoder.output[0]
execute store result storage mcpaint:calc internal.canvas.encoder.macro.i int 1 run scoreboard players get #canvas.i mcpaint.calc

data modify storage mcpaint:calc api.canvas.canvas set value {}
data modify storage mcpaint:calc internal.canvas.compile_grid.compiled_rows set value {}
execute if data storage eroxified2:api math.b64.encoder.output[0] run function mcpaint:canvas/encoder/internal/loop_output with storage mcpaint:calc internal.canvas.encoder.macro
scoreboard players remove #canvas.i mcpaint.calc 1
execute store result storage mcpaint:calc internal.canvas.encoder.macro.i int 1 run scoreboard players get #canvas.i mcpaint.calc
function mcpaint:canvas/internal/compile_grid/glue_rows with storage mcpaint:calc internal.canvas.encoder.macro
data modify storage mcpaint:calc internal.canvas.encoder.output.clipboard_text set string storage mcpaint:calc api.canvas.canvas.resolved_text 20 -2