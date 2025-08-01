execute store result score #studio.ui_element.selected mcpaint.calc run data get storage mcpaint:calc internal.studio.ui.data.selected_page 1
scoreboard players remove #studio.ui_element.selected mcpaint.calc 1

data modify storage mcpaint:calc api.database.page set value {size:8}
data modify storage mcpaint:calc api.database.page.author set from storage mcpaint:calc internal.studio.ui.data.filepath.author
execute store result storage mcpaint:calc api.database.page.index int 1 run scoreboard players get #studio.ui_element.selected mcpaint.calc
function mcpaint:database/api/get_paged_work_names

execute store result storage mcpaint:calc internal.studio.ui.data.pages int 1 run scoreboard players get #database.pages mcpaint.calc
execute store result storage mcpaint:calc internal.studio.ui.data.can_previous byte 1 run scoreboard players get #database.page.can_previous mcpaint.calc
execute store result storage mcpaint:calc internal.studio.ui.data.can_next byte 1 run scoreboard players get #database.page.can_next mcpaint.calc
execute store result storage mcpaint:calc internal.studio.ui.data.items_on_page int 1 run scoreboard players get #database.page.items mcpaint.calc
execute if score #database.page.items mcpaint.calc matches 0 run data modify storage mcpaint:calc internal.studio.ui.data.selected_work set value -1
data modify storage mcpaint:calc internal.studio.ui.data.filenames set from storage mcpaint:calc api.database.page.items
execute if score #database.page.items mcpaint.calc matches ..1 run data modify storage mcpaint:calc internal.studio.ui.data.filenames append value ""
execute if score #database.page.items mcpaint.calc matches ..2 run data modify storage mcpaint:calc internal.studio.ui.data.filenames append value ""
execute if score #database.page.items mcpaint.calc matches ..3 run data modify storage mcpaint:calc internal.studio.ui.data.filenames append value ""
execute if score #database.page.items mcpaint.calc matches ..4 run data modify storage mcpaint:calc internal.studio.ui.data.filenames append value ""
execute if score #database.page.items mcpaint.calc matches ..5 run data modify storage mcpaint:calc internal.studio.ui.data.filenames append value ""
execute if score #database.page.items mcpaint.calc matches ..6 run data modify storage mcpaint:calc internal.studio.ui.data.filenames append value ""
execute if score #database.page.items mcpaint.calc matches ..7 run data modify storage mcpaint:calc internal.studio.ui.data.filenames append value ""


data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.files.page_index,distance=..0.1,limit=1] text set value '{"translate":"mcpaint.format.page_n_of","with":[{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.selected_page"},{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.pages"}],"color":"white"}'
data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.files.filenames,distance=..0.1,limit=1] text set value '{"text":"","extra":[{"font":"mcpaint:studio_ui","text":"\\u2256\\n"},{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.filenames[]","separator":"\\n"}],"color":"white"}'
