execute if score ui.child mcpaint.calc matches 0 run data modify storage mcpaint:calc painter_command set value {command:"save"}
execute if score ui.child mcpaint.calc matches 1 unless data entity @s SelectedItem{id:"minecraft:writable_book"} run tellraw @s {"translate":"mcpaint.message.must_hold_writable_book"}
execute if score ui.child mcpaint.calc matches 1 if data entity @s SelectedItem{id:"minecraft:writable_book"} run data modify storage mcpaint:calc painter_command set value {command:"save"}
execute if score ui.child mcpaint.calc matches 1 if data entity @s SelectedItem{id:"minecraft:writable_book"} run data modify storage mcpaint:calc math.string set from entity @s SelectedItem.tag.pages[0]
execute if score ui.child mcpaint.calc matches 1 if data entity @s SelectedItem{id:"minecraft:writable_book"} run function mcpaint:math/api/limit_string_length
execute if score ui.child mcpaint.calc matches 1 if data entity @s SelectedItem{id:"minecraft:writable_book"} run data modify storage mcpaint:calc painter_command.filename set from storage mcpaint:calc math.string
execute if score ui.child mcpaint.calc matches 2 run data modify storage mcpaint:calc painter_command set value {command:"open_new_file_popup"}
execute if score ui.child mcpaint.calc matches 3 run data modify storage mcpaint:calc painter_command set value {command:"open_load_popup"}
execute if score ui.child mcpaint.calc matches 4 if data storage mcpaint:calc painter_tick.studio.data{unsaved_changes:1b} run tellraw @s {"translate":"mcpaint.message.must_save_first"}
execute if score ui.child mcpaint.calc matches 4 if data storage mcpaint:calc painter_tick.studio.data{unsaved_changes:1b} run scoreboard players set ui.child mcpaint.calc -1
execute if score ui.child mcpaint.calc matches 4 if predicate mcpaint:survival_or_adventure unless data entity @s SelectedItem{id:"minecraft:painting"} run tellraw @s {"translate":"mcpaint.message.must_hold_painting"}
execute if score ui.child mcpaint.calc matches 4 if predicate mcpaint:survival_or_adventure unless data entity @s SelectedItem{id:"minecraft:painting"} run scoreboard players set ui.child mcpaint.calc -1
execute if score ui.child mcpaint.calc matches 4 if predicate mcpaint:survival_or_adventure run function mcpaint:item/decrement_mainhand
execute if score ui.child mcpaint.calc matches 4 run data modify storage mcpaint:calc painter_command set value {command:"export"}