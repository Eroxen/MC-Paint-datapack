#####################################################################
# trigger_item_frame/api/place.mcfunction
# written by Eroxen
#
# Called by the player when placing a trigger item frame.
#####################################################################

advancement revoke @s only mcpaint:trigger/place_trigger_item_frame

tag @s add mcpaint.player.trigger_item_frame.placer
data modify storage mcpaint:calc api.trigger_item_frame set value {}
function mcpaint:util/api/get_horizontal_direction
data modify storage mcpaint:calc api.trigger_item_frame.placer.UUID set from entity @s UUID
data modify storage mcpaint:calc api.trigger_item_frame.placer.horizontal_direction set from storage mcpaint:calc api.util.horizontal_direction
execute store result storage mcpaint:calc api.trigger_item_frame.placer.survival_or_adventure byte 1 if predicate mcpaint:survival_or_adventure
execute store result storage mcpaint:calc api.trigger_item_frame.placer.is_sneaking byte 1 if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:type_specific/player":{input:{sneak:1b}}}}
execute as @e[type=item_frame,tag=mcpaint.trigger_item_frame] at @s run function mcpaint:item/trigger_item_frame/internal/placed
tag @s remove mcpaint.player.trigger_item_frame.placer

execute if data storage mcpaint:calc api.trigger_item_frame.grant_advancement run function mcpaint:item/trigger_item_frame/internal/grant_advancement with storage mcpaint:calc api.trigger_item_frame