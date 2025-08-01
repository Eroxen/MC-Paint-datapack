data modify storage mcpaint:calc internal.paint_bucket.colour set value {}
data modify storage mcpaint:calc internal.paint_bucket.colour.potion set from entity @s item.components.minecraft:potion_contents.custom_color
loot replace entity @s contents loot mcpaint:item/paint_bucket
data modify storage mcpaint:calc internal.paint_bucket.drop_item set from entity @s item
data modify storage mcpaint:calc internal.paint_bucket.drop_item.components.minecraft:potion_contents.custom_color set from storage mcpaint:calc internal.paint_bucket.colour.potion
function mcpaint:item/paint_bucket/internal/break/drop_item with storage mcpaint:calc internal.paint_bucket.drop_item