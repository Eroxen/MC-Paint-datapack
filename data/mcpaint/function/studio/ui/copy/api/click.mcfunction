#####################################################################
# studio/ui/file_menu/api/click.mcfunction
# written by Eroxen
#
# Clicks the copy menu. Called on the marker.
#
# Children:
# 1: cancel
# 2: copy to book
# 3: copy to clipboard
#####################################################################

data modify storage mcpaint:calc internal.studio.ui.data set from entity @s data

execute if score #studio.ui_element.focused_child mcpaint.calc matches 1 run return run function mcpaint:studio/internal/ui/close
execute if score #studio.ui_element.focused_child mcpaint.calc matches 2 as @p[predicate=mcpaint:same_session] unless items entity @s weapon.offhand minecraft:writable_book run return run tellraw @s {"translate":"mcpaint.error.cannot_find_item_in_offhand","color":"red","with":[{"translate":"item.minecraft.writable_book"}]}
execute if score #studio.ui_element.focused_child mcpaint.calc matches 2 as @p[predicate=mcpaint:same_session] run return run function mcpaint:studio/ui/copy/internal/copy_to_book with storage mcpaint:calc internal.studio.ui.data
execute if score #studio.ui_element.focused_child mcpaint.calc matches 3 as @p[predicate=mcpaint:same_session] run return run function mcpaint:studio/ui/copy/internal/copy_to_clipboard with storage mcpaint:calc internal.studio.ui.data

data modify entity @s data set from storage mcpaint:calc internal.studio.ui.data