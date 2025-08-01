tag @s add mcpaint.player.projector_tape.working
schedule function mcpaint:item/projector_tape/internal/work/tick 1t replace

function mcpaint:item/projector_tape/internal/work/load_player_data
data modify storage mcpaint:calc internal.projector_tape.player_data.work set value {task:"scale"}
data modify storage mcpaint:calc internal.projector_tape.player_data.work.temp_entity set value {size:1f,rotation:[0f,0f],snap_scale:0f}
execute if data storage mcpaint:calc internal.projector_tape.player_data.settings.snap_scale run data modify storage mcpaint:calc internal.projector_tape.player_data.work.temp_entity.snap_scale set from storage mcpaint:calc internal.projector_tape.player_data.settings.snap_scale
execute anchored eyes positioned ^ ^ ^2 run function mcpaint:item/projector_tape/internal/work/display/summon

data modify storage mcpaint:calc internal.macro set value {x:0d,y:0d,z:0d}
data modify storage mcpaint:calc internal.macro.x set from storage mcpaint:calc internal.projector_tape.settings.pos[0]
data modify storage mcpaint:calc internal.macro.y set from storage mcpaint:calc internal.projector_tape.settings.pos[1]
data modify storage mcpaint:calc internal.macro.z set from storage mcpaint:calc internal.projector_tape.settings.pos[2]
data modify storage mcpaint:calc internal.macro.uuid set from storage mcpaint:calc internal.projector_tape.player_data.work.temp_entity.uuid
execute if data storage mcpaint:calc internal.projector_tape.settings.pos run function mcpaint:item/projector_tape/internal/work/display/tp_to_coords with storage mcpaint:calc internal.macro
execute if data storage mcpaint:calc internal.projector_tape.settings.rotation run data modify storage mcpaint:calc internal.projector_tape.player_data.work.temp_entity.rotation set from storage mcpaint:calc internal.projector_tape.settings.rotation
function mcpaint:item/projector_tape/internal/work/display/set_rotation with storage mcpaint:calc internal.projector_tape.player_data.work.temp_entity



function mcpaint:item/projector_tape/internal/use/show_actionbar