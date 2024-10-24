#####################################################################
# studio/ui/canvas/api/get_focused_child.mcfunction
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
#####################################################################

scoreboard players set #studio.ui_element.focused_child.make_sound mcpaint.calc 0
scoreboard players set #studio.ui_element.focused_child.can_click mcpaint.calc 1
scoreboard players set #studio.ui_element.focused_child.can_spam_click mcpaint.calc 1