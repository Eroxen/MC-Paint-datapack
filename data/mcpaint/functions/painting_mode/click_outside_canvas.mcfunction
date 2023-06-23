# colour picker
data modify storage mcpaint:calc ui set from storage mcpaint:calc painter_ping_studio.responder.data.ui.colour_picker
function mcpaint:painting_mode/intersect_ui_hbox
execute if score intersect_ui_hbox mcpaint.calc matches 1 run data modify storage mcpaint:calc painter_command set value {command:"colour_picker",u:0,v:0}
execute if score intersect_ui_hbox mcpaint.calc matches 1 store success storage mcpaint:calc painter_command.debug byte 1 if entity @s[tag=mcpaint.player.debug]
execute if score intersect_ui_hbox mcpaint.calc matches 1 store result storage mcpaint:calc painter_command.u int 1 run scoreboard players get ui_u mcpaint.calc
execute if score intersect_ui_hbox mcpaint.calc matches 1 store result storage mcpaint:calc painter_command.v int 1 run scoreboard players get ui_v mcpaint.calc
execute if score intersect_ui_hbox mcpaint.calc matches 1 if predicate mcpaint:holding_dye run function mcpaint:painting_mode/holding_dye
execute if score intersect_ui_hbox mcpaint.calc matches 1 if predicate mcpaint:holding_pro_brush run scoreboard players set @s mcpaint.pro_brush_cooldown 0

# tools
data modify storage mcpaint:calc ui set from storage mcpaint:calc painter_ping_studio.responder.data.ui.tools
function mcpaint:painting_mode/intersect_ui_hbox
execute if score intersect_ui_hbox mcpaint.calc matches 1 run data modify storage mcpaint:calc painter_command set value {command:"tools",u:0,v:0}
execute if score intersect_ui_hbox mcpaint.calc matches 1 store result storage mcpaint:calc painter_command.u int 1 run scoreboard players get ui_u mcpaint.calc
execute if score intersect_ui_hbox mcpaint.calc matches 1 store result storage mcpaint:calc painter_command.v int 1 run scoreboard players get ui_v mcpaint.calc

# file menu
data modify storage mcpaint:calc ui set from storage mcpaint:calc painter_ping_studio.responder.data.ui.file_menu
function mcpaint:painting_mode/intersect_ui_hbox
execute if score intersect_ui_hbox mcpaint.calc matches 1 run scoreboard players set op mcpaint.calc 125
execute if score intersect_ui_hbox mcpaint.calc matches 1 run scoreboard players operation hover mcpaint.calc = ui_y_1 mcpaint.calc
execute if score intersect_ui_hbox mcpaint.calc matches 1 run scoreboard players operation hover mcpaint.calc -= ui_y_0 mcpaint.calc
execute if score intersect_ui_hbox mcpaint.calc matches 1 run scoreboard players operation hover mcpaint.calc -= ui_v mcpaint.calc
execute if score intersect_ui_hbox mcpaint.calc matches 1 run scoreboard players operation hover mcpaint.calc /= op mcpaint.calc
execute if score intersect_ui_hbox mcpaint.calc matches 1 if score hover mcpaint.calc matches 0 run data modify storage mcpaint:calc painter_command set value {command:"save"}
execute if score intersect_ui_hbox mcpaint.calc matches 1 if score hover mcpaint.calc matches 1 unless data entity @s SelectedItem{id:"minecraft:writable_book"} run tellraw @s {"translate":"mcpaint.message.must_hold_writable_book"}
execute if score intersect_ui_hbox mcpaint.calc matches 1 if score hover mcpaint.calc matches 1 if data entity @s SelectedItem{id:"minecraft:writable_book"} run data modify storage mcpaint:calc painter_command set value {command:"save"}
execute if score intersect_ui_hbox mcpaint.calc matches 1 if score hover mcpaint.calc matches 1 if data entity @s SelectedItem{id:"minecraft:writable_book"} run data modify storage mcpaint:calc painter_command.filename set from entity @s SelectedItem.tag.pages[0]
execute if score intersect_ui_hbox mcpaint.calc matches 1 if score hover mcpaint.calc matches 2 run data modify storage mcpaint:calc painter_command set value {command:"open_new_file_popup"}
execute if score intersect_ui_hbox mcpaint.calc matches 1 if score hover mcpaint.calc matches 3 run data modify storage mcpaint:calc painter_command set value {command:"open_load_popup"}
execute if score intersect_ui_hbox mcpaint.calc matches 1 if score hover mcpaint.calc matches 4 if data storage mcpaint:calc painter_ping_studio.responder.data{unsaved_changes:1b} run tellraw @s {"translate":"mcpaint.message.must_save_first"}
execute if score intersect_ui_hbox mcpaint.calc matches 1 if score hover mcpaint.calc matches 4 if data storage mcpaint:calc painter_ping_studio.responder.data{unsaved_changes:1b} run scoreboard players set hover mcpaint.calc -1
execute if score intersect_ui_hbox mcpaint.calc matches 1 if score hover mcpaint.calc matches 4 if predicate mcpaint:survival_or_adventure unless data entity @s SelectedItem{id:"minecraft:painting"} run tellraw @s {"translate":"mcpaint.message.must_hold_painting"}
execute if score intersect_ui_hbox mcpaint.calc matches 1 if score hover mcpaint.calc matches 4 if predicate mcpaint:survival_or_adventure unless data entity @s SelectedItem{id:"minecraft:painting"} run scoreboard players set hover mcpaint.calc -1
execute if score intersect_ui_hbox mcpaint.calc matches 1 if score hover mcpaint.calc matches 4 if predicate mcpaint:survival_or_adventure run function mcpaint:item/decrement_mainhand
execute if score intersect_ui_hbox mcpaint.calc matches 1 if score hover mcpaint.calc matches 4 run data modify storage mcpaint:calc painter_command set value {command:"export"}

# history
data modify storage mcpaint:calc ui set from storage mcpaint:calc painter_ping_studio.responder.data.ui.history
function mcpaint:painting_mode/intersect_ui_hbox
execute if score intersect_ui_hbox mcpaint.calc matches 1 if score ui_u mcpaint.calc matches ..250 if data storage mcpaint:calc painter_ping_studio.responder.data.history.undo[0] run data modify storage mcpaint:calc painter_command set value {command:"undo"}
execute if score intersect_ui_hbox mcpaint.calc matches 1 if score ui_u mcpaint.calc matches ..250 if data storage mcpaint:calc painter_ping_studio.responder.data.history.undo[0] run function mcpaint:painting_mode/sound/generic_button
execute if score intersect_ui_hbox mcpaint.calc matches 1 if score ui_u mcpaint.calc matches 251.. if data storage mcpaint:calc painter_ping_studio.responder.data.history.redo[0] run data modify storage mcpaint:calc painter_command set value {command:"redo"}
execute if score intersect_ui_hbox mcpaint.calc matches 1 if score ui_u mcpaint.calc matches 251.. if data storage mcpaint:calc painter_ping_studio.responder.data.history.redo[0] run function mcpaint:painting_mode/sound/generic_button