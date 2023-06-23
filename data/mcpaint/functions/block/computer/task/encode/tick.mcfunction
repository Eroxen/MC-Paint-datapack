execute store result score step mcpaint.calc run data get entity @s data.task.step 1

execute if score step mcpaint.calc matches 7.. run function mcpaint:block/computer/task/encode/finish

execute if score step mcpaint.calc matches 6 run function mcpaint:block/computer/task/encode/6
execute if score step mcpaint.calc matches 5 run function mcpaint:block/computer/task/encode/5
execute if score step mcpaint.calc matches 4 run scoreboard players add step mcpaint.calc 1
execute if score step mcpaint.calc matches 3 run function mcpaint:block/computer/task/encode/3
execute if score step mcpaint.calc matches 2 run function mcpaint:block/computer/task/encode/2
execute if score step mcpaint.calc matches 1 run function mcpaint:block/computer/task/encode/1
execute if score step mcpaint.calc matches 0 run function mcpaint:block/computer/task/encode/0

execute store result entity @s data.task.step int 1 run scoreboard players get step mcpaint.calc