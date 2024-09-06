#####################################################################
# settings/api/merge_server.mcfunction
# written by Eroxen
#
# Updates the server settings.
#
# Macro arguments:
# - value: object of settings and their values
#####################################################################

execute unless predicate mcpaint:permission/change_server_settings run return run tellraw @s {"translate":"mcpaint.error.no_permission","color":"red"}

$data modify storage mcpaint:calc internal.settings.server merge value $(value)

data modify storage mcpaint:calc api.settings.server set from storage mcpaint:calc internal.settings.server_default
data modify storage mcpaint:calc api.settings.server merge from storage mcpaint:calc internal.settings.server

function mcpaint:settings/api/trigger_server