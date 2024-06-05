#####################################################################
# studio/ui/import_code/api/click.mcfunction
# written by Eroxen
#
# Clicks the import menu. Called on the marker.
#
# Children:
# 1: ok
# 2: cancel
# 3: set name from book
# 4: website
# 5: decode from book
#####################################################################

data modify storage mcpaint:calc internal.studio.ui.data set from entity @s data

execute if score #studio.ui_element.focused_child mcpaint.calc matches 2 run return run function mcpaint:studio/internal/ui/close
execute if score #studio.ui_element.focused_child mcpaint.calc matches 3 run function mcpaint:studio/ui/import_code/internal/set_name_from_book
execute if score #studio.ui_element.focused_child mcpaint.calc matches 4 run tellraw @p[predicate=mcpaint:same_session] {"translate":"mcpaint.ui.button.image_converter_website.chat","color":"aqua","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"eroxen.github.io"}]},"clickEvent":{"action":"open_url","value":"https://eroxen.github.io/MC-paint-image-convert/"}}

data modify entity @s data set from storage mcpaint:calc internal.studio.ui.data