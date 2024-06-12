#####################################################################
# studio/ui/new_file/api/click.mcfunction
# written by Eroxen
#
# Clicks the new file menu. Called on the marker.
#
# Children:
# 1: ok
# 2: cancel
# 3: set name from book
# 11: increase block width
# 12: decrease block width
# 13: increase pixel width
# 14: decrease pixel width
# 15: increase block height
# 16: decrease block height
# 17: increase pixel height
# 18: decrease pixel height
#####################################################################

data modify storage mcpaint:calc internal.studio.ui.data set from entity @s data

execute if score #studio.ui_element.focused_child mcpaint.calc matches 1 run function mcpaint:studio/ui/new_file/internal/confirm
execute if score #studio.ui_element.focused_child mcpaint.calc matches 2 run function mcpaint:studio/internal/ui/close

execute if score #studio.ui_element.focused_child mcpaint.calc matches 3 run function mcpaint:studio/ui/new_file/internal/set_name_from_book

execute if score #studio.ui_element.focused_child mcpaint.calc matches 11..18 run function mcpaint:studio/ui/new_file/internal/change_size

data modify entity @s data set from storage mcpaint:calc internal.studio.ui.data