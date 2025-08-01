#####################################################################
# studio/ui/new_file/api/get_child_description.mcfunction
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

execute if score #studio.ui_element.focused_child mcpaint.calc matches 1 run data modify storage mcpaint:calc internal.studio.title set value '{"translate":"mcpaint.ui.button.ok"}'
execute if score #studio.ui_element.focused_child mcpaint.calc matches 2 run data modify storage mcpaint:calc internal.studio.title set value '{"translate":"mcpaint.ui.button.cancel"}'
execute if score #studio.ui_element.focused_child mcpaint.calc matches 3 run data modify storage mcpaint:calc internal.studio.title set value '{"translate":"mcpaint.ui.button.set_name_from_item","with":[{"translate":"item.minecraft.writable_book"}]}'

execute if score #studio.ui_element.focused_child mcpaint.calc matches 11 run data modify storage mcpaint:calc internal.studio.title set value '{"translate":"mcpaint.ui.button.increase_block_width"}'
execute if score #studio.ui_element.focused_child mcpaint.calc matches 12 run data modify storage mcpaint:calc internal.studio.title set value '{"translate":"mcpaint.ui.button.decrease_block_width"}'
execute if score #studio.ui_element.focused_child mcpaint.calc matches 13 run data modify storage mcpaint:calc internal.studio.title set value '{"translate":"mcpaint.ui.button.increase_pixel_width"}'
execute if score #studio.ui_element.focused_child mcpaint.calc matches 14 run data modify storage mcpaint:calc internal.studio.title set value '{"translate":"mcpaint.ui.button.decrease_pixel_width"}'
execute if score #studio.ui_element.focused_child mcpaint.calc matches 15 run data modify storage mcpaint:calc internal.studio.title set value '{"translate":"mcpaint.ui.button.increase_block_height"}'
execute if score #studio.ui_element.focused_child mcpaint.calc matches 16 run data modify storage mcpaint:calc internal.studio.title set value '{"translate":"mcpaint.ui.button.decrease_block_height"}'
execute if score #studio.ui_element.focused_child mcpaint.calc matches 17 run data modify storage mcpaint:calc internal.studio.title set value '{"translate":"mcpaint.ui.button.increase_pixel_height"}'
execute if score #studio.ui_element.focused_child mcpaint.calc matches 18 run data modify storage mcpaint:calc internal.studio.title set value '{"translate":"mcpaint.ui.button.decrease_pixel_height"}'