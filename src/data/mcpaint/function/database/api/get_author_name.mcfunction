#####################################################################
# database/api/get_author_name.mcfunction
# written by Eroxen
#
# Retrieves the player name of an author.
#
# Macro arguments:
# - author: UUID of the author
#
# Storage output :
# - mcpaint:calc api.database.author_name: (str) author's player name
#####################################################################

$data modify storage mcpaint:calc api.database.author_name set from storage mcpaint:database authors[{sUUID:"$(author)"}].name