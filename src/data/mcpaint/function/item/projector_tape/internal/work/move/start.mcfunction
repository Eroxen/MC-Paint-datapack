tag @s add mcpaint.player.projector_tape.working
schedule function mcpaint:item/projector_tape/internal/work/tick 1t replace

function mcpaint:item/projector_tape/internal/work/load_player_data
data modify storage mcpaint:calc internal.projector_tape.player_data.work set value {task:"move"}
data modify storage mcpaint:calc internal.projector_tape.player_data.work.temp_entity set value {size:1f,rotation:[0f,0f],snap_pos:{gap:0f,x:1b,y:1b,z:1b}}
execute if data storage mcpaint:calc internal.projector_tape.player_data.settings.snap_pos run data modify storage mcpaint:calc internal.projector_tape.player_data.work.temp_entity.snap_pos.gap set from storage mcpaint:calc internal.projector_tape.player_data.settings.snap_pos
execute if data storage mcpaint:calc internal.projector_tape.settings.rotation run data modify storage mcpaint:calc internal.projector_tape.player_data.work.temp_entity.rotation set from storage mcpaint:calc internal.projector_tape.settings.rotation
function mcpaint:item/projector_tape/internal/work/display/set_rotation with storage mcpaint:calc internal.projector_tape.player_data.work.temp_entity

execute anchored eyes positioned ^ ^ ^2 run function mcpaint:item/projector_tape/internal/work/display/summon

function mcpaint:item/projector_tape/internal/use/show_actionbar