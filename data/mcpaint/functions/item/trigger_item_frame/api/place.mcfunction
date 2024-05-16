#####################################################################
# trigger_item_frame/api/place.mcfunction
# written by Eroxen
#
# Called by the player when placing a trigger item frame.
#####################################################################

advancement revoke @s only mcpaint:trigger/place_trigger_item_frame

data modify storage mcpaint:calc api.trigger_item_frame set value {}
function mcpaint:util/api/get_horizontal_direction
data modify storage mcpaint:calc api.trigger_item_frame.placer.horizontal_direction set from storage mcpaint:calc api.util.horizontal_direction
execute store result storage mcpaint:calc api.trigger_item_frame.placer.survival_or_adventure byte 1 if predicate mcpaint:survival_or_adventure
execute as @e[type=item_frame,tag=mcpaint.trigger_item_frame] at @s run function mcpaint:item/trigger_item_frame/internal/placed