data modify storage mcpaint:calc computer_task set value {task:"encode",step:0,data:{}}
data modify storage mcpaint:calc computer_task.data.canvas set from storage mcpaint:database search.work.canvas
data modify entity @s data.task set from storage mcpaint:calc computer_task

function mcpaint:block/computer/task/start