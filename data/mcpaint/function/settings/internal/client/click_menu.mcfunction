function mcpaint:settings/api/get_client

playsound minecraft:ui.button.click master @s

execute if score @s mcpaint.settings matches 10000 run data modify storage mcpaint:calc api.settings.client.send_rp_message set value 0b
execute if score @s mcpaint.settings matches 10001 run data modify storage mcpaint:calc api.settings.client.send_rp_message set value 1b

execute if score @s mcpaint.settings matches 10002 run data modify storage mcpaint:calc api.settings.client.protect_studio set value 0b
execute if score @s mcpaint.settings matches 10003 run data modify storage mcpaint:calc api.settings.client.protect_studio set value 1b

execute if score @s mcpaint.settings matches 10004 run data modify storage mcpaint:calc api.settings.client set value {}

function mcpaint:settings/api/set_client
function mcpaint:settings/internal/client/open_menu