#####################################################################
# studio/ui/tools/api/get_focused_child.mcfunction
# written by Eroxen
#
# Executed as the studio marker.
# Finds the child at the specified position.
#
# Scoreboard input:
# - #studio.ui_element.u mcpaint.calc: u position from left border
# - #studio.ui_element.v mcpaint.calc: v position from bottom border
# - #studio.ui_element.u.px mcpaint.calc: u position from left border, in pixels
# - #studio.ui_element.v.px mcpaint.calc: v position from bottom border, in pixels
#
# Children:
# 100i: tool with index i
# 200i: subtool with index i
#####################################################################

execute if score #studio.ui_element.u.px mcpaint.calc matches 3..20 run function mcpaint:studio/ui/tools/internal/testfor_tool_button
execute if score #studio.ui_element.u.px mcpaint.calc matches 27..56 run function mcpaint:studio/ui/tools/internal/testfor_subtool_button
