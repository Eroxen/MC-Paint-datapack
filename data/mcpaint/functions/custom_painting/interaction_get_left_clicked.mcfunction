execute on attacker store result score can_break mcpaint.calc if predicate mcpaint:can_break_custom_painting
execute on attacker store result score drop_items mcpaint.calc if predicate mcpaint:survival_or_adventure

execute if score can_break mcpaint.calc matches 1 positioned ~ ~0.25 ~ as @e[type=marker,tag=mcpaint.custom_painting.marker,distance=..0.03] at @s run function mcpaint:custom_painting/kill
execute if score can_break mcpaint.calc matches 1 positioned ~ ~0.25 ~ run kill @e[type=item_display,tag=mcpaint.custom_painting.item_display,distance=..0.03]
execute if score can_break mcpaint.calc matches 1 positioned ~ ~0.25 ~ run kill @e[type=text_display,tag=mcpaint.custom_painting.text_display,distance=..0.03]
execute if score can_break mcpaint.calc matches 1 run kill @s
execute if score can_break mcpaint.calc matches 0 run data remove entity @s attack