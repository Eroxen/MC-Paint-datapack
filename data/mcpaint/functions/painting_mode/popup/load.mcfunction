execute if entity @s[tag=mcpaint.player.debug] run tellraw @s [{"text":"LoadPopup[u=","color":"aqua"},{"score":{"name":"ui_u","objective":"mcpaint.calc"}},{"text":",v="},{"score":{"name":"ui_v","objective":"mcpaint.calc"}},{"text":"]"}]

execute if score ui_u mcpaint.calc matches 1000..2000 if score ui_v mcpaint.calc matches ..320 run data modify storage mcpaint:calc painter_command set value {command:"popup.cancel"}
execute if score ui_u mcpaint.calc matches 1000..2000 if score ui_v mcpaint.calc matches ..320 run function mcpaint:painting_mode/sound/generic_button

execute if score ui_u mcpaint.calc matches 0..1000 if score ui_v mcpaint.calc matches ..320 if data storage mcpaint:calc popup{filename:""} run tellraw @s {"translate":"mcpaint.popup.load.nothing_selected"}
execute if score ui_u mcpaint.calc matches 0..1000 if score ui_v mcpaint.calc matches ..320 unless data storage mcpaint:calc popup{filename:""} run data modify storage mcpaint:calc painter_command set value {command:"popup.load.ok"}
execute if score ui_u mcpaint.calc matches 0..1000 if score ui_v mcpaint.calc matches ..320 unless data storage mcpaint:calc popup{filename:""} run advancement grant @p only mcpaint:guide/load_work
execute if score ui_u mcpaint.calc matches 0..1000 if score ui_v mcpaint.calc matches ..320 run function mcpaint:painting_mode/sound/generic_button

# switch page
execute if score ui_u mcpaint.calc matches 100..560 if score ui_v mcpaint.calc matches 430..670 store result score current_value mcpaint.calc run data get storage mcpaint:calc popup.page 1
execute if score ui_u mcpaint.calc matches 100..560 if score ui_v mcpaint.calc matches 430..670 store result score pages mcpaint.calc run data get storage mcpaint:calc popup.pages 1
execute if score ui_u mcpaint.calc matches 100..560 if score ui_v mcpaint.calc matches 430..670 run scoreboard players operation new_value mcpaint.calc = current_value mcpaint.calc
execute if score ui_u mcpaint.calc matches 100..250 if score ui_v mcpaint.calc matches 430..670 unless score @s mcpaint.sneak matches 1.. run scoreboard players remove new_value mcpaint.calc 1
execute if score ui_u mcpaint.calc matches 100..250 if score ui_v mcpaint.calc matches 430..670 if score @s mcpaint.sneak matches 1.. run scoreboard players remove new_value mcpaint.calc 10
execute if score ui_u mcpaint.calc matches 400..560 if score ui_v mcpaint.calc matches 430..670 unless score @s mcpaint.sneak matches 1.. run scoreboard players add new_value mcpaint.calc 1
execute if score ui_u mcpaint.calc matches 400..560 if score ui_v mcpaint.calc matches 430..670 if score @s mcpaint.sneak matches 1.. run scoreboard players add new_value mcpaint.calc 10
execute if score ui_u mcpaint.calc matches 100..560 if score ui_v mcpaint.calc matches 430..670 if score new_value mcpaint.calc matches ..0 run scoreboard players set new_value mcpaint.calc 1
execute if score ui_u mcpaint.calc matches 100..560 if score ui_v mcpaint.calc matches 430..670 if score new_value mcpaint.calc > pages mcpaint.calc run scoreboard players operation new_value mcpaint.calc = pages mcpaint.calc
execute if score ui_u mcpaint.calc matches 100..560 if score ui_v mcpaint.calc matches 430..670 unless score new_value mcpaint.calc = current_value mcpaint.calc run data modify storage mcpaint:calc painter_command set value {command:"popup.load.switch_page"}
execute if score ui_u mcpaint.calc matches 100..560 if score ui_v mcpaint.calc matches 430..670 unless score new_value mcpaint.calc = current_value mcpaint.calc store result storage mcpaint:calc painter_command.page int 1 run scoreboard players get new_value mcpaint.calc
execute if score ui_u mcpaint.calc matches 100..560 if score ui_v mcpaint.calc matches 430..670 unless score new_value mcpaint.calc = current_value mcpaint.calc run function mcpaint:painting_mode/sound/generic_button

# select work
execute if score ui_u mcpaint.calc matches 640..1930 if score ui_v mcpaint.calc matches 420..1670 store result score max mcpaint.calc run data get storage mcpaint:calc popup.lines_on_page 1
execute if score ui_u mcpaint.calc matches 640..1930 if score ui_v mcpaint.calc matches 420..1670 run scoreboard players operation line mcpaint.calc = ui_v mcpaint.calc
execute if score ui_u mcpaint.calc matches 640..1930 if score ui_v mcpaint.calc matches 420..1670 run scoreboard players remove line mcpaint.calc 420
execute if score ui_u mcpaint.calc matches 640..1930 if score ui_v mcpaint.calc matches 420..1670 run scoreboard players set op mcpaint.calc -157
execute if score ui_u mcpaint.calc matches 640..1930 if score ui_v mcpaint.calc matches 420..1670 run scoreboard players operation line mcpaint.calc /= op mcpaint.calc
execute if score ui_u mcpaint.calc matches 640..1930 if score ui_v mcpaint.calc matches 420..1670 run scoreboard players add line mcpaint.calc 9
execute if score ui_u mcpaint.calc matches 640..1930 if score ui_v mcpaint.calc matches 420..1670 run data modify storage mcpaint:calc popup.clicked_line set from storage mcpaint:calc popup.filename
execute if score ui_u mcpaint.calc matches 640..1930 if score ui_v mcpaint.calc matches 420..1670 if score line mcpaint.calc <= max mcpaint.calc if score line mcpaint.calc matches 1 run data modify storage mcpaint:calc popup.clicked_line set from storage mcpaint:calc popup.current_page_texts[0]
execute if score ui_u mcpaint.calc matches 640..1930 if score ui_v mcpaint.calc matches 420..1670 if score line mcpaint.calc <= max mcpaint.calc if score line mcpaint.calc matches 2 run data modify storage mcpaint:calc popup.clicked_line set from storage mcpaint:calc popup.current_page_texts[1]
execute if score ui_u mcpaint.calc matches 640..1930 if score ui_v mcpaint.calc matches 420..1670 if score line mcpaint.calc <= max mcpaint.calc if score line mcpaint.calc matches 3 run data modify storage mcpaint:calc popup.clicked_line set from storage mcpaint:calc popup.current_page_texts[2]
execute if score ui_u mcpaint.calc matches 640..1930 if score ui_v mcpaint.calc matches 420..1670 if score line mcpaint.calc <= max mcpaint.calc if score line mcpaint.calc matches 4 run data modify storage mcpaint:calc popup.clicked_line set from storage mcpaint:calc popup.current_page_texts[3]
execute if score ui_u mcpaint.calc matches 640..1930 if score ui_v mcpaint.calc matches 420..1670 if score line mcpaint.calc <= max mcpaint.calc if score line mcpaint.calc matches 5 run data modify storage mcpaint:calc popup.clicked_line set from storage mcpaint:calc popup.current_page_texts[4]
execute if score ui_u mcpaint.calc matches 640..1930 if score ui_v mcpaint.calc matches 420..1670 if score line mcpaint.calc <= max mcpaint.calc if score line mcpaint.calc matches 6 run data modify storage mcpaint:calc popup.clicked_line set from storage mcpaint:calc popup.current_page_texts[5]
execute if score ui_u mcpaint.calc matches 640..1930 if score ui_v mcpaint.calc matches 420..1670 if score line mcpaint.calc <= max mcpaint.calc if score line mcpaint.calc matches 7 run data modify storage mcpaint:calc popup.clicked_line set from storage mcpaint:calc popup.current_page_texts[6]
execute if score ui_u mcpaint.calc matches 640..1930 if score ui_v mcpaint.calc matches 420..1670 if score line mcpaint.calc <= max mcpaint.calc if score line mcpaint.calc matches 8 run data modify storage mcpaint:calc popup.clicked_line set from storage mcpaint:calc popup.current_page_texts[7]
execute if score ui_u mcpaint.calc matches 640..1930 if score ui_v mcpaint.calc matches 420..1670 store success score different mcpaint.calc run data modify storage mcpaint:calc popup.filename set from storage mcpaint:calc popup.clicked_line
execute if score ui_u mcpaint.calc matches 640..1930 if score ui_v mcpaint.calc matches 420..1670 if score different mcpaint.calc matches 1 run data modify storage mcpaint:calc painter_command set value {command:"popup.load.select_work"}
execute if score ui_u mcpaint.calc matches 640..1930 if score ui_v mcpaint.calc matches 420..1670 if score different mcpaint.calc matches 1 run function mcpaint:painting_mode/sound/generic_button