#####################################################################
# studio/ui/tools/api/click.mcfunction
# written by Eroxen
#
# Clicks the tool menu. Called on the marker.
#
# Scoreboard input:
# - #studio.ui_element.focused_child mcpaint.calc: child id
#
# Children:
# 100i: tool with index i
# 200i: subtool with index i
#####################################################################

data modify storage mcpaint:calc internal.studio.ui.data set from entity @s data

execute if score #studio.ui_element.focused_child mcpaint.calc matches 1000..1999 run function mcpaint:studio/ui/tools/internal/click_tool
execute if score #studio.ui_element.focused_child mcpaint.calc matches 2000..2999 run function mcpaint:studio/ui/tools/internal/click_subtool

data modify entity @s data set from storage mcpaint:calc internal.studio.ui.data