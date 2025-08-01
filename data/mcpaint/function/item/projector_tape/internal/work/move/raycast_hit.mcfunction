data modify storage mcpaint:calc internal.macro set value {x:0d,y:0d,z:0d}
data modify storage mcpaint:calc internal.macro.x set from storage bs:out raycast.hit_point[0]
data modify storage mcpaint:calc internal.macro.y set from storage bs:out raycast.hit_point[1]
data modify storage mcpaint:calc internal.macro.z set from storage bs:out raycast.hit_point[2]
data modify storage mcpaint:calc internal.macro.uuid set from storage mcpaint:calc internal.projector_tape.player_data.work.temp_entity.uuid
function mcpaint:item/projector_tape/internal/work/display/tp_to_coords with storage mcpaint:calc internal.macro

data modify storage mcpaint:calc internal.projector_tape.player_data.work.temp_entity.snap_pos merge value {x:1b,y:1b,z:1b}
execute store result score #temp mcpaint.calc run data get storage bs:out raycast.hit_normal[0] 1
execute unless score #temp mcpaint.calc matches 0 run data modify storage mcpaint:calc internal.projector_tape.player_data.work.temp_entity.snap_pos.x set value 0b
execute store result score #temp mcpaint.calc run data get storage bs:out raycast.hit_normal[1] 1
execute unless score #temp mcpaint.calc matches 0 run data modify storage mcpaint:calc internal.projector_tape.player_data.work.temp_entity.snap_pos.y set value 0b
execute store result score #temp mcpaint.calc run data get storage bs:out raycast.hit_normal[2] 1
execute unless score #temp mcpaint.calc matches 0 run data modify storage mcpaint:calc internal.projector_tape.player_data.work.temp_entity.snap_pos.z set value 0b