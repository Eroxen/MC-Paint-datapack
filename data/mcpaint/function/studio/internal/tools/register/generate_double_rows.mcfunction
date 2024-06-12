$execute if score #studio.tools.i mcpaint.calc < #studio.tools.n_registered mcpaint.calc run data modify storage mcpaint:calc internal.studio.tools.window.text_rows append value '{"text":"\\u1001\\u0402\\u1062","extra":[{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.tool_text_rows[$(i)]","interpret":true},{"text":"\\u2005"},{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.subtool_text_rows[$(j)]","interpret":true}]}'
$execute if score #studio.tools.i mcpaint.calc >= #studio.tools.n_registered mcpaint.calc run data modify storage mcpaint:calc internal.studio.tools.window.text_rows append value '{"text":"\\u1001\\u0402\\u1062","extra":[{"text":"\\u0404"},{"text":"\\u2005"},{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.subtool_text_rows[$(j)]","interpret":true}]}'
$data modify storage mcpaint:calc internal.studio.tools.window.text_rows append value '{"text":"\\u2026","extra":[{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.subtool_text_rows[$(j1)]","interpret":true}]}'

scoreboard players add #studio.tools.i mcpaint.calc 1
execute store result storage mcpaint:calc internal.studio.tools.macro.i int 1 run scoreboard players get #studio.tools.i mcpaint.calc
scoreboard players add #studio.tools.j mcpaint.calc 1
execute store result storage mcpaint:calc internal.studio.tools.macro.j int 1 run scoreboard players get #studio.tools.j mcpaint.calc
scoreboard players add #studio.tools.j mcpaint.calc 1
execute store result storage mcpaint:calc internal.studio.tools.macro.j1 int 1 run scoreboard players get #studio.tools.j mcpaint.calc
execute if score #studio.tools.i mcpaint.calc <= #studio.tools.double_rows mcpaint.calc run function mcpaint:studio/internal/tools/register/generate_double_rows with storage mcpaint:calc internal.studio.tools.macro