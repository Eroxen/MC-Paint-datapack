data modify storage mcpaint:calc b64.encode set from entity @s data.task.data
function mcpaint:b64/encode/process_command_block_output
data modify entity @s data.task.data set from storage mcpaint:calc b64.encode
scoreboard players add step mcpaint.calc 1