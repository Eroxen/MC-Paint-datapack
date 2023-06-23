execute store result score offset_x mcpaint.calc run data get entity @s data.width 1
scoreboard players set op mcpaint.calc 2
scoreboard players add offset_x mcpaint.calc 1
scoreboard players operation offset_x mcpaint.calc %= op mcpaint.calc
scoreboard players remove offset_x mcpaint.calc 1
execute store result storage mcpaint:calc popup.position[0] int 500 run scoreboard players get offset_x mcpaint.calc