execute on attacker if predicate mcpaint:permission/break_custom_painting as @e[type=item_display,tag=mcpaint.custom_painting.item_display,tag=!mcpaint.custom_painting.locked,distance=..0.1] at @s run function mcpaint:custom_painting/api/destroy

execute unless entity @e[type=item_display,tag=mcpaint.custom_painting.item_display,distance=..0.1] if entity @s[tag=mcpaint.custom_painting.interaction.horizontal] run kill @s
execute unless entity @e[type=item_display,tag=mcpaint.custom_painting.item_display,distance=..0.1] if entity @s[tag=mcpaint.custom_painting.interaction.vertical] positioned ~ ~-0.375 ~ run kill @e[type=interaction,tag=mcpaint.custom_painting.interaction.vertical,distance=..0.3]