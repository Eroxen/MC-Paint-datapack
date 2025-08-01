execute store result score #projector_tape.snap_scale mcpaint.calc run data get storage mcpaint:calc internal.projector_tape.player_data.work.temp_entity.snap_scale 1000

scoreboard players operation #temp.add mcpaint.calc = #projector_tape.snap_scale mcpaint.calc
scoreboard players operation #temp.add mcpaint.calc /= #const.2 mcpaint.calc

scoreboard players operation #projector_tape.size mcpaint.calc += #temp.add mcpaint.calc
scoreboard players operation #projector_tape.size mcpaint.calc /= #projector_tape.snap_scale mcpaint.calc
scoreboard players operation #projector_tape.size mcpaint.calc *= #projector_tape.snap_scale mcpaint.calc