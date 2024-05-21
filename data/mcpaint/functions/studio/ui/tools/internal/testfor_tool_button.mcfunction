scoreboard players operation #studio.ui_element.temp mcpaint.calc = #studio.ui_element.v.px mcpaint.calc
scoreboard players remove #studio.ui_element.temp mcpaint.calc 6
scoreboard players operation #studio.ui_element.temp mcpaint.calc %= #const.20 mcpaint.calc
execute unless score #studio.ui_element.temp mcpaint.calc matches 1..18 run return fail

scoreboard players operation #studio.ui_element.temp mcpaint.calc = #studio.ui_element.v.px mcpaint.calc
scoreboard players remove #studio.ui_element.temp mcpaint.calc 6
scoreboard players operation #studio.ui_element.temp mcpaint.calc /= #const.20 mcpaint.calc
scoreboard players operation #studio.ui_element.temp mcpaint.calc *= #const.-1 mcpaint.calc
scoreboard players operation #studio.ui_element.temp mcpaint.calc += #studio.tools.double_rows mcpaint.calc
execute unless score #studio.ui_element.temp mcpaint.calc matches 0.. run return fail
execute if score #studio.ui_element.temp mcpaint.calc >= #studio.tools.n_registered mcpaint.calc run return fail

scoreboard players set #studio.ui_element.focused_child mcpaint.calc 1000
scoreboard players operation #studio.ui_element.focused_child mcpaint.calc += #studio.ui_element.temp mcpaint.calc

execute store result score #studio.ui_element.selected mcpaint.calc run data get entity @s data.tool.tool 1
execute unless score #studio.ui_element.temp mcpaint.calc = #studio.ui_element.selected mcpaint.calc run scoreboard players set #studio.ui_element.focused_child.can_click mcpaint.calc 1
scoreboard players set #studio.ui_element.focused_child.has_description mcpaint.calc 1