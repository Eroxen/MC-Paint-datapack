scoreboard players reset @s mcpaint.debug

execute store success score tag mcpaint.calc if entity @s[tag=mcpaint.player.debug]
execute if score tag mcpaint.calc matches 1 run tag @s remove mcpaint.player.debug
execute if score tag mcpaint.calc matches 1 run tellraw @s {"translate":"mcpaint.message.debug.disable","color":"gray"}
execute if score tag mcpaint.calc matches 0 run tag @s add mcpaint.player.debug
execute if score tag mcpaint.calc matches 0 run tellraw @s {"translate":"mcpaint.message.debug.enable","color":"yellow"}