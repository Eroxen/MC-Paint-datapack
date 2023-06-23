data modify storage mcpaint:calc b64.encode set from entity @s data.task.data
data modify storage mcpaint:calc b64.encode.command_block_output set from block ~ ~ ~ LastOutput
data merge block ~ ~ ~ {powered:1b,auto:0b,Command:""}
kill @e[type=armor_stand,tag=mcpaint.computer.string_joiner,distance=..0.1]
data modify entity @s data.task.data set from storage mcpaint:calc b64.encode
scoreboard players add step mcpaint.calc 1