data modify storage mcpaint:calc internal.custom_painting.item.components.minecraft:entity_data.Item.components.minecraft:custom_data.mcpaint.custom_painting.options set from storage mcpaint:calc internal.custom_painting.data.options
execute if data storage mcpaint:calc internal.custom_painting.data.options{show_lore:1b} run data modify storage mcpaint:calc internal.custom_painting.item.components.minecraft:entity_data.Item.components.minecraft:custom_data.mcpaint.custom_painting.merge_data.lore set from storage mcpaint:calc internal.custom_painting.data.lore