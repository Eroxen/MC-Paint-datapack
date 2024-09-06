execute store result storage mcpaint:calc internal.database.inspect.i int 1 run scoreboard players get #database.i mcpaint.calc
function mcpaint:database/internal/inspect/author_page/get_item with storage mcpaint:calc internal.database.inspect
function mcpaint:database/internal/inspect/author_page/list_item with storage mcpaint:calc internal.database.inspect.work

scoreboard players add #database.i mcpaint.calc 1
execute if score #database.i mcpaint.calc < #database.page.items mcpaint.calc run function mcpaint:database/internal/inspect/author_page/loop