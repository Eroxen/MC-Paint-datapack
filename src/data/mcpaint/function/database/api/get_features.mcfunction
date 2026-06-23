#####################################################################
# database/api/get_features.mcfunction
# written by Eroxen
#
# Gets descriptive features of a work.
#
# Macro arguments:
# - author: (list<int>) UUID of the author
# - name: (str) name of the work
#
# Storage output :
# - mcpaint:calc api.database.work: work
# - mcpaint:calc api.database.features:
#   - author: author's player name
#   - title: work name
#   - width_px: width in pixels
#   - height_px: height in pixels
#   - width_blocks: width in blocks
#   - height_blocks: height in blocks
#
# Scoreboard output:
# - #database.found mcpaint.calc: (bool) whether or not the requested data was found
#####################################################################

$function mcpaint:database/api/get_work {author:$(author),name:"$(name)"}
execute if score #database.found mcpaint.calc matches 0 run return fail

data modify storage mcpaint:calc api.database.features set value {}
$data modify storage mcpaint:calc api.database.features.author set from storage mcpaint:database authors[{sUUID:"$(author)"}].name
data modify storage mcpaint:calc api.database.features.title set from storage mcpaint:calc api.database.work.name

data modify storage mcpaint:calc api.canvas.canvas set from storage mcpaint:calc api.database.work.canvas
function mcpaint:canvas/api/get_info
execute store result storage mcpaint:calc api.database.features.width_px int 1 run scoreboard players get #canvas.width_px mcpaint.calc
execute store result storage mcpaint:calc api.database.features.height_px int 1 run scoreboard players get #canvas.height_px mcpaint.calc
execute store result storage mcpaint:calc api.database.features.width_blocks int 1 run scoreboard players get #canvas.width_blocks mcpaint.calc
execute store result storage mcpaint:calc api.database.features.height_blocks int 1 run scoreboard players get #canvas.height_blocks mcpaint.calc