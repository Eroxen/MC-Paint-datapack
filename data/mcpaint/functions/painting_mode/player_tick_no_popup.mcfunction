data modify storage mcpaint:calc ui set from storage mcpaint:calc painter_ping_studio.responder.data.ui.canvas
function mcpaint:painting_mode/intersect_ui_hbox
execute if data storage mcpaint:calc painter_tick{intersect:1b} if score intersect_ui_hbox mcpaint.calc matches 1 run data modify storage mcpaint:calc painter_tick.intersect_canvas set value 1b
execute if score screenspace_x mcpaint.calc >= ui_x_0 mcpaint.calc if score screenspace_x mcpaint.calc < ui_x_1 mcpaint.calc if score screenspace_y mcpaint.calc matches ..-125 run data modify storage mcpaint:calc painter_tick.below_canvas set value 1b

execute if data storage mcpaint:calc painter_tick{intersect:1b,intersect_canvas:1b,leave:0b} run function mcpaint:painting_mode/hover_canvas
execute if data storage mcpaint:calc painter_tick{intersect:1b,intersect_canvas:0b,leave:0b} run function mcpaint:painting_mode/hover_outside_canvas

execute if data storage mcpaint:calc painter_tick{intersect:1b,intersect_canvas:1b} unless data storage mcpaint:calc painter_tick{left_click:0b,right_click:0b} run function mcpaint:painting_mode/click_canvas

execute if data storage mcpaint:calc painter_tick{intersect:1b,intersect_canvas:1b,selected_tool:{supports_extended_stroke:1b}} if data storage mcpaint:calc painter_tick{left_click:0b,right_click:1b} unless predicate mcpaint:holding_pro_brush run scoreboard players set @s mcpaint.extended_brush_stroke 4
execute if data storage mcpaint:calc painter_tick{intersect:1b,intersect_canvas:1b,selected_tool:{supports_extended_stroke:1b}} if data storage mcpaint:calc painter_tick{left_click:0b,right_click:1b} if predicate mcpaint:holding_pro_brush run scoreboard players set @s mcpaint.pro_brush_cooldown 0
execute if data storage mcpaint:calc painter_tick{intersect:1b,intersect_canvas:1b} if data storage mcpaint:calc painter_tick{left_click:0b,right_click:0b} if score @s mcpaint.extended_brush_stroke matches 1.. run function mcpaint:painting_mode/click_canvas

execute if data storage mcpaint:calc painter_tick{intersect:1b,intersect_canvas:0b,below_canvas:1b} unless data storage mcpaint:calc painter_tick{left_click:0b,right_click:0b} run data modify storage mcpaint:calc painter_tick.leave set value 1b
execute if data storage mcpaint:calc painter_tick{intersect:1b,intersect_canvas:0b,leave:0b} unless data storage mcpaint:calc painter_tick{left_click:0b,right_click:0b} run function mcpaint:painting_mode/click_outside_canvas

execute if data storage mcpaint:calc painter_tick{f:1b} unless data storage mcpaint:calc painter_command unless score @s mcpaint.sneak matches 1.. if data storage mcpaint:calc painter_ping_studio.responder.data.history.undo[0] run data modify storage mcpaint:calc painter_command set value {command:"undo"}
execute if data storage mcpaint:calc painter_tick{f:1b} unless data storage mcpaint:calc painter_command if score @s mcpaint.sneak matches 1.. if data storage mcpaint:calc painter_ping_studio.responder.data.history.redo[0] run data modify storage mcpaint:calc painter_command set value {command:"redo"}
execute if data storage mcpaint:calc painter_tick{q:1b} unless score @s mcpaint.sneak matches 1.. run data modify storage mcpaint:calc painter_command set value {command:"cycle_tools"}
execute if data storage mcpaint:calc painter_tick{q:1b} unless score @s mcpaint.sneak matches 1.. run function mcpaint:painting_mode/sound/scroll
execute if data storage mcpaint:calc painter_tick{q:1b} if score @s mcpaint.sneak matches 1.. if data storage mcpaint:calc painter_tick.selected_tool.subtool run data modify storage mcpaint:calc painter_command set value {command:"cycle_subtools"}
execute if data storage mcpaint:calc painter_tick{q:1b} if score @s mcpaint.sneak matches 1.. if data storage mcpaint:calc painter_tick.selected_tool.subtool run function mcpaint:painting_mode/sound/scroll