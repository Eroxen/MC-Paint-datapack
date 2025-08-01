tag @s remove mcpaint.player.has_seen_welcome_message

function mcpaint:util/api/enable_all_triggers

function mcpaint:settings/api/get_client
execute if data storage mcpaint:calc api.settings.client{send_rp_message:1b} run data modify storage eroxified2:api entity.schedule set value {id:"mcpaint:sent_rp_message",overwrite:1b,cancel_on_reload:1b,delay:100,command:'function mcpaint:credit/api/send_rp_message'}
execute if data storage mcpaint:calc api.settings.client{send_rp_message:1b} run function eroxified2:entity/api/schedule