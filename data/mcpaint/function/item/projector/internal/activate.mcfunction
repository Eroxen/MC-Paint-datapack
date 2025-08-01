data modify storage mcpaint:calc api.projector_tape.item set from entity @s item.components."minecraft:custom_data".tape_item
execute positioned ~ ~1 ~ run function mcpaint:item/projector_tape/api/spawn_display
data modify entity @s item.components."minecraft:custom_data".display_entity.uuid set from storage mcpaint:calc api.projector_tape.display_uuid