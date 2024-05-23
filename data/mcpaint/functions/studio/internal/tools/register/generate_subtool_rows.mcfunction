function mcpaint:studio/internal/tools/register/subtool_row/generate_macro
execute if score #studio.tool.subtools_per_row mcpaint.calc matches 3 run function mcpaint:studio/internal/tools/register/subtool_row/append_3 with storage mcpaint:calc internal.studio.tools.macro

scoreboard players remove #studio.tools.i mcpaint.calc 1
execute if score #studio.tools.i mcpaint.calc matches 1.. run function mcpaint:studio/internal/tools/register/generate_subtool_rows