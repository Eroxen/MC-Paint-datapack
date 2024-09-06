#####################################################################
# database/api/get_default_filename.mcfunction
# written by Eroxen
#
# Gets a default filename that does not yet exist in the author's works.
#
# Macro arguments:
# - author: UUID of the author
#
# Storage output :
# - mcpaint:calc api.database.filename: (str) filename
#####################################################################

data modify storage mcpaint:calc api.database.filename set value ""
$function mcpaint:database/internal/get_work_names {author:$(author)}

data modify storage mcpaint:calc internal.database.get_default_filename set value {i:1,prefix:"New Painting "}
scoreboard players set #database.i mcpaint.calc 1
function mcpaint:database/internal/get_default_filename/loop with storage mcpaint:calc internal.database.get_default_filename