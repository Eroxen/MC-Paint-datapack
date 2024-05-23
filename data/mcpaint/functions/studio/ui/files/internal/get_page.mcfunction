execute store result score #studio.ui_element.selected mcpaint.calc run data get storage mcpaint:calc internal.studio.ui.data.selected_page 1
scoreboard players remove #studio.ui_element.selected mcpaint.calc 1

data modify storage mcpaint:calc api.database.page set value {size:8}
data modify storage mcpaint:calc api.database.page.author set from storage mcpaint:calc internal.studio.ui.data.author
execute store result storage mcpaint:calc api.database.page.index int 1 run scoreboard players get #studio.ui_element.selected mcpaint.calc
function mcpaint:database/api/get_paged_work_names