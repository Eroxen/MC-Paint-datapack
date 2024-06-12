scoreboard players operation @s mcpaint.ui.hover = #studio.ui_element.focused_child mcpaint.calc

execute if score #studio.ui_element.focused_child.has_description mcpaint.calc matches 1 run scoreboard players set #studio.session.show_title mcpaint.calc 1
execute if score #studio.ui_element.focused_child.has_description mcpaint.calc matches 1 run data remove storage mcpaint:calc internal.studio.title
$execute if score #studio.ui_element.focused_child.has_description mcpaint.calc matches 1 run function mcpaint:studio/ui/$(name)/api/get_child_description