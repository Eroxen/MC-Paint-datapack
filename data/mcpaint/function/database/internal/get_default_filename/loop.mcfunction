$execute unless data storage mcpaint:calc internal.database.found{work_names:["$(prefix)$(i)"]} run return run data modify storage mcpaint:calc api.database.filename set value "$(prefix)$(i)"
execute if score #database.i mcpaint.calc matches 100.. run return fail
scoreboard players add #database.i mcpaint.calc 1
execute store result storage mcpaint:calc internal.database.get_default_filename.i int 1 run scoreboard players get #database.i mcpaint.calc
function mcpaint:database/internal/get_default_filename/loop with storage mcpaint:calc internal.database.get_default_filename