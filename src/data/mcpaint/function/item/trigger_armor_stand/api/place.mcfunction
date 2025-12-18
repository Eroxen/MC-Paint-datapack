#####################################################################
# trigger_armor_stand/api/place.mcfunction
# written by Eroxen
#
# Called by the player when placing a trigger armor stand.
#####################################################################

advancement revoke @s only mcpaint:trigger/place_trigger_armor_stand

tag @s add mcpaint.player.trigger_armor_stand.placer
data modify storage mcpaint:calc api.trigger_armor_stand set value {}
function mcpaint:util/api/get_horizontal_direction
data modify storage mcpaint:calc api.trigger_armor_stand.placer.UUID set from entity @s UUID
data modify storage mcpaint:calc api.trigger_armor_stand.placer.horizontal_direction set from storage mcpaint:calc api.util.horizontal_direction
execute store result storage mcpaint:calc api.trigger_armor_stand.placer.survival_or_adventure byte 1 if predicate mcpaint:survival_or_adventure
execute store result storage mcpaint:calc api.trigger_armor_stand.placer.is_sneaking byte 1 if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{sneak:1b}}}}
execute as @e[type=armor_stand,tag=mcpaint.trigger_armor_stand] at @s run function mcpaint:item/trigger_armor_stand/internal/placed
tag @s remove mcpaint.player.trigger_armor_stand.placer

execute if data storage mcpaint:calc api.trigger_armor_stand.grant_advancement run function mcpaint:item/trigger_armor_stand/internal/grant_advancement with storage mcpaint:calc api.trigger_armor_stand