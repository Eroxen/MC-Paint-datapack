execute unless predicate mcpaint:permission/break_studio run return fail

execute as @e[type=marker,tag=mcpaint.studio.marker,distance=..0.1] run function mcpaint:studio/api/destroy
execute if predicate mcpaint:survival_or_adventure run loot spawn ~ ~ ~ loot mcpaint:item/studio