data modify storage mcpaint:calc ui set from entity @s data.ui.colour_picker
data modify storage mcpaint:calc ui_interact set from storage mcpaint:calc painter_command.button
data modify storage mcpaint:calc ui_interact.changed set value 0b

execute if data storage mcpaint:calc painter_command.colour_from_canvas run data modify storage mcpaint:calc ui_interact set value {changed:0b}
execute if data storage mcpaint:calc painter_command.colour_from_canvas unless data storage mcpaint:calc painter_command{colour_from_canvas:-1} if data storage mcpaint:calc ui{selected_colour:"transparant"} run data modify storage mcpaint:calc ui_interact.button set value "fg"
execute if data storage mcpaint:calc painter_command.colour_from_canvas unless data storage mcpaint:calc painter_command{colour_from_canvas:-1} if data storage mcpaint:calc ui{selected_colour:"transparant"} run data modify storage mcpaint:calc ui.fg_colour set from storage mcpaint:calc painter_command.colour_from_canvas
execute if data storage mcpaint:calc painter_command.colour_from_canvas unless data storage mcpaint:calc painter_command{colour_from_canvas:-1} if data storage mcpaint:calc ui{selected_colour:"bg"} run data modify storage mcpaint:calc ui_interact.button set value "bg"
execute if data storage mcpaint:calc painter_command.colour_from_canvas unless data storage mcpaint:calc painter_command{colour_from_canvas:-1} if data storage mcpaint:calc ui{selected_colour:"bg"} run data modify storage mcpaint:calc ui.bg_colour set from storage mcpaint:calc painter_command.colour_from_canvas
execute if data storage mcpaint:calc painter_command.colour_from_canvas unless data storage mcpaint:calc painter_command{colour_from_canvas:-1} if data storage mcpaint:calc ui{selected_colour:"fg"} run data modify storage mcpaint:calc ui_interact.button set value "fg"
execute if data storage mcpaint:calc painter_command.colour_from_canvas unless data storage mcpaint:calc painter_command{colour_from_canvas:-1} if data storage mcpaint:calc ui{selected_colour:"fg"} run data modify storage mcpaint:calc ui.fg_colour set from storage mcpaint:calc painter_command.colour_from_canvas
execute if data storage mcpaint:calc painter_command{colour_from_canvas:-1} run data modify storage mcpaint:calc ui_interact.button set value "transparant"

execute if data storage mcpaint:calc ui_interact{slider:1b} store result score slider_value mcpaint.calc run data get storage mcpaint:calc ui_interact.slider_value
execute if data storage mcpaint:calc ui_interact{slider:1b} if score slider_value mcpaint.calc matches ..-1 run scoreboard players set slider_value mcpaint.calc 0
execute if data storage mcpaint:calc ui_interact{slider:1b} if score slider_value mcpaint.calc matches 32.. run scoreboard players set slider_value mcpaint.calc 31

execute if data storage mcpaint:calc ui_interact{button:"red"} store result storage mcpaint:calc ui.red int 1 run scoreboard players get slider_value mcpaint.calc
execute if data storage mcpaint:calc ui_interact{button:"green"} store result storage mcpaint:calc ui.green int 1 run scoreboard players get slider_value mcpaint.calc
execute if data storage mcpaint:calc ui_interact{button:"blue"} store result storage mcpaint:calc ui.blue int 1 run scoreboard players get slider_value mcpaint.calc

execute if data storage mcpaint:calc ui_interact{button:"switch_fg_bg"} run data modify storage mcpaint:calc ui_interact.temp_colour set from storage mcpaint:calc ui.fg_colour
execute if data storage mcpaint:calc ui_interact{button:"switch_fg_bg"} run data modify storage mcpaint:calc ui.fg_colour set from storage mcpaint:calc ui.bg_colour
execute if data storage mcpaint:calc ui_interact{button:"switch_fg_bg"} run data modify storage mcpaint:calc ui.bg_colour set from storage mcpaint:calc ui_interact.temp_colour

execute if data storage mcpaint:calc ui_interact{button:"bg"} if data storage mcpaint:calc painter_command.held_dye run data modify storage mcpaint:calc ui.bg_colour set from storage mcpaint:calc painter_command.held_dye
execute if data storage mcpaint:calc ui_interact{button:"fg"} if data storage mcpaint:calc painter_command.held_dye run data modify storage mcpaint:calc ui.fg_colour set from storage mcpaint:calc painter_command.held_dye

execute if data storage mcpaint:calc ui_interact{button:"bg"} run data modify storage mcpaint:calc ui.selected_colour set value "bg"
execute if data storage mcpaint:calc ui_interact{button:"fg"} run data modify storage mcpaint:calc ui.selected_colour set value "fg"
execute if data storage mcpaint:calc ui_interact{button:"transparant"} run data modify storage mcpaint:calc ui.selected_colour set value "transparant"
execute if data storage mcpaint:calc ui_interact{slider:1b} if data storage mcpaint:calc ui{selected_colour:"transparant"} run data modify storage mcpaint:calc ui.selected_colour set value "fg"

scoreboard players set op mcpaint.calc 32
execute store result score colour mcpaint.calc run data get storage mcpaint:calc ui.red 1
scoreboard players operation colour mcpaint.calc *= op mcpaint.calc
execute store result score slider_value mcpaint.calc run data get storage mcpaint:calc ui.green 1
scoreboard players operation colour mcpaint.calc += slider_value mcpaint.calc
scoreboard players operation colour mcpaint.calc *= op mcpaint.calc
execute store result score slider_value mcpaint.calc run data get storage mcpaint:calc ui.blue 1
scoreboard players operation colour mcpaint.calc += slider_value mcpaint.calc

execute if data storage mcpaint:calc ui{selected_colour:"bg"} if data storage mcpaint:calc ui_interact{slider:1b} store result storage mcpaint:calc ui.bg_colour int 1 run scoreboard players get colour mcpaint.calc
execute if data storage mcpaint:calc ui{selected_colour:"fg"} if data storage mcpaint:calc ui_interact{slider:1b} store result storage mcpaint:calc ui.fg_colour int 1 run scoreboard players get colour mcpaint.calc

execute if data storage mcpaint:calc ui{selected_colour:"bg"} run data modify storage mcpaint:calc ui.ink_colour set from storage mcpaint:calc ui.bg_colour
execute if data storage mcpaint:calc ui{selected_colour:"fg"} run data modify storage mcpaint:calc ui.ink_colour set from storage mcpaint:calc ui.fg_colour
execute if data storage mcpaint:calc ui{selected_colour:"transparant"} run data modify storage mcpaint:calc ui.ink_colour set value -1

execute store result score colour mcpaint.calc run data get storage mcpaint:calc ui.ink_colour 1
scoreboard players operation blue mcpaint.calc = colour mcpaint.calc
scoreboard players operation blue mcpaint.calc %= op mcpaint.calc
scoreboard players operation colour mcpaint.calc /= op mcpaint.calc
scoreboard players operation green mcpaint.calc = colour mcpaint.calc
scoreboard players operation green mcpaint.calc %= op mcpaint.calc
scoreboard players operation colour mcpaint.calc /= op mcpaint.calc
scoreboard players operation red mcpaint.calc = colour mcpaint.calc

execute if data storage mcpaint:calc ui_interact{button:"bg"} run data modify storage mcpaint:calc ui_interact.set_sliders set value 1b
execute if data storage mcpaint:calc ui_interact{button:"fg"} run data modify storage mcpaint:calc ui_interact.set_sliders set value 1b
execute if data storage mcpaint:calc ui_interact{button:"switch_fg_bg"} unless data storage mcpaint:calc ui{selected_colour:"transparant"} run data modify storage mcpaint:calc ui_interact.set_sliders set value 1b
execute if data storage mcpaint:calc ui_interact{set_sliders:1b} store result storage mcpaint:calc ui.red int 1 run scoreboard players get red mcpaint.calc
execute if data storage mcpaint:calc ui_interact{set_sliders:1b} store result storage mcpaint:calc ui.green int 1 run scoreboard players get green mcpaint.calc
execute if data storage mcpaint:calc ui_interact{set_sliders:1b} store result storage mcpaint:calc ui.blue int 1 run scoreboard players get blue mcpaint.calc

execute if data storage mcpaint:calc painter_command{debug:1b} run data modify storage mcpaint:calc message set value '{"text":"ColourPicker","color":"light_purple","extra":[{"nbt":"ui","storage":"mcpaint:calc"}]}'
execute if data storage mcpaint:calc painter_command{debug:1b} run function mcpaint:studio/send_message_to_painter

execute if data storage mcpaint:calc ui_interact.button run data modify storage mcpaint:calc ui_interact.changed set value 1b
execute if data storage mcpaint:calc ui_interact{changed:1b} run data modify entity @s data.ui.colour_picker set from storage mcpaint:calc ui
execute if data storage mcpaint:calc ui_interact{changed:1b} run function mcpaint:studio/ui/sync