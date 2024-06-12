function mcpaint:settings/api/get_client

execute if score @s mcpaint.settings matches 20000 run data modify storage mcpaint:calc api.settings.client.send_rp_message set value 0b
execute if score @s mcpaint.settings matches 20000 run tellraw @s {"translate":"mcpaint.message.resource_pack_dismissed","with":[{"translate":"mcpaint.message.resource_pack_dismissed.settings","color":"aqua","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"/trigger mcpaint.settings"}]},"clickEvent":{"action":"run_command","value":"/trigger mcpaint.settings"}}]}

function mcpaint:settings/api/set_client