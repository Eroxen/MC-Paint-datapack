scoreboard players remove j mcpaint.calc 1
data modify storage mcpaint:database get_works_as_pages.returned_page append from storage mcpaint:database search.authors[0].works[0]
data remove storage mcpaint:database search.authors[0].works[0]
execute if score j mcpaint.calc matches 1.. if data storage mcpaint:database search.authors[0].works[0] run function mcpaint:database/get_works_as_pages_append_loop