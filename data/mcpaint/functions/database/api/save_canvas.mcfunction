#####################################################################
# database/api/save_canvas.mcfunction
# written by Eroxen
#
# Saves a canvas object to the database.
#
# Macro arguments:
# - author: (list<int>) UUID of the author
# - name: (str) name of the work
#
# Storage input :
# - mcpaint:calc api.canvas.canvas: canvas object
#####################################################################

$execute unless data storage mcpaint:database authors[{sUUID:"$(author)"}] run function mcpaint:database/api/add_author {UUID:$(author)}
$execute store success score #database.found mcpaint.calc if data storage mcpaint:database authors[{sUUID:"$(author)"}].works[{name:"$(name)"}]
$execute if score #database.found mcpaint.calc matches 0 run data modify storage mcpaint:database authors[{sUUID:"$(author)"}].works append value {name:"$(name)"}
$data modify storage mcpaint:database authors[{UUID:$(author)}].works[{name:"$(name)"}].canvas set from storage mcpaint:calc api.canvas.canvas