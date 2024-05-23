#####################################################################
# studio/ui/files/api/get_child_description.mcfunction
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
# 3: previous page
# 4: next page
# 5: trash
# 6: export
#####################################################################

execute if score #studio.ui_element.focused_child mcpaint.calc matches 1 run data modify storage mcpaint:calc internal.studio.title set value '{"translate":"mcpaint.ui.button.load_file"}'
execute if score #studio.ui_element.focused_child mcpaint.calc matches 2 run data modify storage mcpaint:calc internal.studio.title set value '{"translate":"mcpaint.ui.button.cancel"}'

execute if score #studio.ui_element.focused_child mcpaint.calc matches 3 run data modify storage mcpaint:calc internal.studio.title set value '{"translate":"mcpaint.ui.button.previous_page"}'
execute if score #studio.ui_element.focused_child mcpaint.calc matches 4 run data modify storage mcpaint:calc internal.studio.title set value '{"translate":"mcpaint.ui.button.next_page"}'

execute if score #studio.ui_element.focused_child mcpaint.calc matches 5 run data modify storage mcpaint:calc internal.studio.title set value '{"translate":"mcpaint.ui.button.delete_file","color":"red"}'
execute if score #studio.ui_element.focused_child mcpaint.calc matches 6 run data modify storage mcpaint:calc internal.studio.title set value '{"translate":"mcpaint.ui.button.export"}'