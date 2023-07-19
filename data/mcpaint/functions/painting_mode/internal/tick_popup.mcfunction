execute if data storage mcpaint:calc painter_tick{right_click:0b,left_click:0b} run return 0

execute if data storage mcpaint:calc ui{type:"new_file"} run function mcpaint:painting_mode/internal/click/new_file_popup
execute if data storage mcpaint:calc ui{type:"load"} run function mcpaint:painting_mode/internal/click/load_popup