#####################################################################
# settings/api/get_client.mcfunction
# written by Eroxen
#
# Gets the executing player's client settings.
#####################################################################

data modify storage mcpaint:calc api.settings.client set from storage mcpaint:calc internal.settings.client_default
function mcpaint:settings/internal/client/get with entity @s