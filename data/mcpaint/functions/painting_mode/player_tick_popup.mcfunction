data modify storage mcpaint:calc popup set from storage mcpaint:calc painter_ping_studio.responder.data.popups[0]
data modify storage mcpaint:calc ui set from storage mcpaint:calc popup
function mcpaint:painting_mode/intersect_ui_hbox

execute if score intersect_ui_hbox mcpaint.calc matches 0 unless data storage mcpaint:calc painter_tick{left_click:0b,right_click:0b} run data modify storage mcpaint:calc painter_command set value {command:"popup.cancel"}
execute if score intersect_ui_hbox mcpaint.calc matches 1 unless data storage mcpaint:calc painter_tick{left_click:0b,right_click:0b} if data storage mcpaint:calc popup{type:"new_file"} run function mcpaint:painting_mode/popup/new_file
execute if score intersect_ui_hbox mcpaint.calc matches 1 unless data storage mcpaint:calc painter_tick{left_click:0b,right_click:0b} if data storage mcpaint:calc popup{type:"load"} run function mcpaint:painting_mode/popup/load