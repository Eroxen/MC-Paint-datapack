#####################################################################
# database/api/add_author.mcfunction
# written by Eroxen
#
# Adds a new author to the database by UUID. Fails if the author
# is already present.
#
# Macro arguments:
# - UUID: UUID of the author
#####################################################################

$execute if data storage mcpaint:database authors[{sUUID:"$(UUID)"}] run return fail
$data modify storage mcpaint:database authors append value {UUID:$(UUID),sUUID:"$(UUID)",works:[]}
$execute summon area_effect_cloud run function mcpaint:database/internal/get_player_name {UUID:$(UUID)}