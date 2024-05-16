#####################################################################
# studio/ui/new_file/api/get_focused_child.mcfunction
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

execute if score #studio.ui_element.u.px mcpaint.calc matches 15..46 if score #studio.ui_element.v.px mcpaint.calc matches 4..22 run scoreboard players set #studio.ui_element.focused_child mcpaint.calc 1
execute if score #studio.ui_element.u.px mcpaint.calc matches 49..80 if score #studio.ui_element.v.px mcpaint.calc matches 4..22 run scoreboard players set #studio.ui_element.focused_child mcpaint.calc 2

execute if score #studio.ui_element.u.px mcpaint.calc matches 3..20 if score #studio.ui_element.v.px mcpaint.calc matches 57..74 run scoreboard players set #studio.ui_element.focused_child mcpaint.calc 3

execute if score #studio.ui_element.u.px mcpaint.calc matches 39..47 if score #studio.ui_element.v.px mcpaint.calc matches 68..74 run scoreboard players set #studio.ui_element.focused_child mcpaint.calc 11
execute if score #studio.ui_element.u.px mcpaint.calc matches 39..47 if score #studio.ui_element.v.px mcpaint.calc matches 60..66 run scoreboard players set #studio.ui_element.focused_child mcpaint.calc 12
execute if score #studio.ui_element.u.px mcpaint.calc matches 67..75 if score #studio.ui_element.v.px mcpaint.calc matches 68..74 run scoreboard players set #studio.ui_element.focused_child mcpaint.calc 13
execute if score #studio.ui_element.u.px mcpaint.calc matches 67..75 if score #studio.ui_element.v.px mcpaint.calc matches 60..66 run scoreboard players set #studio.ui_element.focused_child mcpaint.calc 14
execute if score #studio.ui_element.u.px mcpaint.calc matches 22..30 if score #studio.ui_element.v.px mcpaint.calc matches 50..56 run scoreboard players set #studio.ui_element.focused_child mcpaint.calc 15
execute if score #studio.ui_element.u.px mcpaint.calc matches 22..30 if score #studio.ui_element.v.px mcpaint.calc matches 42..48 run scoreboard players set #studio.ui_element.focused_child mcpaint.calc 16
execute if score #studio.ui_element.u.px mcpaint.calc matches 22..30 if score #studio.ui_element.v.px mcpaint.calc matches 34..40 run scoreboard players set #studio.ui_element.focused_child mcpaint.calc 17
execute if score #studio.ui_element.u.px mcpaint.calc matches 22..30 if score #studio.ui_element.v.px mcpaint.calc matches 26..32 run scoreboard players set #studio.ui_element.focused_child mcpaint.calc 18

execute if score #studio.ui_element.focused_child mcpaint.calc matches 1.. run scoreboard players set #studio.ui_element.focused_child.can_click mcpaint.calc 1
execute if score #studio.ui_element.focused_child mcpaint.calc matches 10.. if score #studio.session.is_sneaking mcpaint.calc matches 1 run scoreboard players set #studio.ui_element.focused_child.can_spam_click mcpaint.calc 1
execute if score #studio.ui_element.focused_child mcpaint.calc matches 1.. run scoreboard players set #studio.ui_element.focused_child.has_description mcpaint.calc 1