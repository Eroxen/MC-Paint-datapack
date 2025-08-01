data modify storage mcpaint:calc internal.projector_tape.item set from entity @s SelectedItem
data modify storage mcpaint:calc internal.projector_tape.data set value {}
data modify storage mcpaint:calc internal.projector_tape.data set from storage mcpaint:calc internal.projector_tape.item.components."minecraft:custom_data".mcpaint.projector_tape_data
data modify storage mcpaint:calc internal.projector_tape.settings set value {}
data modify storage mcpaint:calc internal.projector_tape.settings set from storage mcpaint:calc internal.projector_tape.item.components."minecraft:custom_data".mcpaint.projector_tape_settings