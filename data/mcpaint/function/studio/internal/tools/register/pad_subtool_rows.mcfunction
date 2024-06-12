data modify storage mcpaint:calc internal.studio.tools.register.subtool_text_rows append value '{"text":"\\u0403"}'
scoreboard players remove #studio.tools.i mcpaint.calc 1
execute if score #studio.tools.i mcpaint.calc matches 1.. run function mcpaint:studio/internal/tools/register/pad_subtool_rows