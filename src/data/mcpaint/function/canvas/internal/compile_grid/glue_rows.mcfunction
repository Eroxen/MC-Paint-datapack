$function mcpaint:canvas/internal/compile_grid/glue_rows/$(i) with storage mcpaint:calc internal.canvas.compile_grid.compiled_rows

for i in range(64):
  arguments = ""
  for j in range(i + 1):
    arguments += f"$({j})"
  command = '$data modify storage mcpaint:calc api.canvas.canvas.resolved_text set value {"text":"","extra":[' + arguments + ']}'
  here = ~/
  function f"{here}/{i}":
    raw command