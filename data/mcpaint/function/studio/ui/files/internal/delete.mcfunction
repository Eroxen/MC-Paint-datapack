data modify storage mcpaint:calc internal.studio.ui.data set from entity @s data

function mcpaint:database/api/delete_work with storage mcpaint:calc internal.studio.ui.data.filepath

playsound minecraft:entity.generic.burn master @a[distance=..16] ~ ~ ~ 0.75 2
advancement grant @p[predicate=mcpaint:same_session] only mcpaint:guide/delete_work

function mcpaint:studio/ui/files/internal/get_page
execute if score #database.found mcpaint.calc matches 0 if score #database.page.can_previous mcpaint.calc matches 1 store result storage mcpaint:calc internal.studio.ui.data.selected_page int 1 run scoreboard players get #database.page.index mcpaint.calc
execute if score #database.found mcpaint.calc matches 0 if score #database.page.can_previous mcpaint.calc matches 1 run function mcpaint:studio/ui/files/internal/get_page

execute store result score #studio.ui_element.selected mcpaint.calc run data get storage mcpaint:calc internal.studio.ui.data.selected_work 1
execute if score #studio.ui_element.selected mcpaint.calc >= #database.page.items mcpaint.calc run scoreboard players operation #studio.ui_element.selected mcpaint.calc = #database.page.items mcpaint.calc
execute if score #studio.ui_element.selected mcpaint.calc >= #database.page.items mcpaint.calc run scoreboard players remove #studio.ui_element.selected mcpaint.calc 1
execute store result storage mcpaint:calc internal.studio.ui.data.selected_work int 1 run scoreboard players get #studio.ui_element.selected mcpaint.calc

function mcpaint:studio/ui/files/internal/select_work with storage mcpaint:calc internal.studio.ui.data

data modify entity @s data set from storage mcpaint:calc internal.studio.ui.data