scoreboard players operation #studio.ui_element.pos.u mcpaint.calc = @s mcpaint.ui.u1
scoreboard players operation #studio.ui_element.pos.v mcpaint.calc = @s mcpaint.ui.v1

execute unless entity @s[tag=mcpaint.studio.ui_element.parent.hovered] run function mcpaint:studio/internal/ui/change_hovered_window

execute on passengers if entity @s[type=marker] run function mcpaint:studio/internal/ui/hover_tick_on_marker with entity @s data.definition