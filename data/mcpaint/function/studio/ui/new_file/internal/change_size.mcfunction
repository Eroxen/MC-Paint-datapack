execute if score #studio.ui_element.focused_child mcpaint.calc matches 11..12 store result score #studio.ui_element.value mcpaint.calc run data get storage mcpaint:calc internal.studio.ui.data.width_blocks 1
execute if score #studio.ui_element.focused_child mcpaint.calc matches 13..14 store result score #studio.ui_element.value mcpaint.calc run data get storage mcpaint:calc internal.studio.ui.data.width_px 1
execute if score #studio.ui_element.focused_child mcpaint.calc matches 15..16 store result score #studio.ui_element.value mcpaint.calc run data get storage mcpaint:calc internal.studio.ui.data.height_blocks 1
execute if score #studio.ui_element.focused_child mcpaint.calc matches 17..18 store result score #studio.ui_element.value mcpaint.calc run data get storage mcpaint:calc internal.studio.ui.data.height_px 1

scoreboard players operation #studio.ui_element.temp mcpaint.calc = #studio.ui_element.focused_child mcpaint.calc
scoreboard players operation #studio.ui_element.temp mcpaint.calc %= #const.2 mcpaint.calc
execute if score #studio.ui_element.temp mcpaint.calc matches 0 run scoreboard players remove #studio.ui_element.value mcpaint.calc 1
execute if score #studio.ui_element.temp mcpaint.calc matches 1 run scoreboard players add #studio.ui_element.value mcpaint.calc 1

scoreboard players operation #studio.ui_element.temp mcpaint.calc = #studio.ui_element.focused_child mcpaint.calc
scoreboard players remove #studio.ui_element.temp mcpaint.calc 1
scoreboard players operation #studio.ui_element.temp mcpaint.calc /= #const.2 mcpaint.calc
scoreboard players operation #studio.ui_element.temp mcpaint.calc %= #const.2 mcpaint.calc
execute if score #studio.ui_element.value mcpaint.calc matches ..0 run return fail
execute if score #studio.ui_element.temp mcpaint.calc matches 1 if score #studio.ui_element.value mcpaint.calc matches 5.. run return fail
execute if score #studio.ui_element.temp mcpaint.calc matches 0 if score #studio.ui_element.value mcpaint.calc matches 65.. run return fail

execute if score #studio.ui_element.focused_child mcpaint.calc matches 11..12 store result storage mcpaint:calc internal.studio.ui.data.width_blocks int 1 run scoreboard players get #studio.ui_element.value mcpaint.calc
execute if score #studio.ui_element.focused_child mcpaint.calc matches 11..12 store result score #studio.ui_element.value mcpaint.calc run data get storage mcpaint:calc internal.studio.ui.data.width_blocks 16
execute if score #studio.ui_element.focused_child mcpaint.calc matches 11..14 store result storage mcpaint:calc internal.studio.ui.data.width_px int 1 run scoreboard players get #studio.ui_element.value mcpaint.calc
execute if score #studio.ui_element.focused_child mcpaint.calc matches 15..16 store result storage mcpaint:calc internal.studio.ui.data.height_blocks int 1 run scoreboard players get #studio.ui_element.value mcpaint.calc
execute if score #studio.ui_element.focused_child mcpaint.calc matches 15..16 store result score #studio.ui_element.value mcpaint.calc run data get storage mcpaint:calc internal.studio.ui.data.height_blocks 16
execute if score #studio.ui_element.focused_child mcpaint.calc matches 15..18 store result storage mcpaint:calc internal.studio.ui.data.height_px int 1 run scoreboard players get #studio.ui_element.value mcpaint.calc

execute if score #studio.ui_element.focused_child mcpaint.calc matches 11..12 run data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.new_file.width_blocks,distance=..0.1,limit=1] text set value '{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.width_blocks","color":"white"}'
execute if score #studio.ui_element.focused_child mcpaint.calc matches 11..14 run data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.new_file.width_px,distance=..0.1,limit=1] text set value '{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.width_px","color":"white"}'
execute if score #studio.ui_element.focused_child mcpaint.calc matches 15..16 run data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.new_file.height_blocks,distance=..0.1,limit=1] text set value '{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.height_blocks","color":"white"}'
execute if score #studio.ui_element.focused_child mcpaint.calc matches 15..18 run data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.new_file.height_px,distance=..0.1,limit=1] text set value '{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.height_px","color":"white"}'