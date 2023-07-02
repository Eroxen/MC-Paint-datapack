execute if score @s mcpaint.settings matches 1 run function mcpaint:settings/chat_menu

execute if score @s mcpaint.settings matches 10000..19999 run function mcpaint:settings/click_chat

execute if score @s mcpaint.settings matches 20001 run scoreboard players set @s mcpaint.client_settings.send_rp_message 0
execute if score @s mcpaint.settings matches 20001 run tellraw @s {"translate":"mcpaint.message.resource_pack_dismissed","with":[{"translate":"mcpaint.message.resource_pack_dismissed.settings","color":"aqua","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"/trigger mcpaint.settings"}]},"clickEvent":{"action":"run_command","value":"/trigger mcpaint.settings"}}]}

scoreboard players reset @s mcpaint.settings
scoreboard players enable @s mcpaint.settings