execute unless data storage mcpaint:calc internal.projector_tape.data{mode:"rotate"} run return run function mcpaint:item/projector_tape/internal/work/cancel

execute if score #projector_tape.swapped_hands mcpaint.calc matches 1 run function mcpaint:item/projector_tape/internal/work/rotate/change_snap

data modify storage mcpaint:calc internal.temp set from entity @s Rotation
execute store result score #temp.yaw mcpaint.calc run data get storage mcpaint:calc internal.temp[0] 1000
execute store result score #temp.pitch mcpaint.calc run data get storage mcpaint:calc internal.temp[1] -1000

scoreboard players add #temp.yaw mcpaint.calc 180000
execute if score #temp.yaw mcpaint.calc matches ..-1 run scoreboard players add #temp.yaw mcpaint.calc 360000
execute if score #temp.yaw mcpaint.calc matches 360000.. run scoreboard players remove #temp.yaw mcpaint.calc 360000

execute unless data storage mcpaint:calc internal.projector_tape.player_data.work.temp_entity{snap_rot:0f} run function mcpaint:item/projector_tape/internal/work/rotate/snap

execute store result storage mcpaint:calc internal.projector_tape.player_data.work.temp_entity.rotation[0] float 0.001 run scoreboard players get #temp.yaw mcpaint.calc
execute store result storage mcpaint:calc internal.projector_tape.player_data.work.temp_entity.rotation[1] float 0.001 run scoreboard players get #temp.pitch mcpaint.calc


execute anchored eyes positioned ^ ^ ^5 run function mcpaint:item/projector_tape/internal/work/display/set_rotation with storage mcpaint:calc internal.projector_tape.player_data.work.temp_entity