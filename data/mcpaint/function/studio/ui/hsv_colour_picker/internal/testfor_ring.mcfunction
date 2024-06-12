execute if score #studio.ui_element.u.px mcpaint.calc matches 18..45 if score #studio.ui_element.v.px mcpaint.calc matches 46..73 run return 0

scoreboard players set #temp.du mcpaint.calc 500
scoreboard players operation #temp.du mcpaint.calc -= #studio.ui_element.u mcpaint.calc
scoreboard players operation #temp.du mcpaint.calc *= #temp.du mcpaint.calc
scoreboard players set #temp.dv mcpaint.calc 938
scoreboard players operation #temp.dv mcpaint.calc -= #studio.ui_element.v mcpaint.calc
scoreboard players operation #temp.dv mcpaint.calc *= #temp.dv mcpaint.calc

scoreboard players operation #temp.du mcpaint.calc += #temp.dv mcpaint.calc

execute if score #temp.du mcpaint.calc matches 94000..170000 run scoreboard players set #studio.ui_element.focused_child mcpaint.calc 1