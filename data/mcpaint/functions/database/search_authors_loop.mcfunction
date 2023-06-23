data modify storage mcpaint:calc different set from storage mcpaint:calc filepath.author
execute store success score different mcpaint.calc run data modify storage mcpaint:calc different set from storage mcpaint:database search.authors[0].UUID
execute if score different mcpaint.calc matches 0 run data modify storage mcpaint:database search.found_author set value 1b

execute if data storage mcpaint:database search{found_author:0b,write:1b} run data modify storage mcpaint:database search.searched_authors append from storage mcpaint:database search.authors[0]
execute if data storage mcpaint:database search{found_author:0b} run data remove storage mcpaint:database search.authors[0]
execute if data storage mcpaint:database search{found_author:0b} if data storage mcpaint:database search.authors[0] run function mcpaint:database/search_authors_loop