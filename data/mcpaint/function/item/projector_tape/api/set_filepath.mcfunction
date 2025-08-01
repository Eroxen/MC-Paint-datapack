#####################################################################
# projector_tape/api/set_filepath.mcfunction
# written by Eroxen
#
# Sets the filepath the tape is pointing to.
#
# Storage input:
# - mcpaint:calc:
#   - api.projector_tape.filepath: filepath
#####################################################################

data modify storage mcpaint:calc internal.temp set from storage mcpaint:calc api.projector_tape.filepath.author
execute store success score #temp mcpaint.calc run data modify storage mcpaint:calc internal.temp set from entity @s UUID

execute if score #temp mcpaint.calc matches 1 run return run tellraw @s {"translate": "mcpaint.error.projector_tape_different_author", "color": "red"}

function mcpaint:item/projector_tape/internal/use/get_item_data

function mcpaint:database/api/get_features with storage mcpaint:calc api.projector_tape.filepath
execute if score #database.found mcpaint.calc matches 0 run return fail

execute store success score #temp mcpaint.calc run data modify storage mcpaint:calc internal.projector_tape.settings.filepath set from storage mcpaint:calc api.projector_tape.filepath
execute if score #temp mcpaint.calc matches 0 run return fail

function mcpaint:item/projector_tape/internal/lore/update_filepath with storage mcpaint:calc api.database.features
playsound minecraft:ui.cartography_table.take_result player @s
tellraw @s {"translate": "item.mcpaint.projector_tape.filepath_set", "with": [{"storage": "mcpaint:calc", "nbt": "internal.projector_tape.data.lore.filepath","interpret": true, "color": "gold"}]}

function mcpaint:item/projector_tape/internal/use/replace_item