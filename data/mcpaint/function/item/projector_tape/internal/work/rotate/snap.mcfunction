execute store result score #projector_tape.snap_rot mcpaint.calc run data get storage mcpaint:calc internal.projector_tape.player_data.work.temp_entity.snap_rot 1000
scoreboard players add #temp.pitch mcpaint.calc 90000

scoreboard players operation #temp.add mcpaint.calc = #projector_tape.snap_rot mcpaint.calc
scoreboard players operation #temp.add mcpaint.calc /= #const.2 mcpaint.calc

scoreboard players operation #temp.pitch mcpaint.calc += #temp.add mcpaint.calc
scoreboard players operation #temp.pitch mcpaint.calc /= #projector_tape.snap_rot mcpaint.calc
scoreboard players operation #temp.pitch mcpaint.calc *= #projector_tape.snap_rot mcpaint.calc
scoreboard players operation #temp.yaw mcpaint.calc += #temp.add mcpaint.calc
scoreboard players operation #temp.yaw mcpaint.calc /= #projector_tape.snap_rot mcpaint.calc
scoreboard players operation #temp.yaw mcpaint.calc *= #projector_tape.snap_rot mcpaint.calc

scoreboard players remove #temp.pitch mcpaint.calc 90000