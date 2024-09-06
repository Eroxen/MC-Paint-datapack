execute store result storage mcpaint:calc internal.database.inspect.i int 1 run scoreboard players get #database.i mcpaint.calc
data modify storage mcpaint:calc internal.database.inspect.author set value {}
function mcpaint:database/internal/inspect/get_author_item with storage mcpaint:calc internal.database.inspect
function mcpaint:database/internal/inspect/list_author_item with storage mcpaint:calc internal.database.inspect.author

scoreboard players add #database.i mcpaint.calc 1
execute if score #database.i mcpaint.calc < #database.authors mcpaint.calc run function mcpaint:database/internal/inspect/loop