execute if data storage mcpaint:calc api.trigger_item_frame.trigger{facing_axis:"y"} run scoreboard players set #trigger_item_frame.can_place mcpaint.calc 0
execute align xyz positioned ~0.5 ~0.5 ~0.5 if entity @e[type=marker,tag=mcpaint.studio,distance=..0.1,limit=1] run scoreboard players set #trigger_item_frame.can_place mcpaint.calc 0
execute if score #trigger_item_frame.can_place mcpaint.calc matches 0 if data storage mcpaint:calc api.trigger_item_frame.placer{survival_or_adventure:1b} run loot spawn ~ ~ ~ loot mcpaint:studio
execute if score #trigger_item_frame.can_place mcpaint.calc matches 0 run return 0

data modify storage mcpaint:calc api.studio.spawn set value {width:1,height:1}
data modify storage mcpaint:calc api.studio.spawn.facing set from storage mcpaint:calc api.trigger_item_frame.trigger.facing
function mcpaint:studio/api/spawn