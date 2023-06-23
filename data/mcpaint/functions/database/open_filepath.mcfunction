data modify storage mcpaint:database search set value {found_author:0b,found_work:0b}
data modify storage mcpaint:database search.authors set from storage mcpaint:database authors
execute if data storage mcpaint:database search{found_author:0b} if data storage mcpaint:database search.authors[0] run function mcpaint:database/search_authors_loop

execute if data storage mcpaint:database search{found_author:1b} run data modify storage mcpaint:database search.author set from storage mcpaint:database search.authors[0]
execute if data storage mcpaint:database search{found_author:0b} run data modify storage mcpaint:database search.author set value {UUID:[],name:"",works:[]}
execute if data storage mcpaint:database search{found_author:0b} run data modify storage mcpaint:database search.author.UUID set from storage mcpaint:calc filepath.author
execute if data storage mcpaint:database search.author{name:""} run function mcpaint:database/get_author_name

execute if data storage mcpaint:database search{found_work:0b} if data storage mcpaint:database search.author.works[0] run function mcpaint:database/search_works_loop

execute if data storage mcpaint:database search{found_work:1b} run data modify storage mcpaint:database search.work set from storage mcpaint:database search.author.works[0]
execute if data storage mcpaint:database search{found_work:0b} run data modify storage mcpaint:database search.work set value {name:"",canvas:{}}
execute if data storage mcpaint:database search{found_work:0b} run data modify storage mcpaint:database search.work.name set from storage mcpaint:calc filepath.name