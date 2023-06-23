data modify storage mcpaint:calc filepath set value {author:[I;0,0,0,0],name:""}
execute if data entity @s data.painter.UUID run data modify storage mcpaint:calc filepath.author set from entity @s data.painter.UUID

data modify storage mcpaint:database search set value {found_author:0b,found_work:0b}
data modify storage mcpaint:database search.authors set from storage mcpaint:database authors
execute if data storage mcpaint:database search{found_author:0b} if data storage mcpaint:database search.authors[0] run function mcpaint:database/search_authors_loop

execute if data storage mcpaint:database search{found_author:1b} run data modify storage mcpaint:calc all_works_names set value []
execute if data storage mcpaint:database search{found_author:1b} run data modify storage mcpaint:calc all_works_names append from storage mcpaint:database search.authors[0].works[].name
execute if data storage mcpaint:database search{found_author:1b} store result score works mcpaint.calc run data get storage mcpaint:calc all_works_names
execute if data storage mcpaint:database search{found_author:1b} if score works mcpaint.calc matches ..0 run data modify storage mcpaint:database search.found_author set value 0b
execute if data storage mcpaint:database search{found_author:1b} run scoreboard players set op mcpaint.calc 8
execute if data storage mcpaint:database search{found_author:1b} run scoreboard players operation pages mcpaint.calc = works mcpaint.calc
execute if data storage mcpaint:database search{found_author:1b} run scoreboard players add pages mcpaint.calc 7
execute if data storage mcpaint:database search{found_author:1b} run scoreboard players operation pages mcpaint.calc /= op mcpaint.calc
execute if data storage mcpaint:database search{found_author:1b} run data modify storage mcpaint:calc popup set value {type:"load",filename:"",page:1,pages:1,position:[-500,-300],size:[2000,2000],page_texts:[[]]}
execute if data storage mcpaint:database search{found_author:1b} store result storage mcpaint:calc popup.pages int 1 run scoreboard players get pages mcpaint.calc
execute if data storage mcpaint:database search{found_author:1b} run scoreboard players set i mcpaint.calc 0
execute if data storage mcpaint:database search{found_author:1b} run function mcpaint:studio/popup/open_load_loop
execute if data storage mcpaint:database search{found_author:1b} run data modify storage mcpaint:calc popup.current_page_texts set from storage mcpaint:calc popup.page_texts[0]
execute if data storage mcpaint:database search{found_author:1b} run function mcpaint:studio/popup/offset
execute if data storage mcpaint:database search{found_author:1b} store result storage mcpaint:calc popup.lines_on_page int 1 run data get storage mcpaint:calc popup.current_page_texts
execute if data storage mcpaint:database search{found_author:1b} unless data entity @s data.popups run data modify entity @s data.popups set value []
execute if data storage mcpaint:database search{found_author:1b} run data modify entity @s data.popups prepend from storage mcpaint:calc popup
execute if data storage mcpaint:database search{found_author:1b} run function mcpaint:studio/popup/rerender

execute if data storage mcpaint:database search{found_author:0b} run data modify storage mcpaint:calc message set value '{"translate":"mcpaint.message.author_has_no_works"}'
execute if data storage mcpaint:database search{found_author:0b} run function mcpaint:studio/send_message_to_painter