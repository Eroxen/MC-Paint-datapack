#####################################################################
# custom_painting/api/give.mcfunction
# written by Eroxen
#
# Gives a custom painting to the executing player.
#
# Macro arguments:
# - name: painting name
# - author: author's UUID
#####################################################################

$data modify storage mcpaint:calc internal.database.filepath set value {name:"$(name)",author:$(author)}
function mcpaint:database/api/get_work with storage mcpaint:calc internal.database.filepath
execute if score #database.found mcpaint.calc matches 0 run return fail
data modify storage mcpaint:calc api.canvas.canvas set from storage mcpaint:calc api.database.work.canvas

data modify storage mcpaint:calc internal.custom_painting.item set value {id:"minecraft:item_frame"}
function mcpaint:custom_painting/internal/item/generate_components
function mcpaint:custom_painting/internal/item/give_loot with storage mcpaint:calc internal.custom_painting.item