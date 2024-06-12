data modify storage mcpaint:calc internal.studio.tools.window.tool_text_rows append from storage mcpaint:calc api.studio.register_tool.icons[0]

data modify storage mcpaint:calc internal.studio.tools.register set from storage mcpaint:calc api.studio.register_tool
execute store result score #studio.tool.subtool_rows mcpaint.calc run data get storage mcpaint:calc internal.studio.tools.register.subtool_rows 1
data modify storage mcpaint:calc internal.studio.tools.register.subtool_icons set value []
data modify storage mcpaint:calc internal.studio.tools.register.subtool_icons append from storage mcpaint:calc internal.studio.tools.register.subtools[].icons[0]
data modify storage mcpaint:calc internal.studio.tools.register.subtool_text_rows set value []

scoreboard players operation #studio.tools.i mcpaint.calc = #studio.tool.subtool_rows mcpaint.calc
execute store result score #studio.tool.n_subtools mcpaint.calc run data get storage mcpaint:calc internal.studio.tools.register.subtools
execute store result score #studio.tool.subtools_per_row mcpaint.calc run data get storage mcpaint:calc internal.studio.tools.register.subtools_per_row 1
scoreboard players set #studio.tools.j mcpaint.calc 0
execute if score #studio.tools.i mcpaint.calc matches 1.. run function mcpaint:studio/internal/tools/register/generate_subtool_rows

scoreboard players set #studio.tools.i mcpaint.calc 2
scoreboard players operation #studio.tools.i mcpaint.calc *= #studio.tools.double_rows mcpaint.calc
scoreboard players operation #studio.tools.i mcpaint.calc -= #studio.tool.subtool_rows mcpaint.calc
execute if score #studio.tools.i mcpaint.calc matches 1.. run function mcpaint:studio/internal/tools/register/pad_subtool_rows

data modify storage mcpaint:calc internal.studio.tools.registry append from storage mcpaint:calc internal.studio.tools.register