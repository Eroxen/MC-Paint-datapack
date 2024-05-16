#####################################################################
# studio/ui/file_menu/api/click.mcfunction
# written by Eroxen
#
# Clicks the file menu. Called on the marker.
#
# Children:
# 1: ok
# 2: cancel
# 3: set name from book
#####################################################################

data modify storage mcpaint:calc internal.studio.ui.data set from entity @s data

execute if score #studio.ui_element.focused_child mcpaint.calc matches 1 run function mcpaint:studio/ui/save_as/internal/confirm
execute if score #studio.ui_element.focused_child mcpaint.calc matches 2 run function mcpaint:studio/internal/ui/close

execute if score #studio.ui_element.focused_child mcpaint.calc matches 3 run function mcpaint:studio/ui/save_as/internal/set_name_from_book

data modify entity @s data set from storage mcpaint:calc internal.studio.ui.data