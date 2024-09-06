#####################################################################
# settings/api/reset_server_default.mcfunction
# written by Eroxen
#
# Resets the server settings to their default values.
#####################################################################

execute unless predicate mcpaint:permission/change_server_settings run return run tellraw @s {"translate":"mcpaint.error.no_permission","color":"red"}

data remove storage mcpaint:calc internal.settings.server
data modify storage mcpaint:calc api.settings.server set from storage mcpaint:calc internal.settings.server_default
data modify storage mcpaint:calc api.settings.server merge from storage mcpaint:calc internal.settings.server

function mcpaint:settings/internal/server/open_menu