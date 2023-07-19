### hover over ui ###
execute if data storage mcpaint:calc painter_tick.studio.data.ui.file_menu.hover unless data storage mcpaint:calc painter_tick.intersect{element:"file_menu"} run data modify storage mcpaint:calc painter_command set value {command:"unhover_file_menu"}
execute if data storage mcpaint:calc painter_tick.intersect{element:"file_menu"} run function mcpaint:painting_mode/internal/hover/file_menu

### click ###
scoreboard players set #temp.clicked mcpaint.calc 1
execute if data storage mcpaint:calc painter_tick{right_click:0b,left_click:0b} run scoreboard players set #temp.clicked mcpaint.calc 0
execute if data storage mcpaint:calc painter_tick.intersect{element:"canvas"} run function mcpaint:painting_mode/internal/hover/canvas
execute if score #temp.clicked mcpaint.calc matches 0 run return 0

execute if data storage mcpaint:calc painter_tick.intersect{element:"canvas"} run function mcpaint:painting_mode/internal/click/canvas
execute if data storage mcpaint:calc painter_tick.intersect{element:"below_canvas"} run function mcpaint:painting_mode/api/leave
execute if data storage mcpaint:calc painter_tick.intersect{element:"history"} run function mcpaint:painting_mode/internal/click/history
execute if data storage mcpaint:calc painter_tick.intersect{element:"file_menu"} run function mcpaint:painting_mode/internal/click/file_menu
execute if data storage mcpaint:calc painter_tick.intersect{element:"tools"} run function mcpaint:painting_mode/internal/click/tools
execute if data storage mcpaint:calc painter_tick.intersect{element:"colour_picker"} run function mcpaint:painting_mode/internal/click/colour_picker