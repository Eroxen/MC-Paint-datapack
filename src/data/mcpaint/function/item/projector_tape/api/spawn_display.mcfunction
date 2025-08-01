#####################################################################
# projector_tape/api/spawn_display.mcfunction
# written by Eroxen
#
# Spawns a Text Display according to the information stored in the tape.
#
# Storage input:
# - mcpaint:calc:
#   - api.projector_tape.item: projector tape item
#
# Storage input:
# - mcpaint:calc:
#   - api.projector_tape.display_uuid: UUID of the summoned display in string form
#####################################################################

data remove storage mcpaint:calc api.projector_tape.display_uuid
data modify storage mcpaint:calc internal.projector_tape.settings set value {}
data modify storage mcpaint:calc internal.projector_tape.settings merge from storage mcpaint:calc api.projector_tape.item.components."minecraft:custom_data".mcpaint.projector_tape_settings

execute unless data storage mcpaint:calc internal.projector_tape.settings.filepath run return fail
execute unless data storage mcpaint:calc internal.projector_tape.settings.pos run return fail

function mcpaint:database/api/get_work with storage mcpaint:calc internal.projector_tape.settings.filepath
execute if score #database.found mcpaint.calc matches 0 run return fail

data modify storage mcpaint:calc internal.macro set value {}
data modify storage mcpaint:calc internal.macro.x set from storage mcpaint:calc internal.projector_tape.settings.pos[0]
data modify storage mcpaint:calc internal.macro.y set from storage mcpaint:calc internal.projector_tape.settings.pos[1]
data modify storage mcpaint:calc internal.macro.z set from storage mcpaint:calc internal.projector_tape.settings.pos[2]
function mcpaint:item/projector_tape/internal/display/summon with storage mcpaint:calc internal.macro