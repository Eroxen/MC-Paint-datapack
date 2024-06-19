data modify storage mcpaint:calc internal.settings.server_menu set value {\
allow_decode:'{"text":"\\u0001","font":"mcpaint:chat_ui","clickEvent":{"action":"run_command","value":"/function mcpaint:settings/api/merge_server {value:{allow_decode:0b}}"}}'\
}
execute if data storage mcpaint:calc api.settings.server{allow_decode:0b} run data modify storage mcpaint:calc internal.settings.server_menu.allow_decode set value \
'{"text":"\\u0002","font":"mcpaint:chat_ui","clickEvent":{"action":"run_command","value":"/function mcpaint:settings/api/merge_server {value:{allow_decode:1b}}"}}'

tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n"}
tellraw @s {"text":"　　　　　　　　　　　　　　　　　　　　　","color":"yellow","strikethrough": true}
tellraw @s {"translate":"mcpaint.settings.reset_default","color":"yellow","clickEvent":{"action":"run_command","value":"/function mcpaint:settings/api/reset_server_default"}}
tellraw @s {"translate":"mcpaint.settings.server.header","color":"yellow"}
tellraw @s {"text":"","extra":[{"storage":"mcpaint:calc","nbt":"internal.settings.server_menu.allow_decode","interpret": true},{"text":" "},{"translate":"mcpaint.settings.server.allow_decode.title"},{"text":" "},{"text":"?","color":"gray","hoverEvent":{"action":"show_text","contents":[{"translate":"mcpaint.settings.server.allow_decode.info"}]}}]}
tellraw @s {"text":"　　　　　　　　　　　　　　　　　　　　　","color":"yellow","strikethrough": true}