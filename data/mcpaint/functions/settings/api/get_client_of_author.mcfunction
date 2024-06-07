#####################################################################
# settings/api/get_client_of_author.mcfunction
# written by Eroxen
#
# Gets an author's client settings.
#
# Macro arguments:
# - author: author's UUID
#####################################################################

data modify storage mcpaint:calc api.settings.client set from storage mcpaint:calc internal.settings.client_default
$function mcpaint:settings/internal/client/get {UUID:$(author)}