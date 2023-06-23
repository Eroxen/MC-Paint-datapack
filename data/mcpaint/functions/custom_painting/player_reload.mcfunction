execute as @e[type=text_display,tag=mcpaint.text_display.reload,distance=..128,limit=1,sort=nearest] run function mcpaint:custom_painting/reload

execute unless entity @e[type=text_display,tag=mcpaint.text_display.reload,distance=..128,limit=1] run tellraw @s {"translate":"mcpaint.message.reload_text_displays.finished"}
execute unless entity @e[type=text_display,tag=mcpaint.text_display.reload,distance=..128,limit=1] run tag @s remove mcpaint.player.reload_text_displays

