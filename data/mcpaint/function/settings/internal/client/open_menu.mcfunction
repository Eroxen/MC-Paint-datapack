function mcpaint:settings/api/get_client
data modify storage mcpaint:calc internal.settings.client_menu set value {\
send_rp_message:'{"text":"\\u0001","font":"mcpaint:chat_ui","clickEvent":{"action":"run_command","value":"/trigger mcpaint.settings set 10001"}}',\
protect_studio:'{"text":"\\u0001","font":"mcpaint:chat_ui","clickEvent":{"action":"run_command","value":"/trigger mcpaint.settings set 10003"}}',\
egg_banter:'{"text":"\\u0001","font":"mcpaint:chat_ui","clickEvent":{"action":"run_command","value":"/trigger mcpaint.settings set 10005"}}'\
}
execute if data storage mcpaint:calc api.settings.client{send_rp_message:0b} run data modify storage mcpaint:calc internal.settings.client_menu.send_rp_message set value \
'{"text":"\\u0002","font":"mcpaint:chat_ui","clickEvent":{"action":"run_command","value":"/trigger mcpaint.settings set 10002"}}'
execute if data storage mcpaint:calc api.settings.client{protect_studio:0b} run data modify storage mcpaint:calc internal.settings.client_menu.protect_studio set value \
'{"text":"\\u0002","font":"mcpaint:chat_ui","clickEvent":{"action":"run_command","value":"/trigger mcpaint.settings set 10004"}}'
execute if data storage mcpaint:calc api.settings.client{egg_banter:0b} run data modify storage mcpaint:calc internal.settings.client_menu.egg_banter set value \
'{"text":"\\u0002","font":"mcpaint:chat_ui","clickEvent":{"action":"run_command","value":"/trigger mcpaint.settings set 10006"}}'

tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n"}
tellraw @s {"text":"　　　　　　　　　　　　　　　　　　　　　","color":"yellow","strikethrough": true}
tellraw @s {"translate":"mcpaint.settings.reset_default","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger mcpaint.settings set 10000"}}
tellraw @s {"translate":"mcpaint.settings.client.header","color":"yellow"}
tellraw @s {"text":"","extra":[{"storage":"mcpaint:calc","nbt":"internal.settings.client_menu.send_rp_message","interpret": true},{"text":" "},{"translate":"mcpaint.settings.client.send_rp_message.title"},{"text":" "},{"text":"?","color":"gray","hoverEvent":{"action":"show_text","contents":[{"translate":"mcpaint.settings.client.send_rp_message.info"}]}}]}
tellraw @s {"text":"","extra":[{"storage":"mcpaint:calc","nbt":"internal.settings.client_menu.protect_studio","interpret": true},{"text":" "},{"translate":"mcpaint.settings.client.protect_studio.title"},{"text":" "},{"text":"?","color":"gray","hoverEvent":{"action":"show_text","contents":[{"translate":"mcpaint.settings.client.protect_studio.info"}]}}]}
tellraw @s {"text":"","extra":[{"storage":"mcpaint:calc","nbt":"internal.settings.client_menu.egg_banter","interpret": true},{"text":" "},{"translate":"mcpaint.settings.client.egg_banter.title"},{"text":" "},{"text":"?","color":"gray","hoverEvent":{"action":"show_text","contents":[{"translate":"mcpaint.settings.client.egg_banter.info"}]}}]}
tellraw @s {"text":"　　　　　　　　　　　　　　　　　　　　　","color":"yellow","strikethrough": true}