data modify storage mcpaint:calc filepath set value {author:[I;0,0,0,0],name:""}
data modify storage mcpaint:calc filepath.author set from storage mcpaint:calc interactor.UUID

data modify storage mcpaint:database get_works_as_pages set value {works_per_page:8}
data modify storage mcpaint:database get_works_as_pages.selected_page set from entity @s data.computer_page.selected_page
function mcpaint:database/get_works_as_pages

data modify entity @s data.computer_page.total_pages set from storage mcpaint:database get_works_as_pages.total_pages
data modify entity @s data.computer_page.work_names set value []
data modify entity @s data.computer_page.work_names append from storage mcpaint:database get_works_as_pages.returned_page[].name

execute store result entity @s data.computer_page.selected_page int 1 run scoreboard players get selected_page mcpaint.calc

execute store result score selected_row mcpaint.calc run data get entity @s data.computer_page.selected_row 1
execute store result score total_works_on_page mcpaint.calc run data get entity @s data.computer_page.work_names
scoreboard players add selected_row mcpaint.calc 1
scoreboard players operation selected_row mcpaint.calc < total_works_on_page mcpaint.calc
scoreboard players remove selected_row mcpaint.calc 1
execute store result entity @s data.computer_page.selected_row int 1 run scoreboard players get selected_row mcpaint.calc

data remove storage mcpaint:calc selected_work
execute if score selected_row mcpaint.calc matches 0 run data modify storage mcpaint:calc selected_work set from storage mcpaint:database get_works_as_pages.returned_page[0]
execute if score selected_row mcpaint.calc matches 1 run data modify storage mcpaint:calc selected_work set from storage mcpaint:database get_works_as_pages.returned_page[1]
execute if score selected_row mcpaint.calc matches 2 run data modify storage mcpaint:calc selected_work set from storage mcpaint:database get_works_as_pages.returned_page[2]
execute if score selected_row mcpaint.calc matches 3 run data modify storage mcpaint:calc selected_work set from storage mcpaint:database get_works_as_pages.returned_page[3]
execute if score selected_row mcpaint.calc matches 4 run data modify storage mcpaint:calc selected_work set from storage mcpaint:database get_works_as_pages.returned_page[4]
execute if score selected_row mcpaint.calc matches 5 run data modify storage mcpaint:calc selected_work set from storage mcpaint:database get_works_as_pages.returned_page[5]
execute if score selected_row mcpaint.calc matches 6 run data modify storage mcpaint:calc selected_work set from storage mcpaint:database get_works_as_pages.returned_page[6]
execute if score selected_row mcpaint.calc matches 7 run data modify storage mcpaint:calc selected_work set from storage mcpaint:database get_works_as_pages.returned_page[7]

data modify storage mcpaint:calc filepath.name set from storage mcpaint:calc selected_work.name
data modify entity @s data.computer_page.filepath set from storage mcpaint:calc filepath