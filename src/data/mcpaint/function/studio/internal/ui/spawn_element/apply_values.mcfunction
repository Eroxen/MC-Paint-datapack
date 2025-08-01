execute unless data storage mcpaint:calc internal.studio.ui.data.name run data modify storage mcpaint:calc internal.studio.ui.data.name set value "Studio UI"
execute on passengers if entity @s[type=marker] run data modify entity @s data set from storage mcpaint:calc internal.studio.ui.data
scoreboard players operation @s mcpaint.ui.u1 = #studio.ui_element.pos.u mcpaint.calc
scoreboard players operation @s mcpaint.ui.v1 = #studio.ui_element.pos.v mcpaint.calc
scoreboard players operation @s mcpaint.ui.u2 = #studio.ui_element.pos.u mcpaint.calc
scoreboard players operation @s mcpaint.ui.u2 += #studio.ui_element.size.u mcpaint.calc
scoreboard players operation @s mcpaint.ui.v2 = #studio.ui_element.pos.v mcpaint.calc
scoreboard players operation @s mcpaint.ui.v2 += #studio.ui_element.size.v mcpaint.calc
scoreboard players operation @s mcpaint.ui.layer = #studio.ui_element.layer mcpaint.calc