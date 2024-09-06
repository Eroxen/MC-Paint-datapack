execute store result score #studio.ui_element.selected mcpaint.calc run data get storage mcpaint:calc internal.studio.ui.data.selected_page 1
$scoreboard players $(direction) #studio.ui_element.selected mcpaint.calc 1
execute store result storage mcpaint:calc internal.studio.ui.data.selected_page int 1 run scoreboard players get #studio.ui_element.selected mcpaint.calc
data modify storage mcpaint:calc internal.studio.ui.data.selected_work set value 0

function mcpaint:studio/ui/files/internal/get_page
function mcpaint:studio/ui/files/internal/select_work with storage mcpaint:calc internal.studio.ui.data