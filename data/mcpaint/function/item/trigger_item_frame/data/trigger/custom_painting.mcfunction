execute as @p[tag=mcpaint.player.trigger_item_frame.placer] unless predicate mcpaint:permission/place_custom_painting run scoreboard players set #trigger_item_frame.can_place mcpaint.calc 0
execute if score #trigger_item_frame.can_place mcpaint.calc matches 0 if data storage mcpaint:calc api.trigger_item_frame.placer{survival_or_adventure:1b} run loot spawn ^ ^ ^0.25 loot mcpaint:item/vanilla_painting
execute if score #trigger_item_frame.can_place mcpaint.calc matches 0 run return 0

data modify storage mcpaint:calc api.custom_painting.spawn set from storage mcpaint:calc api.trigger_item_frame.trigger.custom_painting
data modify storage mcpaint:calc api.custom_painting.spawn.facing_axis set from storage mcpaint:calc api.trigger_item_frame.trigger.facing_axis
data modify storage mcpaint:calc api.custom_painting.spawn.rotation set from storage mcpaint:calc api.trigger_item_frame.trigger.rotation

function mcpaint:custom_painting/api/spawn
data modify storage mcpaint:calc api.trigger_item_frame.grant_advancement set value "mcpaint:guide/place_custom_painting"