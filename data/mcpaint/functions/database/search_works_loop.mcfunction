data modify storage mcpaint:calc different set from storage mcpaint:calc filepath.name
execute store success score different mcpaint.calc run data modify storage mcpaint:calc different set from storage mcpaint:database search.author.works[0].name
execute if score different mcpaint.calc matches 0 run data modify storage mcpaint:database search.found_work set value 1b

execute if data storage mcpaint:database search{found_work:0b,write:1b} run data modify storage mcpaint:database search.searched_works append from storage mcpaint:database search.author.works[0]
execute if data storage mcpaint:database search{found_work:0b} run data remove storage mcpaint:database search.author.works[0]
execute if data storage mcpaint:database search{found_work:0b} if data storage mcpaint:database search.author.works[0] run function mcpaint:database/search_works_loop