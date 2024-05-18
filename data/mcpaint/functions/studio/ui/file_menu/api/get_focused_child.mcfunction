#####################################################################
# studio/ui/file_menu/api/get_focused_child.mcfunction
# written by Eroxen
#
# Executed as the studio marker.
# Finds the child at the specified position.
#
# Scoreboard input:
# - #studio.ui_element.u mcpaint.calc: u position from left border
# - #studio.ui_element.v mcpaint.calc: v position from bottom border
# - #studio.ui_element.u.px mcpaint.calc: u position from left border, in pixels
# - #studio.ui_element.v.px mcpaint.calc: v position from bottom border, in pixels
#
# Children:
# 1: save
# 2: save as
# 3: load
# 4: new file
# 5: export
# 11: undo
# 12: redo
#####################################################################

execute if score #studio.ui_element.u.px mcpaint.calc matches 4..13 if score #studio.ui_element.v.px mcpaint.calc matches 5..14 run scoreboard players set #studio.ui_element.focused_child mcpaint.calc 1
execute if score #studio.ui_element.u.px mcpaint.calc matches 15..24 if score #studio.ui_element.v.px mcpaint.calc matches 5..14 run scoreboard players set #studio.ui_element.focused_child mcpaint.calc 2
execute if score #studio.ui_element.u.px mcpaint.calc matches 26..35 if score #studio.ui_element.v.px mcpaint.calc matches 5..14 run scoreboard players set #studio.ui_element.focused_child mcpaint.calc 3
execute if score #studio.ui_element.u.px mcpaint.calc matches 37..46 if score #studio.ui_element.v.px mcpaint.calc matches 5..14 run scoreboard players set #studio.ui_element.focused_child mcpaint.calc 4
execute if score #studio.ui_element.u.px mcpaint.calc matches 48..57 if score #studio.ui_element.v.px mcpaint.calc matches 5..14 run scoreboard players set #studio.ui_element.focused_child mcpaint.calc 5

execute if score #studio.ui_element.u.px mcpaint.calc matches 71..80 if score #studio.ui_element.v.px mcpaint.calc matches 5..14 run scoreboard players set #studio.ui_element.focused_child mcpaint.calc 11
execute if score #studio.ui_element.u.px mcpaint.calc matches 82..91 if score #studio.ui_element.v.px mcpaint.calc matches 5..14 run scoreboard players set #studio.ui_element.focused_child mcpaint.calc 12

execute if score #studio.ui_element.focused_child mcpaint.calc matches 1.. run scoreboard players set #studio.ui_element.focused_child.can_click mcpaint.calc 1
execute if score #studio.ui_element.focused_child mcpaint.calc matches 1.. run scoreboard players set #studio.ui_element.focused_child.has_description mcpaint.calc 1
execute if score #studio.ui_element.focused_child mcpaint.calc matches 5 run scoreboard players set #studio.ui_element.focused_child.can_spam_click_when_sneaking mcpaint.calc 1
execute if score #studio.ui_element.focused_child mcpaint.calc matches 11..12 run scoreboard players set #studio.ui_element.focused_child.can_spam_click_when_sneaking mcpaint.calc 1