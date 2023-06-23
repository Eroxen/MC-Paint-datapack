scoreboard players reset @s mcpaint.reload

execute store result score paintings mcpaint.calc run tag @e[type=text_display,tag=mcpaint.custom_painting.text_display,distance=..64,limit=64,sort=nearest] add mcpaint.text_display.reload
execute store result score studios mcpaint.calc run tag @e[type=text_display,tag=mcpaint.studio.text_display,distance=..64,limit=64,sort=nearest] add mcpaint.text_display.reload
tellraw @s {"translate":"mcpaint.message.reload_text_displays","with":[{"score":{"name":"paintings","objective":"mcpaint.calc"}},{"score":{"name":"studios","objective":"mcpaint.calc"}}]}

tag @s add mcpaint.player.reload_text_displays