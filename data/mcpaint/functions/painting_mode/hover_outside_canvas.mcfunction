# file menu
data modify storage mcpaint:calc ui set from storage mcpaint:calc painter_ping_studio.responder.data.ui.file_menu
function mcpaint:painting_mode/intersect_ui_hbox
execute if score intersect_ui_hbox mcpaint.calc matches 1 run scoreboard players set op mcpaint.calc 125
execute if score intersect_ui_hbox mcpaint.calc matches 1 run scoreboard players operation hover mcpaint.calc = ui_y_1 mcpaint.calc
execute if score intersect_ui_hbox mcpaint.calc matches 1 run scoreboard players operation hover mcpaint.calc -= ui_y_0 mcpaint.calc
execute if score intersect_ui_hbox mcpaint.calc matches 1 run scoreboard players operation hover mcpaint.calc -= ui_v mcpaint.calc
execute if score intersect_ui_hbox mcpaint.calc matches 1 run scoreboard players operation hover mcpaint.calc /= op mcpaint.calc
execute if score intersect_ui_hbox mcpaint.calc matches 1 run scoreboard players set hover_now mcpaint.calc -1
execute if score intersect_ui_hbox mcpaint.calc matches 1 if data storage mcpaint:calc ui.hover store result score hover_now mcpaint.calc run data get storage mcpaint:calc ui.hover 1
execute if score intersect_ui_hbox mcpaint.calc matches 1 unless score hover mcpaint.calc = hover_now mcpaint.calc run data modify storage mcpaint:calc painter_command set value {command:"hover_file_menu",i:0}
execute if score intersect_ui_hbox mcpaint.calc matches 1 unless score hover mcpaint.calc = hover_now mcpaint.calc run function mcpaint:painting_mode/sound/scroll
execute if score intersect_ui_hbox mcpaint.calc matches 1 unless score hover mcpaint.calc = hover_now mcpaint.calc store result storage mcpaint:calc painter_command.i int 1 run scoreboard players get hover mcpaint.calc
execute if score intersect_ui_hbox mcpaint.calc matches 0 if data storage mcpaint:calc ui.hover run data modify storage mcpaint:calc painter_command set value {command:"unhover_file_menu"}