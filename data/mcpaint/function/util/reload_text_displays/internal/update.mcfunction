particle explosion
tag @s remove mcpaint.entity.text_display.reload.queue

execute if data entity @s {alignment:"center"} run return run data modify entity @s alignment set value "left"
data modify entity @s alignment set value "center"