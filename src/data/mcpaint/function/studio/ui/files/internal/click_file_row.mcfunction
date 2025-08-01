scoreboard players operation #studio.ui_element.selected mcpaint.calc = #studio.ui_element.focused_child mcpaint.calc
scoreboard players operation #studio.ui_element.selected mcpaint.calc %= #const.1000 mcpaint.calc
execute store result storage mcpaint:calc internal.studio.ui.data.selected_work int 1 run scoreboard players get #studio.ui_element.selected mcpaint.calc

function mcpaint:studio/ui/files/internal/select_work with storage mcpaint:calc internal.studio.ui.data