data modify storage mcpaint:calc internal.projector_tape.item.components."minecraft:custom_data".mcpaint.projector_tape_data set from storage mcpaint:calc internal.projector_tape.data
data modify storage mcpaint:calc internal.projector_tape.item.components."minecraft:custom_data".mcpaint.projector_tape_settings set from storage mcpaint:calc internal.projector_tape.settings

execute if data storage mcpaint:calc internal.projector_tape.data{mode:"default_interact"} run data remove storage mcpaint:calc internal.projector_tape.item.components."minecraft:attribute_modifiers"
execute unless data storage mcpaint:calc internal.projector_tape.data{mode:"default_interact"} run data modify storage mcpaint:calc internal.projector_tape.item.components."minecraft:attribute_modifiers" set value {"show_in_tooltip":false,"modifiers":[{"type":"minecraft:block_interaction_range","amount":-100,"id":"mcpaint:prevent_block_interaction","operation":"add_value","slot":"mainhand"},{"type":"minecraft:entity_interaction_range","amount":-100,"id":"mcpaint:prevent_entity_interaction","operation":"add_value","slot":"mainhand"}]}

summon item_display ~ ~ ~ {Tags:["mcpaint.entity","mcpaint.temp_item"],view_range:0f}
data modify entity @n[type=item_display,tag=mcpaint.temp_item,distance=..1] item set from storage mcpaint:calc internal.projector_tape.item
item replace entity @s weapon.mainhand from entity @n[type=item_display,tag=mcpaint.temp_item,distance=..1] contents
kill @e[type=item_display,tag=mcpaint.temp_item,distance=..1]