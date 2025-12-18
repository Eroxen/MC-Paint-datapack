execute as @p[tag=mcpaint.player.trigger_armor_stand.placer] unless predicate mcpaint:permission/place_easel run scoreboard players set #trigger_armor_stand.can_place mcpaint.calc 0
execute if score #trigger_armor_stand.can_place mcpaint.calc matches 0 if data storage mcpaint:calc api.trigger_armor_stand.placer{survival_or_adventure:1b} run loot spawn ^ ^ ^0.25 loot mcpaint:item/easel
execute if score #trigger_armor_stand.can_place mcpaint.calc matches 0 run return 0

function mcpaint:easel/api/spawn