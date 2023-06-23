scoreboard players remove i mcpaint.calc 1
data remove storage mcpaint:database search.authors[0].works[0]
execute if score i mcpaint.calc matches 1.. if data storage mcpaint:database search.authors[0].works[0] run function mcpaint:database/get_works_as_pages_remove_loop