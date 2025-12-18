data modify storage mcpaint:calc api.trigger_armor_stand.trigger set from entity @s data.mcpaint

scoreboard players set #trigger_armor_stand.can_place mcpaint.calc 1
function mcpaint:item/trigger_armor_stand/internal/trigger with storage mcpaint:calc api.trigger_armor_stand.trigger
kill @s[tag=mcpaint.trigger_armor_stand]