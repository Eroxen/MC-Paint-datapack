scoreboard players set can_edit mcpaint.calc 0
execute on target if predicate mcpaint:can_edit_custom_painting run scoreboard players set can_edit mcpaint.calc 1
execute store success score holding_item mcpaint.calc on target if entity @s[predicate=mcpaint:holding_setting_changer]

execute if score can_edit mcpaint.calc matches 1 if score holding_item mcpaint.calc matches 1 on target run data modify storage mcpaint:calc interactor set from entity @s {}
execute if score can_edit mcpaint.calc matches 1 if score holding_item mcpaint.calc matches 1 positioned ~ ~0.25 ~ as @e[type=marker,tag=mcpaint.custom_painting.marker,distance=..0.03,limit=1] at @s run function mcpaint:custom_painting/change_settings

data remove entity @s interaction