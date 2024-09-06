# called on ui element marker
execute on vehicle run function eroxified2:entity/api/kill_stack
function mcpaint:studio/internal/event/ignore_current_click

scoreboard players set #studio.ui_element.max_layer mcpaint.calc 0
execute at @s run scoreboard players operation #studio.ui_element.max_layer mcpaint.calc > @e[type=text_display,tag=mcpaint.studio.ui_element.parent,distance=..0.1] mcpaint.ui.layer