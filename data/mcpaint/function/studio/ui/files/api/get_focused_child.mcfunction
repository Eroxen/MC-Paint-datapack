#####################################################################
# studio/ui/files/api/get_focused_child.mcfunction
# written by Eroxen
#
# Executed as the studio marker
# Finds the child at the specified position.
#
# Scoreboard input:
# - #studio.ui_element.u mcpaint.calc: u position from left border
# - #studio.ui_element.v mcpaint.calc: v position from bottom border
# - #studio.ui_element.u.px mcpaint.calc: u position from left border, in pixels
# - #studio.ui_element.v.px mcpaint.calc: v position from bottom border, in pixels
#
# Children:
# 1: ok
# 2: cancel
# 3: previous page
# 4: next page
# 5: trash
# 6: export
# 7: encode
# 100i: row i in the filenames
#####################################################################

execute if score #studio.ui_element.u.px mcpaint.calc matches 52..70 if score #studio.ui_element.v.px mcpaint.calc matches 4..13 run scoreboard players set #studio.ui_element.focused_child mcpaint.calc 1
execute if score #studio.ui_element.u.px mcpaint.calc matches 72..90 if score #studio.ui_element.v.px mcpaint.calc matches 4..13 run scoreboard players set #studio.ui_element.focused_child mcpaint.calc 2

execute if score #studio.ui_element.u.px mcpaint.calc matches 5..12 if score #studio.ui_element.v.px mcpaint.calc matches 4..13 run scoreboard players set #studio.ui_element.focused_child mcpaint.calc 3
execute if score #studio.ui_element.u.px mcpaint.calc matches 39..46 if score #studio.ui_element.v.px mcpaint.calc matches 4..13 run scoreboard players set #studio.ui_element.focused_child mcpaint.calc 4

execute if score #studio.ui_element.u.px mcpaint.calc matches 80..89 if score #studio.ui_element.v.px mcpaint.calc matches 76..85 run scoreboard players set #studio.ui_element.focused_child mcpaint.calc 5
execute if score #studio.ui_element.u.px mcpaint.calc matches 69..78 if score #studio.ui_element.v.px mcpaint.calc matches 76..85 run scoreboard players set #studio.ui_element.focused_child mcpaint.calc 6
execute if score #studio.ui_element.u.px mcpaint.calc matches 58..67 if score #studio.ui_element.v.px mcpaint.calc matches 76..85 run scoreboard players set #studio.ui_element.focused_child mcpaint.calc 7

execute if score #studio.ui_element.u.px mcpaint.calc matches 6..89 if score #studio.ui_element.v.px mcpaint.calc matches 16..63 run function mcpaint:studio/ui/files/internal/testfor_file_row

execute if score #studio.ui_element.focused_child mcpaint.calc matches 1 unless data entity @s data{selected_work:-1} run scoreboard players set #studio.ui_element.focused_child.can_click mcpaint.calc 1
execute if score #studio.ui_element.focused_child mcpaint.calc matches 2 run scoreboard players set #studio.ui_element.focused_child.can_click mcpaint.calc 1
execute if score #studio.ui_element.focused_child mcpaint.calc matches 3 if data entity @s data{can_previous:1b} run scoreboard players set #studio.ui_element.focused_child.can_click mcpaint.calc 1
execute if score #studio.ui_element.focused_child mcpaint.calc matches 4 if data entity @s data{can_next:1b} run scoreboard players set #studio.ui_element.focused_child.can_click mcpaint.calc 1
execute if score #studio.ui_element.focused_child mcpaint.calc matches 3..4 run scoreboard players set #studio.ui_element.focused_child.can_spam_click_when_sneaking mcpaint.calc 1
execute if score #studio.ui_element.focused_child mcpaint.calc matches 5..7 unless data entity @s data{selected_work:-1} run scoreboard players set #studio.ui_element.focused_child.can_click mcpaint.calc 1
execute if score #studio.ui_element.focused_child mcpaint.calc matches 1000.. run scoreboard players set #studio.ui_element.focused_child.can_click mcpaint.calc 1
execute if score #studio.ui_element.focused_child mcpaint.calc matches 1..7 run scoreboard players set #studio.ui_element.focused_child.has_description mcpaint.calc 1