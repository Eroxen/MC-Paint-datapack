scoreboard players set #intersect_ui_hbox mcpaint.calc 0

### canvas ###
data modify storage mcpaint:calc ui set from storage mcpaint:calc painter_tick.studio.data.ui.canvas
execute if data storage mcpaint:calc painter_tick.studio.data.ui.canvas run function mcpaint:painting_mode/internal/math/intersect_ui_hbox
execute if score #intersect_ui_hbox mcpaint.calc matches 1 run data modify storage mcpaint:calc painter_tick.intersect set value {element:"canvas",clickable:1b}
execute if score #intersect_ui_hbox mcpaint.calc matches 1 run return 0

## below canvas ##
execute if score screenspace_x mcpaint.calc >= ui_x_0 mcpaint.calc if score screenspace_x mcpaint.calc < ui_x_1 mcpaint.calc if score screenspace_y mcpaint.calc matches -500..-125 run scoreboard players set #intersect_ui_hbox mcpaint.calc 1
execute if score #intersect_ui_hbox mcpaint.calc matches 1 run data modify storage mcpaint:calc painter_tick.intersect set value {element:"below_canvas",clickable:1b}
execute if score #intersect_ui_hbox mcpaint.calc matches 1 run return 0


### file menu ###
data modify storage mcpaint:calc ui set from storage mcpaint:calc painter_tick.studio.data.ui.file_menu
execute if data storage mcpaint:calc painter_tick.studio.data.ui.file_menu run function mcpaint:painting_mode/internal/math/intersect_ui_hbox
execute if score #intersect_ui_hbox mcpaint.calc matches 1 run data modify storage mcpaint:calc painter_tick.intersect set value {element:"file_menu",clickable:1b}
execute if score #intersect_ui_hbox mcpaint.calc matches 1 run function mcpaint:painting_mode/internal/get_child/file_menu
execute if score #intersect_ui_hbox mcpaint.calc matches 1 run return 0


### colour picker ###
data modify storage mcpaint:calc ui set from storage mcpaint:calc painter_tick.studio.data.ui.colour_picker
execute if data storage mcpaint:calc painter_tick.studio.data.ui.file_menu run function mcpaint:painting_mode/internal/math/intersect_ui_hbox
execute if score #intersect_ui_hbox mcpaint.calc matches 1 run data modify storage mcpaint:calc painter_tick.intersect set value {element:"colour_picker",clickable:0b}
execute if score #intersect_ui_hbox mcpaint.calc matches 1 run function mcpaint:painting_mode/internal/get_child/colour_picker
execute if score #intersect_ui_hbox mcpaint.calc matches 1 run return 0


### tools ###
data modify storage mcpaint:calc ui set from storage mcpaint:calc painter_tick.studio.data.ui.tools
execute if data storage mcpaint:calc painter_tick.studio.data.ui.tools run function mcpaint:painting_mode/internal/math/intersect_ui_hbox
execute if score #intersect_ui_hbox mcpaint.calc matches 1 run data modify storage mcpaint:calc painter_tick.intersect set value {element:"tools",clickable:0b}
execute if score #intersect_ui_hbox mcpaint.calc matches 1 run function mcpaint:painting_mode/internal/get_child/tools
execute if score #intersect_ui_hbox mcpaint.calc matches 1 run return 0


### history ###
data modify storage mcpaint:calc ui set from storage mcpaint:calc painter_tick.studio.data.ui.history
execute if data storage mcpaint:calc painter_tick.studio.data.ui.history run function mcpaint:painting_mode/internal/math/intersect_ui_hbox
execute if score #intersect_ui_hbox mcpaint.calc matches 1 run data modify storage mcpaint:calc painter_tick.intersect set value {element:"history",clickable:1b}
execute if score #intersect_ui_hbox mcpaint.calc matches 1 run return 0