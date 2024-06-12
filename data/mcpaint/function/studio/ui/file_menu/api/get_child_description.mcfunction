#####################################################################
# studio/ui/file_menu/api/get_child_description.mcfunction
# written by Eroxen
#
# Executed as the studio marker.
# Retrieves the textual description of the child element.
#
# Scoreboard input:
# - #studio.ui_element.focused_child mcpaint.calc: child id
#
# Children:
# 1: save
# 2: save as
# 3: load
# 4: new file
# 5: export
# 6: import code
# 11: undo
# 12: redo
#####################################################################

execute if score #studio.ui_element.focused_child mcpaint.calc matches 1 run data modify storage mcpaint:calc internal.studio.title set value '{"translate":"mcpaint.ui.button.save"}'
execute if score #studio.ui_element.focused_child mcpaint.calc matches 2 run data modify storage mcpaint:calc internal.studio.title set value '{"translate":"mcpaint.ui.button.save_as"}'
execute if score #studio.ui_element.focused_child mcpaint.calc matches 3 run data modify storage mcpaint:calc internal.studio.title set value '{"translate":"mcpaint.ui.button.load"}'
execute if score #studio.ui_element.focused_child mcpaint.calc matches 4 run data modify storage mcpaint:calc internal.studio.title set value '{"translate":"mcpaint.ui.button.new_file"}'
execute if score #studio.ui_element.focused_child mcpaint.calc matches 5 run data modify storage mcpaint:calc internal.studio.title set value '{"translate":"mcpaint.ui.button.export"}'
execute if score #studio.ui_element.focused_child mcpaint.calc matches 6 run data modify storage mcpaint:calc internal.studio.title set value '{"translate":"mcpaint.ui.button.import_code"}'

execute if score #studio.ui_element.focused_child mcpaint.calc matches 11 run data modify storage mcpaint:calc internal.studio.title set value '{"translate":"mcpaint.ui.button.undo","with":[{"keybind":"key.swapOffhand"}]}'
execute if score #studio.ui_element.focused_child mcpaint.calc matches 12 run data modify storage mcpaint:calc internal.studio.title set value '{"translate":"mcpaint.ui.button.redo","with":[{"keybind":"key.sneak"},{"keybind":"key.swapOffhand"}]}'