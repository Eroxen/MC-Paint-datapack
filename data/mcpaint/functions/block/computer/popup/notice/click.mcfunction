scoreboard players set inside mcpaint.calc 0
execute if score screenspace_x mcpaint.calc matches 95..905 if score screenspace_y mcpaint.calc matches 270..840 as @e[type=marker,tag=mcpaint.computer.marker,distance=..0.1,limit=1] run scoreboard players set inside mcpaint.calc 1

execute if score inside mcpaint.calc matches 0 run function mcpaint:block/computer/popup/kill

execute if score inside mcpaint.calc matches 1 if score screenspace_x mcpaint.calc matches 310..690 if score screenspace_y mcpaint.calc matches 310..405 run function mcpaint:block/computer/popup/kill