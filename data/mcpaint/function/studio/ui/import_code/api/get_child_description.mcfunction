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
# 3: set name from book
# 4: website
# 5: decode from book
#####################################################################

execute if score #studio.ui_element.focused_child mcpaint.calc matches 1 run data modify storage mcpaint:calc internal.studio.title set value '{"translate":"mcpaint.ui.button.ok"}'
execute if score #studio.ui_element.focused_child mcpaint.calc matches 2 run data modify storage mcpaint:calc internal.studio.title set value '{"translate":"mcpaint.ui.button.cancel"}'
execute if score #studio.ui_element.focused_child mcpaint.calc matches 3 run data modify storage mcpaint:calc internal.studio.title set value '{"translate":"mcpaint.ui.button.set_name_from_item","with":[{"translate":"item.minecraft.writable_book"}]}'
execute if score #studio.ui_element.focused_child mcpaint.calc matches 4 run data modify storage mcpaint:calc internal.studio.title set value '{"translate":"mcpaint.ui.button.image_converter_website"}'
execute if score #studio.ui_element.focused_child mcpaint.calc matches 5 run data modify storage mcpaint:calc internal.studio.title set value '{"translate":"mcpaint.ui.button.set_code_from_item","with":[{"translate":"item.minecraft.writable_book"}]}'