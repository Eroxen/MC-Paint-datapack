execute if score #projector_tape.storage.loaded_player mcpaint.calc = @s eroxified2.playerid run return fail
data modify storage mcpaint:calc internal.macro set value {}
execute store result storage mcpaint:calc internal.macro.id int 1 run scoreboard players get #projector_tape.storage.loaded_player mcpaint.calc
execute if score #projector_tape.storage.loaded_player mcpaint.calc matches 1.. run function mcpaint:item/projector_tape/internal/work/store_player_macro with storage mcpaint:calc internal.macro
data modify storage mcpaint:calc internal.projector_tape.player_data set value {}
function eroxified2:playerid/api/get_macro_object
function mcpaint:item/projector_tape/internal/work/load_player_macro with storage eroxified2:api playerid.macro
scoreboard players operation #projector_tape.storage.loaded_player mcpaint.calc = @s eroxified2.playerid