execute unless data storage mcpaint:calc internal.projector_tape.data{mode:"scale"} run return run function mcpaint:item/projector_tape/internal/work/cancel

execute if score #projector_tape.swapped_hands mcpaint.calc matches 1 run function mcpaint:item/projector_tape/internal/work/scale/change_snap


data modify storage mcpaint:calc macro set value {plane_x_rotation:0f,plane_y_rotation:0f,offset:0f}
data modify storage mcpaint:calc macro.rotation set from entity @s Rotation
data modify storage mcpaint:calc macro.plane_x_rotation set from storage mcpaint:calc internal.projector_tape.player_data.work.temp_entity.rotation[0]
data modify storage mcpaint:calc macro.plane_y_rotation set from storage mcpaint:calc internal.projector_tape.player_data.work.temp_entity.rotation[1]
### could be null
data modify storage mcpaint:calc macro.origin set from storage mcpaint:calc internal.projector_tape.settings.pos
execute anchored eyes positioned ^ ^ ^ run function eroxified2:math.ray/api/plane/rotated_plane_uv with storage mcpaint:calc macro

title @s actionbar {"text":"","extra": [{"score": {"name": "math.ray.hit", "objective": "eroxified2.api"}},{"text":", "},{"score": {"name": "math.ray.hit.u", "objective": "eroxified2.api"}},{"text":", "},{"score": {"name": "math.ray.hit.v", "objective": "eroxified2.api"}}]}


execute if score math.ray.hit eroxified2.api matches 0 run return fail
execute if score math.ray.hit.u eroxified2.api matches ..-1 run scoreboard players operation math.ray.hit.u eroxified2.api *= #const.-1 mcpaint.calc
execute if score math.ray.hit.v eroxified2.api matches ..-1 run scoreboard players operation math.ray.hit.v eroxified2.api *= #const.-1 mcpaint.calc

scoreboard players operation #projector_tape.size mcpaint.calc = math.ray.hit.u eroxified2.api
scoreboard players operation #projector_tape.size mcpaint.calc > math.ray.hit.v eroxified2.api
scoreboard players operation #projector_tape.size mcpaint.calc *= #const.2 mcpaint.calc
execute unless data storage mcpaint:calc internal.projector_tape.player_data.work.temp_entity{snap_scale:0f} run function mcpaint:item/projector_tape/internal/work/scale/snap

execute if score #projector_tape.size mcpaint.calc matches ..125 run scoreboard players set #projector_tape.size mcpaint.calc 125
execute if score #projector_tape.size mcpaint.calc matches 64000.. run scoreboard players set #projector_tape.size mcpaint.calc 64000

data modify storage mcpaint:calc internal.temp set value 0f
execute store result storage mcpaint:calc internal.temp float 0.001 run scoreboard players get #projector_tape.size mcpaint.calc
execute store success score #projector_tape.changed mcpaint.calc run data modify storage mcpaint:calc internal.projector_tape.player_data.work.temp_entity.size set from storage mcpaint:calc internal.temp
execute if score #projector_tape.changed mcpaint.calc matches 1 run function mcpaint:item/projector_tape/internal/work/display/set_size with storage mcpaint:calc internal.projector_tape.player_data.work.temp_entity


# execute store result storage mcpaint:calc internal.projector_tape.player_data.work.temp_entity.rotation[0] float 0.001 run scoreboard players get #temp.yaw mcpaint.calc
# execute store result storage mcpaint:calc internal.projector_tape.player_data.work.temp_entity.rotation[1] float 0.001 run scoreboard players get #temp.pitch mcpaint.calc


# execute anchored eyes positioned ^ ^ ^5 run function mcpaint:item/projector_tape/internal/work/display/set_rotation with storage mcpaint:calc internal.projector_tape.player_data.work.temp_entity