data modify storage mcpaint:calc computer_task set value {task:"encode",step:0,data:{}}
data modify storage mcpaint:calc computer_task.data.canvas set from storage mcpaint:calc canvas
data modify entity @e[type=marker,tag=mcpaint.computer.marker,sort=nearest,limit=1] data.task set from storage mcpaint:calc computer_task
execute as @e[type=marker,tag=mcpaint.computer.marker,sort=nearest,limit=1] run function mcpaint:block/computer/task/start