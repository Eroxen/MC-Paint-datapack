execute on attacker unless predicate mcpaint:can_break_custom_painting run return 0
execute on attacker store result score drop_items mcpaint.calc if predicate mcpaint:survival_or_adventure

execute positioned ~ ~0.25 ~ as @e[type=marker,tag=mcpaint.custom_painting.marker,distance=..0.03] at @s run function mcpaint:custom_painting/kill
execute positioned ~ ~0.25 ~ run kill @e[type=item_display,tag=mcpaint.custom_painting.item_display,distance=..0.03]
execute positioned ~ ~0.25 ~ run kill @e[type=text_display,tag=mcpaint.custom_painting.text_display,distance=..0.03]
kill @s