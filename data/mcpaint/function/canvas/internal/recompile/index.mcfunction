$data modify storage mcpaint:calc api.canvas.compile_row set from storage mcpaint:calc api.canvas.canvas.colour_array[$(i)]
function mcpaint:canvas/api/compile_row
$data modify storage mcpaint:calc api.canvas.canvas.resolved_rows.$(i) set from storage mcpaint:calc api.canvas.compiled_row