#####################################################################
# studio/ui/copy/api/get_focused_child.mcfunction
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
# 1: cancel
# 2: copy to book
# 3: copy to clipboard
#####################################################################

execute if score #studio.ui_element.u.px mcpaint.calc matches 16..47 if score #studio.ui_element.v.px mcpaint.calc matches 4..22 run scoreboard players set #studio.ui_element.focused_child mcpaint.calc 1
execute if score #studio.ui_element.u.px mcpaint.calc matches 12..29 if score #studio.ui_element.v.px mcpaint.calc matches 30..47 run scoreboard players set #studio.ui_element.focused_child mcpaint.calc 2
execute if score #studio.ui_element.u.px mcpaint.calc matches 34..51 if score #studio.ui_element.v.px mcpaint.calc matches 30..47 run scoreboard players set #studio.ui_element.focused_child mcpaint.calc 3



execute if score #studio.ui_element.focused_child mcpaint.calc matches 1.. run scoreboard players set #studio.ui_element.focused_child.can_click mcpaint.calc 1
execute if score #studio.ui_element.focused_child mcpaint.calc matches 1.. run scoreboard players set #studio.ui_element.focused_child.has_description mcpaint.calc 1