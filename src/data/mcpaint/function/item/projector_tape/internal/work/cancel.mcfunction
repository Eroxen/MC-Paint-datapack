tag @s remove mcpaint.player.projector_tape.working
execute if data storage mcpaint:calc internal.projector_tape.player_data.work.temp_entity run function mcpaint:item/projector_tape/internal/work/display/kill with storage mcpaint:calc internal.projector_tape.player_data.work.temp_entity
data remove storage mcpaint:calc internal.projector_tape.player_data.work
function mcpaint:item/projector_tape/internal/use/show_actionbar