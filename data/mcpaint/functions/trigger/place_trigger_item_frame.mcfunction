data modify storage mcpaint:calc trigger_item_frame set value {}
data modify storage mcpaint:calc trigger_item_frame.placer set from entity @s {}
data modify storage mcpaint:calc trigger_item_frame.placer.horizontal_direction set value "north"
execute store result storage mcpaint:calc trigger_item_frame.placer.survival_or_adventure byte 1 if predicate mcpaint:survival_or_adventure
execute if entity @s[y_rotation=45..135] run data modify storage mcpaint:calc trigger_item_frame.placer.horizontal_direction set value "east"
execute if entity @s[y_rotation=135..225] run data modify storage mcpaint:calc trigger_item_frame.placer.horizontal_direction set value "south"
execute if entity @s[y_rotation=225..315] run data modify storage mcpaint:calc trigger_item_frame.placer.horizontal_direction set value "west"
execute as @e[type=item_frame,tag=mcpaint.trigger_item_frame] at @s run function mcpaint:trigger_item_frame/tick

advancement revoke @s only mcpaint:trigger/place_trigger_item_frame