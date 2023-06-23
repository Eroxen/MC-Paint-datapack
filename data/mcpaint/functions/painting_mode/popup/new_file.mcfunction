execute if entity @s[tag=mcpaint.player.debug] run tellraw @s [{"text":"NewFilePopup[u=","color":"aqua"},{"score":{"name":"ui_u","objective":"mcpaint.calc"}},{"text":",v="},{"score":{"name":"ui_v","objective":"mcpaint.calc"}},{"text":"]"}]

execute if score ui_u mcpaint.calc matches 1000..2000 if score ui_v mcpaint.calc matches ..300 run data modify storage mcpaint:calc painter_command set value {command:"popup.cancel"}
execute if score ui_u mcpaint.calc matches 1000..2000 if score ui_v mcpaint.calc matches ..300 run function mcpaint:painting_mode/sound/generic_button

execute if score ui_u mcpaint.calc matches 0..1000 if score ui_v mcpaint.calc matches ..300 run data modify storage mcpaint:calc painter_command set value {command:"popup.new_file.ok"}
execute if score ui_u mcpaint.calc matches 0..1000 if score ui_v mcpaint.calc matches ..300 run function mcpaint:painting_mode/sound/generic_button

# increase block width
execute if score ui_u mcpaint.calc matches 1175..1300 if score ui_v mcpaint.calc matches 1130..1300 store result score current_value mcpaint.calc run data get storage mcpaint:calc popup.width_blocks 1
execute if score ui_u mcpaint.calc matches 1175..1300 if score ui_v mcpaint.calc matches 1130..1300 run scoreboard players operation new_value mcpaint.calc = current_value mcpaint.calc
execute if score ui_u mcpaint.calc matches 1175..1300 if score ui_v mcpaint.calc matches 1130..1300 unless score @s mcpaint.sneak matches 1.. run scoreboard players add new_value mcpaint.calc 1
execute if score ui_u mcpaint.calc matches 1175..1300 if score ui_v mcpaint.calc matches 1130..1300 if score @s mcpaint.sneak matches 1.. run scoreboard players add new_value mcpaint.calc 10
execute if score ui_u mcpaint.calc matches 1175..1300 if score ui_v mcpaint.calc matches 1130..1300 if score new_value mcpaint.calc matches ..0 run scoreboard players set new_value mcpaint.calc 1
execute if score ui_u mcpaint.calc matches 1175..1300 if score ui_v mcpaint.calc matches 1130..1300 if score new_value mcpaint.calc matches 5.. run scoreboard players set new_value mcpaint.calc 4
execute if score ui_u mcpaint.calc matches 1175..1300 if score ui_v mcpaint.calc matches 1130..1300 unless score new_value mcpaint.calc = current_value mcpaint.calc store result storage mcpaint:calc popup.width_blocks int 1 run scoreboard players get new_value mcpaint.calc
execute if score ui_u mcpaint.calc matches 1175..1300 if score ui_v mcpaint.calc matches 1130..1300 unless score new_value mcpaint.calc = current_value mcpaint.calc store result storage mcpaint:calc popup.width_px int 16 run scoreboard players get new_value mcpaint.calc
execute if score ui_u mcpaint.calc matches 1175..1300 if score ui_v mcpaint.calc matches 1130..1300 unless score new_value mcpaint.calc = current_value mcpaint.calc run data modify storage mcpaint:calc painter_command set value {command:"popup.new_file.update"}
execute if score ui_u mcpaint.calc matches 1175..1300 if score ui_v mcpaint.calc matches 1130..1300 unless score new_value mcpaint.calc = current_value mcpaint.calc run function mcpaint:painting_mode/sound/generic_button

# increase px width
execute if score ui_u mcpaint.calc matches 1175..1300 if score ui_v mcpaint.calc matches 910..1080 store result score current_value mcpaint.calc run data get storage mcpaint:calc popup.width_px 1
execute if score ui_u mcpaint.calc matches 1175..1300 if score ui_v mcpaint.calc matches 910..1080 run scoreboard players operation new_value mcpaint.calc = current_value mcpaint.calc
execute if score ui_u mcpaint.calc matches 1175..1300 if score ui_v mcpaint.calc matches 910..1080 unless score @s mcpaint.sneak matches 1.. run scoreboard players add new_value mcpaint.calc 1
execute if score ui_u mcpaint.calc matches 1175..1300 if score ui_v mcpaint.calc matches 910..1080 if score @s mcpaint.sneak matches 1.. run scoreboard players add new_value mcpaint.calc 10
execute if score ui_u mcpaint.calc matches 1175..1300 if score ui_v mcpaint.calc matches 910..1080 if score new_value mcpaint.calc matches ..0 run scoreboard players set new_value mcpaint.calc 1
execute if score ui_u mcpaint.calc matches 1175..1300 if score ui_v mcpaint.calc matches 910..1080 if score new_value mcpaint.calc matches 65.. run scoreboard players set new_value mcpaint.calc 64
execute if score ui_u mcpaint.calc matches 1175..1300 if score ui_v mcpaint.calc matches 910..1080 unless score new_value mcpaint.calc = current_value mcpaint.calc store result storage mcpaint:calc popup.width_px int 1 run scoreboard players get new_value mcpaint.calc
execute if score ui_u mcpaint.calc matches 1175..1300 if score ui_v mcpaint.calc matches 910..1080 unless score new_value mcpaint.calc = current_value mcpaint.calc run data modify storage mcpaint:calc painter_command set value {command:"popup.new_file.update"}
execute if score ui_u mcpaint.calc matches 1175..1300 if score ui_v mcpaint.calc matches 910..1080 unless score new_value mcpaint.calc = current_value mcpaint.calc run function mcpaint:painting_mode/sound/generic_button


# decrease block width
execute if score ui_u mcpaint.calc matches 700..830 if score ui_v mcpaint.calc matches 1130..1300 store result score current_value mcpaint.calc run data get storage mcpaint:calc popup.width_blocks 1
execute if score ui_u mcpaint.calc matches 700..830 if score ui_v mcpaint.calc matches 1130..1300 run scoreboard players operation new_value mcpaint.calc = current_value mcpaint.calc
execute if score ui_u mcpaint.calc matches 700..830 if score ui_v mcpaint.calc matches 1130..1300 unless score @s mcpaint.sneak matches 1.. run scoreboard players remove new_value mcpaint.calc 1
execute if score ui_u mcpaint.calc matches 700..830 if score ui_v mcpaint.calc matches 1130..1300 if score @s mcpaint.sneak matches 1.. run scoreboard players remove new_value mcpaint.calc 10
execute if score ui_u mcpaint.calc matches 700..830 if score ui_v mcpaint.calc matches 1130..1300 if score new_value mcpaint.calc matches ..0 run scoreboard players set new_value mcpaint.calc 1
execute if score ui_u mcpaint.calc matches 700..830 if score ui_v mcpaint.calc matches 1130..1300 if score new_value mcpaint.calc matches 3.. run scoreboard players set new_value mcpaint.calc 2
execute if score ui_u mcpaint.calc matches 700..830 if score ui_v mcpaint.calc matches 1130..1300 unless score new_value mcpaint.calc = current_value mcpaint.calc store result storage mcpaint:calc popup.width_blocks int 1 run scoreboard players get new_value mcpaint.calc
execute if score ui_u mcpaint.calc matches 700..830 if score ui_v mcpaint.calc matches 1130..1300 unless score new_value mcpaint.calc = current_value mcpaint.calc store result storage mcpaint:calc popup.width_px int 16 run scoreboard players get new_value mcpaint.calc
execute if score ui_u mcpaint.calc matches 700..830 if score ui_v mcpaint.calc matches 1130..1300 unless score new_value mcpaint.calc = current_value mcpaint.calc run data modify storage mcpaint:calc painter_command set value {command:"popup.new_file.update"}
execute if score ui_u mcpaint.calc matches 700..830 if score ui_v mcpaint.calc matches 1130..1300 unless score new_value mcpaint.calc = current_value mcpaint.calc run function mcpaint:painting_mode/sound/generic_button

# decrease px width
execute if score ui_u mcpaint.calc matches 700..830 if score ui_v mcpaint.calc matches 910..1080 store result score current_value mcpaint.calc run data get storage mcpaint:calc popup.width_px 1
execute if score ui_u mcpaint.calc matches 700..830 if score ui_v mcpaint.calc matches 910..1080 run scoreboard players operation new_value mcpaint.calc = current_value mcpaint.calc
execute if score ui_u mcpaint.calc matches 700..830 if score ui_v mcpaint.calc matches 910..1080 unless score @s mcpaint.sneak matches 1.. run scoreboard players remove new_value mcpaint.calc 1
execute if score ui_u mcpaint.calc matches 700..830 if score ui_v mcpaint.calc matches 910..1080 if score @s mcpaint.sneak matches 1.. run scoreboard players remove new_value mcpaint.calc 10
execute if score ui_u mcpaint.calc matches 700..830 if score ui_v mcpaint.calc matches 910..1080 if score new_value mcpaint.calc matches ..0 run scoreboard players set new_value mcpaint.calc 1
execute if score ui_u mcpaint.calc matches 700..830 if score ui_v mcpaint.calc matches 910..1080 if score new_value mcpaint.calc matches 65.. run scoreboard players set new_value mcpaint.calc 64
execute if score ui_u mcpaint.calc matches 700..830 if score ui_v mcpaint.calc matches 910..1080 unless score new_value mcpaint.calc = current_value mcpaint.calc store result storage mcpaint:calc popup.width_px int 1 run scoreboard players get new_value mcpaint.calc
execute if score ui_u mcpaint.calc matches 700..830 if score ui_v mcpaint.calc matches 910..1080 unless score new_value mcpaint.calc = current_value mcpaint.calc run data modify storage mcpaint:calc painter_command set value {command:"popup.new_file.update"}
execute if score ui_u mcpaint.calc matches 700..830 if score ui_v mcpaint.calc matches 910..1080 unless score new_value mcpaint.calc = current_value mcpaint.calc run function mcpaint:painting_mode/sound/generic_button


# increase block height
execute if score ui_u mcpaint.calc matches 150..330 if score ui_v mcpaint.calc matches 770..900 store result score current_value mcpaint.calc run data get storage mcpaint:calc popup.height_blocks 1
execute if score ui_u mcpaint.calc matches 150..330 if score ui_v mcpaint.calc matches 770..900 run scoreboard players operation new_value mcpaint.calc = current_value mcpaint.calc
execute if score ui_u mcpaint.calc matches 150..330 if score ui_v mcpaint.calc matches 770..900 unless score @s mcpaint.sneak matches 1.. run scoreboard players add new_value mcpaint.calc 1
execute if score ui_u mcpaint.calc matches 150..330 if score ui_v mcpaint.calc matches 770..900 if score @s mcpaint.sneak matches 1.. run scoreboard players add new_value mcpaint.calc 10
execute if score ui_u mcpaint.calc matches 150..330 if score ui_v mcpaint.calc matches 770..900 if score new_value mcpaint.calc matches ..0 run scoreboard players set new_value mcpaint.calc 1
execute if score ui_u mcpaint.calc matches 150..330 if score ui_v mcpaint.calc matches 770..900 if score new_value mcpaint.calc matches 3.. run scoreboard players set new_value mcpaint.calc 2
execute if score ui_u mcpaint.calc matches 150..330 if score ui_v mcpaint.calc matches 770..900 unless score new_value mcpaint.calc = current_value mcpaint.calc store result storage mcpaint:calc popup.height_blocks int 1 run scoreboard players get new_value mcpaint.calc
execute if score ui_u mcpaint.calc matches 150..330 if score ui_v mcpaint.calc matches 770..900 unless score new_value mcpaint.calc = current_value mcpaint.calc store result storage mcpaint:calc popup.height_px int 16 run scoreboard players get new_value mcpaint.calc
execute if score ui_u mcpaint.calc matches 150..330 if score ui_v mcpaint.calc matches 770..900 unless score new_value mcpaint.calc = current_value mcpaint.calc run data modify storage mcpaint:calc painter_command set value {command:"popup.new_file.update"}
execute if score ui_u mcpaint.calc matches 150..330 if score ui_v mcpaint.calc matches 770..900 unless score new_value mcpaint.calc = current_value mcpaint.calc run function mcpaint:painting_mode/sound/generic_button

# increase px height
execute if score ui_u mcpaint.calc matches 500..670 if score ui_v mcpaint.calc matches 770..900 store result score current_value mcpaint.calc run data get storage mcpaint:calc popup.height_px 1
execute if score ui_u mcpaint.calc matches 500..670 if score ui_v mcpaint.calc matches 770..900 run scoreboard players operation new_value mcpaint.calc = current_value mcpaint.calc
execute if score ui_u mcpaint.calc matches 500..670 if score ui_v mcpaint.calc matches 770..900 unless score @s mcpaint.sneak matches 1.. run scoreboard players add new_value mcpaint.calc 1
execute if score ui_u mcpaint.calc matches 500..670 if score ui_v mcpaint.calc matches 770..900 if score @s mcpaint.sneak matches 1.. run scoreboard players add new_value mcpaint.calc 10
execute if score ui_u mcpaint.calc matches 500..670 if score ui_v mcpaint.calc matches 770..900 if score new_value mcpaint.calc matches ..0 run scoreboard players set new_value mcpaint.calc 1
execute if score ui_u mcpaint.calc matches 500..670 if score ui_v mcpaint.calc matches 770..900 if score new_value mcpaint.calc matches 65.. run scoreboard players set new_value mcpaint.calc 64
execute if score ui_u mcpaint.calc matches 500..670 if score ui_v mcpaint.calc matches 770..900 unless score new_value mcpaint.calc = current_value mcpaint.calc store result storage mcpaint:calc popup.height_px int 1 run scoreboard players get new_value mcpaint.calc
execute if score ui_u mcpaint.calc matches 500..670 if score ui_v mcpaint.calc matches 770..900 unless score new_value mcpaint.calc = current_value mcpaint.calc run data modify storage mcpaint:calc painter_command set value {command:"popup.new_file.update"}
execute if score ui_u mcpaint.calc matches 500..670 if score ui_v mcpaint.calc matches 770..900 unless score new_value mcpaint.calc = current_value mcpaint.calc run function mcpaint:painting_mode/sound/generic_button

# decrease block width
execute if score ui_u mcpaint.calc matches 150..330 if score ui_v mcpaint.calc matches 420..545 store result score current_value mcpaint.calc run data get storage mcpaint:calc popup.height_blocks 1
execute if score ui_u mcpaint.calc matches 150..330 if score ui_v mcpaint.calc matches 420..545 run scoreboard players operation new_value mcpaint.calc = current_value mcpaint.calc
execute if score ui_u mcpaint.calc matches 150..330 if score ui_v mcpaint.calc matches 420..545 unless score @s mcpaint.sneak matches 1.. run scoreboard players remove new_value mcpaint.calc 1
execute if score ui_u mcpaint.calc matches 150..330 if score ui_v mcpaint.calc matches 420..545 if score @s mcpaint.sneak matches 1.. run scoreboard players remove new_value mcpaint.calc 10
execute if score ui_u mcpaint.calc matches 150..330 if score ui_v mcpaint.calc matches 420..545 if score new_value mcpaint.calc matches ..0 run scoreboard players set new_value mcpaint.calc 1
execute if score ui_u mcpaint.calc matches 150..330 if score ui_v mcpaint.calc matches 420..545 if score new_value mcpaint.calc matches 3.. run scoreboard players set new_value mcpaint.calc 2
execute if score ui_u mcpaint.calc matches 150..330 if score ui_v mcpaint.calc matches 420..545 unless score new_value mcpaint.calc = current_value mcpaint.calc store result storage mcpaint:calc popup.height_blocks int 1 run scoreboard players get new_value mcpaint.calc
execute if score ui_u mcpaint.calc matches 150..330 if score ui_v mcpaint.calc matches 420..545 unless score new_value mcpaint.calc = current_value mcpaint.calc store result storage mcpaint:calc popup.height_px int 16 run scoreboard players get new_value mcpaint.calc
execute if score ui_u mcpaint.calc matches 150..330 if score ui_v mcpaint.calc matches 420..545 unless score new_value mcpaint.calc = current_value mcpaint.calc run data modify storage mcpaint:calc painter_command set value {command:"popup.new_file.update"}
execute if score ui_u mcpaint.calc matches 150..330 if score ui_v mcpaint.calc matches 420..545 unless score new_value mcpaint.calc = current_value mcpaint.calc run function mcpaint:painting_mode/sound/generic_button

# decrease px height
execute if score ui_u mcpaint.calc matches 500..670 if score ui_v mcpaint.calc matches 420..545 store result score current_value mcpaint.calc run data get storage mcpaint:calc popup.height_px 1
execute if score ui_u mcpaint.calc matches 500..670 if score ui_v mcpaint.calc matches 420..545 run scoreboard players operation new_value mcpaint.calc = current_value mcpaint.calc
execute if score ui_u mcpaint.calc matches 500..670 if score ui_v mcpaint.calc matches 420..545 unless score @s mcpaint.sneak matches 1.. run scoreboard players remove new_value mcpaint.calc 1
execute if score ui_u mcpaint.calc matches 500..670 if score ui_v mcpaint.calc matches 420..545 if score @s mcpaint.sneak matches 1.. run scoreboard players remove new_value mcpaint.calc 10
execute if score ui_u mcpaint.calc matches 500..670 if score ui_v mcpaint.calc matches 420..545 if score new_value mcpaint.calc matches ..0 run scoreboard players set new_value mcpaint.calc 1
execute if score ui_u mcpaint.calc matches 500..670 if score ui_v mcpaint.calc matches 420..545 if score new_value mcpaint.calc matches 65.. run scoreboard players set new_value mcpaint.calc 64
execute if score ui_u mcpaint.calc matches 500..670 if score ui_v mcpaint.calc matches 420..545 unless score new_value mcpaint.calc = current_value mcpaint.calc store result storage mcpaint:calc popup.height_px int 1 run scoreboard players get new_value mcpaint.calc
execute if score ui_u mcpaint.calc matches 500..670 if score ui_v mcpaint.calc matches 420..545 unless score new_value mcpaint.calc = current_value mcpaint.calc run data modify storage mcpaint:calc painter_command set value {command:"popup.new_file.update"}
execute if score ui_u mcpaint.calc matches 500..670 if score ui_v mcpaint.calc matches 420..545 unless score new_value mcpaint.calc = current_value mcpaint.calc run function mcpaint:painting_mode/sound/generic_button


execute if score ui_u mcpaint.calc matches 1630..1940 if score ui_v mcpaint.calc matches 1430..1740 unless data entity @s SelectedItem{id:"minecraft:writable_book"} run tellraw @s {"translate":"mcpaint.message.must_hold_writable_book"}
execute if score ui_u mcpaint.calc matches 1630..1940 if score ui_v mcpaint.calc matches 1430..1740 if data entity @s SelectedItem{id:"minecraft:writable_book"} run data modify storage mcpaint:calc popup.filename set from entity @s SelectedItem.tag.pages[0]
execute if score ui_u mcpaint.calc matches 1630..1940 if score ui_v mcpaint.calc matches 1430..1740 if data entity @s SelectedItem{id:"minecraft:writable_book"} run data modify storage mcpaint:calc painter_command set value {command:"popup.new_file.update"}
execute if score ui_u mcpaint.calc matches 1630..1940 if score ui_v mcpaint.calc matches 1430..1740 run function mcpaint:painting_mode/sound/generic_button