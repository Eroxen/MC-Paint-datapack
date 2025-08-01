data modify storage mcpaint:calc internal.datafixer.old_item set from entity @s item
loot replace entity @s contents loot mcpaint:item/paint_bucket
data modify entity @s item.count set from storage mcpaint:calc internal.datafixer.old_item.count
data modify entity @s item.components.minecraft:potion_contents.custom_color set from storage mcpaint:calc internal.datafixer.old_item.components.minecraft:potion_contents.custom_color