#####################################################################
# custom_painting/api/give_with_options.mcfunction
# written by Eroxen
#
# Gives a custom painting to the executing player, with
# the specified options already set.
#
# Storage input:
# mcpaint:calc api.custom_painting.give:
# - filepath:
#   - name: painting name
#   - author: author's UUID
# - options: (object) options
#####################################################################

data modify storage mcpaint:calc internal.database.filepath set from storage mcpaint:calc api.custom_painting.give.filepath
function mcpaint:database/api/get_work with storage mcpaint:calc internal.database.filepath
execute if score #database.found mcpaint.calc matches 0 run return fail
data modify storage mcpaint:calc api.canvas.canvas set from storage mcpaint:calc api.database.work.canvas

data modify storage mcpaint:calc internal.custom_painting.data set value {}
data modify storage mcpaint:calc internal.custom_painting.data.options set from storage mcpaint:calc internal.custom_painting.default_options
data modify storage mcpaint:calc internal.custom_painting.data.options merge from storage mcpaint:calc api.custom_painting.give.options
data modify storage mcpaint:calc internal.custom_painting.item set value {}
function mcpaint:custom_painting/internal/item/generate_components
function mcpaint:custom_painting/internal/item/give_loot with storage mcpaint:calc internal.custom_painting.item