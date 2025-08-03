#####################################################################
# database/api/get_work.mcfunction
# written by Eroxen
#
# Gets an author's work by name.
#
# Macro arguments:
# - author: (list<int>) UUID of the author
# - name: (str) name of the work
#
# Storage output :
# - mcpaint:calc api.database.work: work
#
# Scoreboard output:
# - #database.found mcpaint.calc: (bool) whether or not the requested data was found
#####################################################################
data remove storage mcpaint:calc api.database.work
$data modify storage mcpaint:calc api.database.work set from storage mcpaint:database authors[{sUUID:"$(author)"}].works[{name:"$(name)"}]
execute store success score #database.found mcpaint.calc if data storage mcpaint:calc api.database.work
execute if score #database.found mcpaint.calc matches 1 run function mcpaint:datafixer/api/load_work
$execute if score #database.found mcpaint.calc matches 1 if score #database.updated mcpaint.calc matches 1 run data modify storage mcpaint:database authors[{sUUID:"$(author)"}].works[{name:"$(name)"}] set from storage mcpaint:calc api.database.work
