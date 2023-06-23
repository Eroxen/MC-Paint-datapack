execute store result score step mcpaint.calc run data get entity @s data.task.step 1

execute if score step mcpaint.calc matches 6.. run function mcpaint:block/computer/task/decode/finish

execute if score step mcpaint.calc matches 5 run function mcpaint:block/computer/task/decode/5
execute if score step mcpaint.calc matches 4 run function mcpaint:block/computer/task/decode/4
execute if score step mcpaint.calc matches 3 run function mcpaint:block/computer/task/decode/3
execute if score step mcpaint.calc matches 2 run function mcpaint:block/computer/task/decode/2
execute if score step mcpaint.calc matches 1 run function mcpaint:block/computer/task/decode/1
execute if score step mcpaint.calc matches 0 run function mcpaint:block/computer/task/decode/0

execute store result entity @s data.task.step int 1 run scoreboard players get step mcpaint.calc