data modify storage mcpaint:calc computer_task set value {task:"decode",step:0,data:{}}
data modify storage mcpaint:calc computer_task.data.strings set from storage mcpaint:calc Item.tag.pages
data modify entity @s data.task set from storage mcpaint:calc computer_task

function mcpaint:block/computer/task/start