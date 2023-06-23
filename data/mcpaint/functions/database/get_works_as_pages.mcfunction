data modify storage mcpaint:database search set value {found_author:0b,found_work:0b}
data modify storage mcpaint:database search.authors set from storage mcpaint:database authors
execute if data storage mcpaint:database search{found_author:0b} if data storage mcpaint:database search.authors[0] run function mcpaint:database/search_authors_loop

scoreboard players set works mcpaint.calc 0
execute if data storage mcpaint:database search{found_author:1b} store result score works mcpaint.calc run data get storage mcpaint:database search.authors[0].works

execute store result score works_per_page mcpaint.calc run data get storage mcpaint:database get_works_as_pages.works_per_page 1
scoreboard players operation pages mcpaint.calc = works mcpaint.calc
scoreboard players operation pages mcpaint.calc += works_per_page mcpaint.calc
scoreboard players remove pages mcpaint.calc 1
scoreboard players operation pages mcpaint.calc /= works_per_page mcpaint.calc
execute store result storage mcpaint:database get_works_as_pages.total_pages int 1 run scoreboard players get pages mcpaint.calc

# selected_page must be 0-indexed
execute store result score selected_page mcpaint.calc run data get storage mcpaint:database get_works_as_pages.selected_page 1
scoreboard players add selected_page mcpaint.calc 1
scoreboard players operation selected_page mcpaint.calc < pages mcpaint.calc
scoreboard players remove selected_page mcpaint.calc 1

data modify storage mcpaint:database get_works_as_pages.returned_page set value []
scoreboard players operation i mcpaint.calc = works_per_page mcpaint.calc
scoreboard players operation i mcpaint.calc *= selected_page mcpaint.calc
scoreboard players operation j mcpaint.calc = works_per_page mcpaint.calc
execute if score i mcpaint.calc matches 1.. if data storage mcpaint:database search.authors[0].works[0] run function mcpaint:database/get_works_as_pages_remove_loop
execute if score j mcpaint.calc matches 1.. if data storage mcpaint:database search.authors[0].works[0] run function mcpaint:database/get_works_as_pages_append_loop