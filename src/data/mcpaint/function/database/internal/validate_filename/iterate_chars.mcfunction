data modify storage mcpaint:calc internal.database.validate_filename.char set string storage mcpaint:calc internal.database.validate_filename.queue 0 1
data modify storage mcpaint:calc internal.database.validate_filename.queue set string storage mcpaint:calc internal.database.validate_filename.queue 1

data modify storage mcpaint:calc internal.database.validate_filename.compare set from storage mcpaint:calc internal.database.validate_filename.char
execute store success score #database.temp mcpaint.calc run data modify storage mcpaint:calc internal.database.validate_filename.compare set from storage mcpaint:calc internal.database.chars.newline
execute if score #database.temp mcpaint.calc matches 0 run return run scoreboard players set #database.valid mcpaint.calc 0

scoreboard players remove #database.i mcpaint.calc 1
execute if score #database.i mcpaint.calc matches 1.. run function mcpaint:database/internal/validate_filename/iterate_chars