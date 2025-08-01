execute on vehicle run data modify entity @s item.components."minecraft:custom_model_data".flags[0] set value 0b

execute on vehicle if data entity @s item.components."minecraft:custom_data"{active:1b} at @s run function mcpaint:item/projector/internal/deactivate_override

summon item_display ~ ~ ~ {Tags:["mcpaint.entity","mcpaint.temp_item"],view_range:0f}
execute on vehicle run data modify entity @n[type=item_display,tag=mcpaint.temp_item,distance=..1] item set from entity @s item.components."minecraft:custom_data".tape_item
execute on vehicle run data remove entity @s item.components."minecraft:custom_data".tape_item
execute on target run item replace entity @s weapon.mainhand from entity @n[type=item_display,tag=mcpaint.temp_item,distance=..16] contents
kill @e[type=item_display,tag=mcpaint.temp_item,distance=..16]

playsound minecraft:entity.item_frame.remove_item block @a[distance=..32] ~ ~ ~ 1 1