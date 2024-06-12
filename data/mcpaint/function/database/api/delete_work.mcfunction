#####################################################################
# database/api/delete_work.mcfunction
# written by Eroxen
#
# Deletes a work.
#
# Macro arguments:
# - author: (list<int>) UUID of the author
# - name: (str) name of the work
#
# Scoreboard output:
# - #database.found mcpaint.calc: (bool) whether or not the to be deleted data was found
#####################################################################
$execute store success score #database.found mcpaint.calc run data remove storage mcpaint:database authors[{sUUID:"$(author)"}].works[{name:"$(name)"}]