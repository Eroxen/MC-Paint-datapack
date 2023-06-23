data modify storage mcpaint:calc b64.encode set from entity @s data.task.data
summon armor_stand ~ ~ ~ {Tags:["mcpaint.computer.string_joiner"],Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b}

summon item_display ~ ~ ~ {Tags:["mcpaint.resolve_text"]}
data modify storage mcpaint:calc resolve_text set value '{"storage":"mcpaint:calc","nbt":"b64.encode.chars[]","separator":""}'
loot replace entity @e[type=minecraft:item_display,tag=mcpaint.resolve_text,distance=..0.1,limit=1] container.0 loot mcpaint:resolve_text

data modify entity @e[type=armor_stand,tag=mcpaint.computer.string_joiner,distance=..0.1,limit=1] CustomName set from entity @e[type=minecraft:item_display,tag=mcpaint.resolve_text,distance=..0.1,limit=1] item.tag.display.Name

kill @e[type=minecraft:item_display,tag=mcpaint.resolve_text,distance=..0.1,limit=1]

data merge block ~ ~ ~ {powered:0b,auto:1b,Command:"enchant @e[type=armor_stand,tag=mcpaint.computer.string_joiner,distance=..0.1,limit=1] minecraft:aqua_affinity"}

scoreboard players add step mcpaint.calc 1