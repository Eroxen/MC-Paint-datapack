#####################################################################
# database/api/save_cached_data.mcfunction
# written by Eroxen
#
# Saves cached data to the database.
#
# Macro arguments:
# - author: (list<int>) UUID of the author
# - name: (str) name of the work
#
# Storage input :
# - mcpaint:calc api.database.work.cached_cata: cached data object
#####################################################################

$execute unless data storage mcpaint:database authors[{sUUID:"$(author)"}] run return fail
$execute store success score #database.found mcpaint.calc if data storage mcpaint:database authors[{sUUID:"$(author)"}].works[{name:"$(name)"}]
execute if score #database.found mcpaint.calc matches 0 run return fail
$data modify storage mcpaint:database authors[{UUID:$(author)}].works[{name:"$(name)"}].cached_data set from storage mcpaint:calc api.database.work.cached_data