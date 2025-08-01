execute on vehicle run data modify entity @s item.components."minecraft:custom_model_data".flags[0] set value 1b
execute on vehicle run data modify entity @s item.components."minecraft:custom_data".tape_item set value {}

summon item_display ~ ~ ~ {Tags:["mcpaint.entity","mcpaint.temp_item"],view_range:0f}
execute on target run item replace entity @n[type=item_display,tag=mcpaint.temp_item,distance=..16] contents from entity @s weapon.mainhand
execute on target if predicate mcpaint:survival_or_adventure run function eroxified2:item/api/decrement_mainhand
execute on vehicle run data modify entity @s item.components."minecraft:custom_data".tape_item set from entity @n[type=item_display,tag=mcpaint.temp_item,distance=..1] item
execute on vehicle run data modify entity @s item.components."minecraft:custom_data".tape_item.count set value 1
kill @e[type=item_display,tag=mcpaint.temp_item,distance=..16]

playsound minecraft:entity.item_frame.add_item block @a[distance=..32] ~ ~ ~ 1 1