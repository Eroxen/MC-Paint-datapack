data modify storage mcpaint:calc internal.settings.client_default set value {send_rp_message:1b,protect_studio:1b,egg_banter:1b}
data modify storage mcpaint:calc internal.settings.server_default set value {allow_decode:1b}

data modify storage mcpaint:calc api.settings.server set from storage mcpaint:calc internal.settings.server_default
data modify storage mcpaint:calc api.settings.server merge from storage mcpaint:calc internal.settings.server