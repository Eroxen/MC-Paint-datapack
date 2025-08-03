data modify storage mcpaint:calc internal.datafixer.old_item set from entity @s item

execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"slots":{"contents":{"predicates":{"minecraft:custom_data":"{mcpaint:{paint_bucket:1b}}"}}}}} \
run function mcpaint:datafixer/internal/update/item/paint_bucket

execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"slots":{"contents":{"predicates":{"minecraft:custom_data":"{mcpaint:{custom_painting:1b}}"}}}}} \
run function mcpaint:datafixer/internal/update/item/custom_painting
execute unless predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"slots":{"contents":{"predicates":{"minecraft:custom_data":"{mcpaint:{custom_painting:1b}}"}}}}} \
if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"slots":{"contents":{"predicates":{"minecraft:custom_data":"{mcpaint:{trigger_item_frame:1b}}"}}}}} \
if data entity @s item.components.minecraft:entity_data.Item.components.minecraft:custom_data.mcpaint{trigger:"custom_painting"} \
run function mcpaint:datafixer/internal/update/item/custom_painting

execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"slots":{"contents":{"predicates":{"minecraft:custom_data":"{mcpaint:{studio:1b}}"}}}}} \
run loot replace entity @s contents loot mcpaint:item/studio
execute unless predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"slots":{"contents":{"predicates":{"minecraft:custom_data":"{mcpaint:{studio:1b}}"}}}}} \
if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"slots":{"contents":{"predicates":{"minecraft:custom_data":"{mcpaint:{trigger_item_frame:1b}}"}}}}} \
if data entity @s item.components.minecraft:entity_data.Item.components.minecraft:custom_data.mcpaint{trigger:"studio"} \
run loot replace entity @s contents loot mcpaint:item/studio

execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"slots":{"contents":{"predicates":{"minecraft:custom_data":"{mcpaint:{brush:1b}}"}}}}} \
run loot replace entity @s contents loot mcpaint:item/brush

data modify entity @s item.count set from storage mcpaint:calc internal.datafixer.old_item.count
execute if data storage mcpaint:calc internal.datafixer.old_item.components.minecraft:custom_name run data modify entity @s item.components.minecraft:custom_name set from storage mcpaint:calc internal.datafixer.old_item.components.minecraft:custom_name