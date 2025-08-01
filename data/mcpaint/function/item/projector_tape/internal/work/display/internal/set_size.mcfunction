execute store result score #projector_tape.size mcpaint.calc run data get storage mcpaint:calc internal.projector_tape.player_data.work.temp_entity.size 32000

scoreboard players operation #temp mcpaint.calc = #projector_tape.size mcpaint.calc
execute on passengers if entity @s[tag=mcpaint.projector_tape_work_display.border.horizontal] store result entity @s transformation.scale[0] float 0.00003125 run scoreboard players get #temp mcpaint.calc

scoreboard players operation #temp mcpaint.calc = #projector_tape.size mcpaint.calc
scoreboard players operation #temp mcpaint.calc /= #const.2 mcpaint.calc
scoreboard players add #temp mcpaint.calc 1000
execute on passengers if entity @s[tag=mcpaint.projector_tape_work_display.border.horizontal.down] store result entity @s transformation.translation[1] float -0.00003125 run scoreboard players get #temp mcpaint.calc
execute on passengers if entity @s[tag=mcpaint.projector_tape_work_display.border.horizontal.up] store result entity @s transformation.translation[1] float 0.00003125 run scoreboard players get #temp mcpaint.calc

scoreboard players operation #temp mcpaint.calc = #projector_tape.size mcpaint.calc
scoreboard players add #temp mcpaint.calc 4000
execute on passengers if entity @s[tag=mcpaint.projector_tape_work_display.border.side] store result entity @s transformation.scale[1] float 0.00003125 run scoreboard players get #temp mcpaint.calc

scoreboard players operation #temp mcpaint.calc = #projector_tape.size mcpaint.calc
scoreboard players operation #temp mcpaint.calc /= #const.2 mcpaint.calc
scoreboard players add #temp mcpaint.calc 1000
execute on passengers if entity @s[tag=mcpaint.projector_tape_work_display.border.side.left] store result entity @s transformation.translation[0] float -0.00003125 run scoreboard players get #temp mcpaint.calc
execute on passengers if entity @s[tag=mcpaint.projector_tape_work_display.border.side.right] store result entity @s transformation.translation[0] float 0.00003125 run scoreboard players get #temp mcpaint.calc