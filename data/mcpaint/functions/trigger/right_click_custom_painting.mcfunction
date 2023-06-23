execute as @e[type=interaction,tag=mcpaint.custom_painting.interaction,distance=..16] if data entity @s interaction at @s run function mcpaint:custom_painting/interaction_get_right_clicked

advancement revoke @s only mcpaint:trigger/right_click_custom_painting