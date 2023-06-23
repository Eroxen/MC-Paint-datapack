execute store result score lines mcpaint.calc run data get storage mcpaint:calc computer_page.work_names
execute store result score selected_row mcpaint.calc run data get storage mcpaint:calc computer_page.selected_row

scoreboard players set op mcpaint.calc -8
scoreboard players operation clicked_line mcpaint.calc = screenspace_y mcpaint.calc
scoreboard players remove clicked_line mcpaint.calc 938
scoreboard players operation clicked_line mcpaint.calc *= op mcpaint.calc
scoreboard players set op mcpaint.calc 750
scoreboard players operation clicked_line mcpaint.calc /= op mcpaint.calc

scoreboard players set valid mcpaint.calc 0
execute if score clicked_line mcpaint.calc matches 0.. if score clicked_line mcpaint.calc < lines mcpaint.calc unless score clicked_line mcpaint.calc = selected_row mcpaint.calc run scoreboard players set valid mcpaint.calc 1

execute if score valid mcpaint.calc matches 0 run tellraw @s[tag=mcpaint.player.debug] [{"text":"clicked line ","color":"red"},{"score":{"name":"clicked_line","objective":"mcpaint.calc"}}]
execute if score valid mcpaint.calc matches 1 run tellraw @s[tag=mcpaint.player.debug] [{"text":"clicked line ","color":"green"},{"score":{"name":"clicked_line","objective":"mcpaint.calc"}}]

execute if score valid mcpaint.calc matches 1 store result entity @e[type=marker,tag=mcpaint.computer.marker,distance=..0.1,limit=1] data.computer_page.selected_row int 1 run scoreboard players get clicked_line mcpaint.calc
execute if score valid mcpaint.calc matches 1 as @e[type=marker,tag=mcpaint.computer.marker,distance=..0.1,limit=1] run function mcpaint:block/computer/files/update_data