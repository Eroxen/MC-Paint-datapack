#####################################################################
# database/api/validate_filename.mcfunction
# written by Eroxen
#
# Tests whether a given string is a valid filename.
#
# Storage input :
# - mcpaint:calc api.database.filename: (string) filename
#
# Storage output :
# - mcpaint:calc api.database.error_message: (text component) error message
#
# Scoreboard output:
# - #database.valid mcpaint.calc: (bool) whether or not the name is valid
#####################################################################

scoreboard players set #database.valid mcpaint.calc 1
data modify storage mcpaint:calc internal.database.validate_filename set value {}
data modify storage mcpaint:calc internal.database.validate_filename.original set from storage mcpaint:calc api.database.filename

# check valid length
execute store result score #database.temp mcpaint.calc run data get storage mcpaint:calc internal.database.validate_filename.original
execute unless score #database.temp mcpaint.calc matches 1..24 run scoreboard players set #database.valid mcpaint.calc 0
execute unless score #database.temp mcpaint.calc matches 1..24 run data modify storage mcpaint:calc api.database.error_message set value '{"translate":"mcpaint.error.invalid_filename_length","with":[1,24]}'
execute if score #database.valid mcpaint.calc matches 0 run return fail

# check valid characters for macro usage
function mcpaint:database/internal/validate_filename/quotes with storage mcpaint:calc internal.database.validate_filename
execute store success score #database.temp mcpaint.calc run data modify storage mcpaint:calc internal.database.validate_filename.double_quotes set from storage mcpaint:calc internal.database.validate_filename.original
execute if score #database.temp mcpaint.calc matches 1 run scoreboard players set #database.valid mcpaint.calc 0
execute store success score #database.temp mcpaint.calc run data modify storage mcpaint:calc internal.database.validate_filename.single_quotes set from storage mcpaint:calc internal.database.validate_filename.original
execute if score #database.temp mcpaint.calc matches 1 run scoreboard players set #database.valid mcpaint.calc 0
execute if score #database.valid mcpaint.calc matches 0 run data modify storage mcpaint:calc api.database.error_message set value '{"translate":"mcpaint.error.invalid_filename_chars"}'
execute if score #database.valid mcpaint.calc matches 0 run return fail

data modify storage mcpaint:calc internal.database.validate_filename.queue set from storage mcpaint:calc internal.database.validate_filename.original
execute store result score #database.i mcpaint.calc run data get storage mcpaint:calc internal.database.validate_filename.original
execute if score #database.i mcpaint.calc matches 1.. run function mcpaint:database/internal/validate_filename/iterate_chars
execute if score #database.valid mcpaint.calc matches 0 run data modify storage mcpaint:calc api.database.error_message set value '{"translate":"mcpaint.error.invalid_filename_chars"}'
execute if score #database.valid mcpaint.calc matches 0 run return fail