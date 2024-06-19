#####################################################################
# settings/api/trigger_server.mcfunction
# written by Eroxen
#
# Opens the server settings menu.
#####################################################################

execute unless predicate mcpaint:permission/change_server_settings run return run tellraw @s {"translate":"mcpaint.error.no_permission","color":"red"}

function mcpaint:settings/internal/server/open_menu