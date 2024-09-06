#####################################################################
# studio/ui/error_message/api/get_child_description.mcfunction
# written by Eroxen
#
# Executed as the studio marker.
# Retrieves the textual description of the child element.
#
# Scoreboard input:
# - #studio.ui_element.focused_child mcpaint.calc: child id
#
# Children:
# 1: ok
# 2: cancel
#####################################################################

execute if score #studio.ui_element.focused_child mcpaint.calc matches 1 run data modify storage mcpaint:calc internal.studio.title set value '{"translate":"mcpaint.ui.button.ok"}'
execute if score #studio.ui_element.focused_child mcpaint.calc matches 2 run data modify storage mcpaint:calc internal.studio.title set value '{"translate":"mcpaint.ui.button.cancel"}'