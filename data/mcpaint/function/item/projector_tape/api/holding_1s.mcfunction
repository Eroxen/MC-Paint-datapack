data modify storage mcpaint:calc internal.projector_tape.item set from entity @s SelectedItem
data modify storage mcpaint:calc internal.projector_tape.data set value {}
data modify storage mcpaint:calc internal.projector_tape.data set from storage mcpaint:calc internal.projector_tape.item.components."minecraft:custom_data".mcpaint.projector_tape_data
function mcpaint:item/projector_tape/internal/use/show_actionbar