execute store result score #projector_tape.snap_pos mcpaint.calc run data get storage mcpaint:calc internal.projector_tape.player_data.work.temp_entity.snap_pos.gap 64
scoreboard players operation #temp.add mcpaint.calc = #projector_tape.snap_pos mcpaint.calc
scoreboard players operation #temp.add mcpaint.calc /= #const.2 mcpaint.calc

data modify storage mcpaint:calc internal.temp set from entity @s Pos
execute store result score #temp mcpaint.calc run data get storage mcpaint:calc internal.temp[0] 64
scoreboard players operation #temp mcpaint.calc += #temp.add mcpaint.calc
scoreboard players operation #temp mcpaint.calc /= #projector_tape.snap_pos mcpaint.calc
scoreboard players operation #temp mcpaint.calc *= #projector_tape.snap_pos mcpaint.calc
execute if data storage mcpaint:calc internal.projector_tape.player_data.work.temp_entity.snap_pos{x:1b} store result storage mcpaint:calc internal.temp[0] double 0.015625 run scoreboard players get #temp mcpaint.calc
execute store result score #temp mcpaint.calc run data get storage mcpaint:calc internal.temp[1] 64
scoreboard players operation #temp mcpaint.calc += #temp.add mcpaint.calc
scoreboard players operation #temp mcpaint.calc /= #projector_tape.snap_pos mcpaint.calc
scoreboard players operation #temp mcpaint.calc *= #projector_tape.snap_pos mcpaint.calc
execute if data storage mcpaint:calc internal.projector_tape.player_data.work.temp_entity.snap_pos{y:1b} store result storage mcpaint:calc internal.temp[1] double 0.015625 run scoreboard players get #temp mcpaint.calc
execute store result score #temp mcpaint.calc run data get storage mcpaint:calc internal.temp[2] 64
scoreboard players operation #temp mcpaint.calc += #temp.add mcpaint.calc
scoreboard players operation #temp mcpaint.calc /= #projector_tape.snap_pos mcpaint.calc
scoreboard players operation #temp mcpaint.calc *= #projector_tape.snap_pos mcpaint.calc
execute if data storage mcpaint:calc internal.projector_tape.player_data.work.temp_entity.snap_pos{z:1b} store result storage mcpaint:calc internal.temp[2] double 0.015625 run scoreboard players get #temp mcpaint.calc
data modify entity @s Pos set from storage mcpaint:calc internal.temp