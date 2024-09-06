#####################################################################
# studio/ui/hsv_colour_picker/api/get_focused_child.mcfunction
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
# 1: hue ring
# 2: sv square
# 3: foreground colour
# 4: background colour
# 5: transparent colour
# 6: switch fg <-> bg
#####################################################################

execute if score #studio.ui_element.u.px mcpaint.calc matches 5..58 if score #studio.ui_element.v.px mcpaint.calc matches 33..86 run function mcpaint:studio/ui/hsv_colour_picker/internal/testfor_ring
execute if score #studio.ui_element.u.px mcpaint.calc matches 20..43 if score #studio.ui_element.v.px mcpaint.calc matches 48..71 run scoreboard players set #studio.ui_element.focused_child mcpaint.calc 2

execute if score #studio.ui_element.u.px mcpaint.calc matches 19..36 if score #studio.ui_element.v.px mcpaint.calc matches 5..22 run scoreboard players set #studio.ui_element.focused_child mcpaint.calc 4
execute if score #studio.ui_element.u.px mcpaint.calc matches 5..22 if score #studio.ui_element.v.px mcpaint.calc matches 14..31 run scoreboard players set #studio.ui_element.focused_child mcpaint.calc 3

execute if score #studio.ui_element.u.px mcpaint.calc matches 43..58 if score #studio.ui_element.v.px mcpaint.calc matches 5..31 run scoreboard players set #studio.ui_element.focused_child mcpaint.calc 5
execute if score #studio.ui_element.u.px mcpaint.calc matches 5..17 if score #studio.ui_element.v.px mcpaint.calc matches 5..12 run scoreboard players set #studio.ui_element.focused_child mcpaint.calc 6

execute if score #studio.ui_element.focused_child mcpaint.calc matches 1.. run scoreboard players set #studio.ui_element.focused_child.can_click mcpaint.calc 1
execute if score #studio.ui_element.focused_child mcpaint.calc matches 1..2 run scoreboard players set #studio.ui_element.focused_child.can_spam_click mcpaint.calc 1

execute if score #studio.ui_element.focused_child mcpaint.calc matches 1..2 if data storage mcpaint:calc internal.studio.ui.data{selected_name:"transparent"} run scoreboard players set #studio.ui_element.focused_child.can_click mcpaint.calc 0
execute if score #studio.ui_element.focused_child mcpaint.calc matches 1..2 if data storage mcpaint:calc internal.studio.ui.data{selected_name:"transparent"} run scoreboard players set #studio.ui_element.focused_child.can_spam_click mcpaint.calc 0
execute if score #studio.ui_element.focused_child mcpaint.calc matches 1.. run scoreboard players set #studio.ui_element.focused_child.has_description mcpaint.calc 1