execute unless data storage mcpaint:calc internal.projector_tape.data{mode:"move"} run return run function mcpaint:item/projector_tape/internal/work/cancel

execute if score #projector_tape.swapped_hands mcpaint.calc matches 1 run function mcpaint:item/projector_tape/internal/work/move/change_snap

execute at @s anchored eyes positioned ^ ^ ^ store result score #projector_tape.raycast_hit mcpaint.calc run function #bs.raycast:run {with:{blocks:true,max_distance:5.0f}}

execute if score #projector_tape.raycast_hit mcpaint.calc matches 0 run function mcpaint:item/projector_tape/internal/work/move/raycast_miss
execute if score #projector_tape.raycast_hit mcpaint.calc matches 1 run function mcpaint:item/projector_tape/internal/work/move/raycast_hit

execute unless data storage mcpaint:calc internal.projector_tape.player_data.work.temp_entity.snap_pos{gap:0f} run function mcpaint:item/projector_tape/internal/work/display/snap_pos with storage mcpaint:calc internal.macro