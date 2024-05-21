data modify storage mcpaint:calc internal.studio.tools.window.tool_text_rows append from storage mcpaint:calc api.studio.register_tool.icons[0]

data modify storage mcpaint:calc internal.studio.tools.register set from storage mcpaint:calc api.studio.register_tool
data modify storage mcpaint:calc internal.studio.tools.register.subtool_text_rows set value []
scoreboard players set #studio.tools.i mcpaint.calc 2
scoreboard players operation #studio.tools.i mcpaint.calc *= #studio.tools.double_rows mcpaint.calc
execute if score #studio.tools.i mcpaint.calc matches 1.. run function mcpaint:studio/internal/tools/register/pad_subtool_rows
data modify storage mcpaint:calc internal.studio.tools.registry append from storage mcpaint:calc internal.studio.tools.register