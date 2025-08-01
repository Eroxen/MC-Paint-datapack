execute store result storage mcpaint:calc internal.database.get_page.i int 1 run scoreboard players get #database.i mcpaint.calc
function mcpaint:database/internal/get_paged_work_names/get with storage mcpaint:calc internal.database.get_page

scoreboard players add #database.i mcpaint.calc 1
execute if score #database.i mcpaint.calc < #database.page.to mcpaint.calc run function mcpaint:database/internal/get_paged_work_names/loop