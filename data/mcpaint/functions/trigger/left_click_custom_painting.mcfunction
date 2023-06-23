execute as @e[type=interaction,tag=mcpaint.custom_painting.interaction,distance=..16] if data entity @s attack at @s run function mcpaint:custom_painting/interaction_get_left_clicked

advancement revoke @s only mcpaint:trigger/left_click_custom_painting