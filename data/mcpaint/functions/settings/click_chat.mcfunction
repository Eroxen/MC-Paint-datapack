execute if score @s mcpaint.settings matches 10001 run scoreboard players set interaction_detection mcpaint.config 1
execute if score @s mcpaint.settings matches 10002 run scoreboard players set interaction_detection mcpaint.config 0

execute if score @s mcpaint.settings matches 10011 run scoreboard players set send_egg_chat mcpaint.config 0
execute if score @s mcpaint.settings matches 10012 run scoreboard players set send_egg_chat mcpaint.config 1

execute if score @s mcpaint.settings matches 11001 run scoreboard players set @s mcpaint.client_settings.send_rp_message 0
execute if score @s mcpaint.settings matches 11002 run scoreboard players set @s mcpaint.client_settings.send_rp_message 1

function mcpaint:settings/chat_menu