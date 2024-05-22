scoreboard players operation #studio.ui_element.selected mcpaint.calc = #studio.ui_element.v.px mcpaint.calc
scoreboard players remove #studio.ui_element.selected mcpaint.calc 19
scoreboard players operation #studio.ui_element.selected mcpaint.calc /= #const.10 mcpaint.calc
scoreboard players operation #studio.ui_element.selected mcpaint.calc *= #const.-1 mcpaint.calc
scoreboard players operation #studio.ui_element.selected mcpaint.calc += #studio.tools.double_rows mcpaint.calc
execute unless score #studio.ui_element.selected mcpaint.calc matches 0.. run return fail
execute store result score #studio.tool.subtool_rows mcpaint.calc run data get entity @s data.subtool_rows 1
execute if score #studio.ui_element.selected mcpaint.calc >= #studio.tool.subtool_rows mcpaint.calc run return fail

execute store result score #studio.tool.subtools_per_row mcpaint.calc run data get entity @s data.subtools_per_row 1
execute store result score #studio.tool.n_subtools mcpaint.calc run data get entity @s data.n_subtools 1
scoreboard players operation #studio.ui_element.temp mcpaint.calc = #studio.ui_element.u.px mcpaint.calc
scoreboard players remove #studio.ui_element.temp mcpaint.calc 27
scoreboard players operation #studio.ui_element.temp mcpaint.calc *= #studio.tool.subtools_per_row mcpaint.calc
scoreboard players operation #studio.ui_element.temp mcpaint.calc /= #const.30 mcpaint.calc

scoreboard players operation #studio.ui_element.selected mcpaint.calc *= #studio.tool.subtools_per_row mcpaint.calc
scoreboard players operation #studio.ui_element.selected mcpaint.calc += #studio.ui_element.temp mcpaint.calc
execute unless score #studio.ui_element.selected mcpaint.calc matches 0.. run return fail
execute if score #studio.ui_element.selected mcpaint.calc >= #studio.tool.n_subtools mcpaint.calc run return fail

scoreboard players set #studio.ui_element.focused_child mcpaint.calc 2000
scoreboard players operation #studio.ui_element.focused_child mcpaint.calc += #studio.ui_element.selected mcpaint.calc

execute store result score #studio.ui_element.temp mcpaint.calc run data get entity @s data.tool.subtool 1
execute unless score #studio.ui_element.temp mcpaint.calc = #studio.ui_element.selected mcpaint.calc run scoreboard players set #studio.ui_element.focused_child.can_click mcpaint.calc 1