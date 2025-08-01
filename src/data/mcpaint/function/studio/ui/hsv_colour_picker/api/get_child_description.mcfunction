#####################################################################
# studio/ui/hsv_colour_picker/api/get_child_description.mcfunction
# written by Eroxen
#
# Executed as the studio marker.
# Retrieves the textual description of the child element.
#
# Scoreboard input:
# - #studio.ui_element.focused_child mcpaint.calc: child id
#
# Children:
# 1: hue ring
# 2: sv square
# 3: foreground colour
# 4: background colour
# 5: transparent colour
# 6: switch fg <-> bg
#####################################################################

execute if score #studio.ui_element.focused_child mcpaint.calc matches 1 run data modify storage mcpaint:calc internal.studio.title set value '{"translate":"mcpaint.ui.button.hue_ring"}'
execute if score #studio.ui_element.focused_child mcpaint.calc matches 2 run data modify storage mcpaint:calc internal.studio.title set value '{"translate":"mcpaint.ui.button.sv_square"}'
execute if score #studio.ui_element.focused_child mcpaint.calc matches 3 run data modify storage mcpaint:calc internal.studio.title set value '{"translate":"mcpaint.ui.button.foreground_colour"}'
execute if score #studio.ui_element.focused_child mcpaint.calc matches 4 run data modify storage mcpaint:calc internal.studio.title set value '{"translate":"mcpaint.ui.button.background_colour"}'
execute if score #studio.ui_element.focused_child mcpaint.calc matches 5 run data modify storage mcpaint:calc internal.studio.title set value '{"translate":"mcpaint.ui.button.transparent_colour"}'
execute if score #studio.ui_element.focused_child mcpaint.calc matches 6 run data modify storage mcpaint:calc internal.studio.title set value '{"translate":"mcpaint.ui.button.swap_fg_bg_colour"}'