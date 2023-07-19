data modify storage mcpaint:calc painter_command set value {command:"colour_picker"}
data modify storage mcpaint:calc painter_command.button set from storage mcpaint:calc painter_tick.intersect.child

execute if data storage mcpaint:calc painter_command.button{can_dye:1b} if predicate mcpaint:holding_dye run function mcpaint:painting_mode/internal/click/colour_picker_with_dye