data modify storage mcpaint:calc ui set from storage mcpaint:calc painter_tick.studio.data.popups[0]
function mcpaint:painting_mode/internal/math/intersect_ui_hbox
execute if score #intersect_ui_hbox mcpaint.calc matches 1 run data modify storage mcpaint:calc painter_tick.intersect set value {element:"popup",clickable:0b}
execute if score #intersect_ui_hbox mcpaint.calc matches 1 if data storage mcpaint:calc ui{type:"new_file"} run function mcpaint:painting_mode/internal/get_child/new_file_popup
execute if score #intersect_ui_hbox mcpaint.calc matches 1 if data storage mcpaint:calc ui{type:"load"} run function mcpaint:painting_mode/internal/get_child/load_popup