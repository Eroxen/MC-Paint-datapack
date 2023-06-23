execute store result score old_width mcpaint.calc run data get entity @s data.width 1
execute store result score old_height mcpaint.calc run data get entity @s data.height 1

scoreboard players set different mcpaint.calc 0
execute unless score old_width mcpaint.calc = width mcpaint.calc run scoreboard players set different mcpaint.calc 1
execute unless score old_height mcpaint.calc = height mcpaint.calc run scoreboard players set different mcpaint.calc 1

execute if score different mcpaint.calc matches 1 run function mcpaint:studio/change_size/animation