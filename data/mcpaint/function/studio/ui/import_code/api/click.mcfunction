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

execute unless score #studio.ui_element.focused_child mcpaint.calc matches 2 as @p[predicate=mcpaint:same_session] unless predicate mcpaint:permission/import_base64 run return run tellraw @s {"translate":"mcpaint.error.no_permission","color":"red"}

execute if score #studio.ui_element.focused_child mcpaint.calc matches 1 if data storage mcpaint:calc internal.studio.ui.data{can_ok:1b} unless data storage mcpaint:calc internal.studio.data{unsaved_changes:1b} run return run function mcpaint:studio/ui/import_code/internal/confirm
execute if score #studio.ui_element.focused_child mcpaint.calc matches 1 if data storage mcpaint:calc internal.studio.ui.data{can_ok:1b} if data storage mcpaint:calc internal.studio.data{unsaved_changes:1b} run return run function mcpaint:studio/ui/error_message/api/spawn {on_ok:"execute as @e[type=marker,tag=mcpaint.studio.ui_element.import_code,distance=..0.1,limit=1] run function mcpaint:studio/ui/import_code/internal/confirm",message:'{"translate":"mcpaint.error.new_file_while_unsaved","color":"black"}',bottom_line:-0.7f}


execute if score #studio.ui_element.focused_child mcpaint.calc matches 2 run return run function mcpaint:studio/internal/ui/close
execute if score #studio.ui_element.focused_child mcpaint.calc matches 3 run function mcpaint:studio/ui/import_code/internal/set_name_from_book
execute if score #studio.ui_element.focused_child mcpaint.calc matches 4 run tellraw @p[predicate=mcpaint:same_session] {"translate":"mcpaint.ui.button.image_converter_website.chat","color":"aqua","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"eroxen.github.io"}]},"clickEvent":{"action":"open_url","value":"https://eroxen.github.io/MC-paint-image-convert/"}}
execute if score #studio.ui_element.focused_child mcpaint.calc matches 5 run function mcpaint:studio/ui/import_code/internal/decode_from_book

data modify entity @s data set from storage mcpaint:calc internal.studio.ui.data