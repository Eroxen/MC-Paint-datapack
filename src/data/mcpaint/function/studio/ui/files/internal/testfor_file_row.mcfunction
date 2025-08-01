scoreboard players operation #studio.ui_element.temp mcpaint.calc = #studio.ui_element.v.px mcpaint.calc
scoreboard players remove #studio.ui_element.temp mcpaint.calc 16
scoreboard players operation #studio.ui_element.temp mcpaint.calc /= #const.6 mcpaint.calc
scoreboard players operation #studio.ui_element.temp mcpaint.calc *= #const.-1 mcpaint.calc
scoreboard players add #studio.ui_element.temp mcpaint.calc 7

execute store result score #studio.ui_element.max mcpaint.calc run data get entity @s data.items_on_page 1
execute if score #studio.ui_element.temp mcpaint.calc >= #studio.ui_element.max mcpaint.calc run return fail

execute store result score #studio.ui_element.selected mcpaint.calc run data get entity @s data.selected_work 1
execute if score #studio.ui_element.temp mcpaint.calc = #studio.ui_element.selected mcpaint.calc run return fail

scoreboard players set #studio.ui_element.focused_child mcpaint.calc 1000
scoreboard players operation #studio.ui_element.focused_child mcpaint.calc += #studio.ui_element.temp mcpaint.calc