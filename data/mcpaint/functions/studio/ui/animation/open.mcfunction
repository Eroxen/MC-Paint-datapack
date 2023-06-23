# colour picker
execute store result score ui_x mcpaint.calc run data get entity @s data.ui.colour_picker.position[0] 1
execute store result score ui_y mcpaint.calc run data get entity @s data.ui.colour_picker.position[1] 1
data modify storage mcpaint:calc EntityData set value {transformation:{translation:[0f,0f,0.0625f],scale:[1f, 1f, 1f]},start_interpolation:0,interpolation_duration:10}
execute store result storage mcpaint:calc EntityData.transformation.translation[0] float 0.001 run scoreboard players get ui_x mcpaint.calc
execute store result storage mcpaint:calc EntityData.transformation.translation[1] float 0.001 run scoreboard players get ui_y mcpaint.calc
data modify entity @e[type=item_display,tag=mcpaint.studio.ui_element.colour_picker,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData

data modify storage mcpaint:calc EntityData set value {transformation:{translation:[0f,0f,-0.436f],scale:[0.75f, 0.75f, 0.75f]},start_interpolation:0,interpolation_duration:10}
scoreboard players remove ui_x mcpaint.calc 302
scoreboard players remove ui_y mcpaint.calc 333
execute store result storage mcpaint:calc EntityData.transformation.translation[0] float 0.001 run scoreboard players get ui_x mcpaint.calc
execute store result storage mcpaint:calc EntityData.transformation.translation[1] float 0.001 run scoreboard players get ui_y mcpaint.calc
data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.colour_picker.fg_colour,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData

data modify storage mcpaint:calc EntityData set value {transformation:{translation:[0f,0f,-0.437f],scale:[0.75f, 0.75f, 0.75f]},start_interpolation:0,interpolation_duration:10}
scoreboard players add ui_x mcpaint.calc 125
scoreboard players remove ui_y mcpaint.calc 125
execute store result storage mcpaint:calc EntityData.transformation.translation[0] float 0.001 run scoreboard players get ui_x mcpaint.calc
execute store result storage mcpaint:calc EntityData.transformation.translation[1] float 0.001 run scoreboard players get ui_y mcpaint.calc
data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.colour_picker.bg_colour,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData

data merge entity @e[type=item_display,tag=mcpaint.studio.ui_element.colour_picker.red,distance=..0.1,limit=1] {start_interpolation:0,interpolation_duration:10}
data merge entity @e[type=item_display,tag=mcpaint.studio.ui_element.colour_picker.green,distance=..0.1,limit=1] {start_interpolation:0,interpolation_duration:10}
data merge entity @e[type=item_display,tag=mcpaint.studio.ui_element.colour_picker.blue,distance=..0.1,limit=1] {start_interpolation:0,interpolation_duration:10}
data merge entity @e[type=item_display,tag=mcpaint.studio.ui_element.colour_picker.selected_colour,distance=..0.1,limit=1] {start_interpolation:0,interpolation_duration:10}


# tools
execute store result score ui_x mcpaint.calc run data get entity @s data.ui.tools.position[0] 1
execute store result score ui_y mcpaint.calc run data get entity @s data.ui.tools.position[1] 1
data modify storage mcpaint:calc EntityData set value {transformation:{translation:[0f,0f,0.0625f],scale:[1f, 1f, 1f]},start_interpolation:0,interpolation_duration:10}
execute store result storage mcpaint:calc EntityData.transformation.translation[0] float 0.001 run scoreboard players get ui_x mcpaint.calc
execute store result storage mcpaint:calc EntityData.transformation.translation[1] float 0.001 run scoreboard players get ui_y mcpaint.calc
data modify entity @e[type=item_display,tag=mcpaint.studio.ui_element.tools,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData

data merge entity @e[type=item_display,tag=mcpaint.studio.ui_element.tools.selected_subtool,distance=..0.1,limit=1] {start_interpolation:0,interpolation_duration:10}


# filename
execute store result score ui_x mcpaint.calc run data get entity @s data.ui.filename.position[0] 1
execute store result score ui_y mcpaint.calc run data get entity @s data.ui.filename.position[1] 1
data modify storage mcpaint:calc EntityData set value {transformation:{translation:[0f,0f,-0.437f]},start_interpolation:0,interpolation_duration:10}
scoreboard players remove ui_x mcpaint.calc 500
scoreboard players remove ui_y mcpaint.calc 500
execute store result storage mcpaint:calc EntityData.transformation.translation[0] float 0.001 run scoreboard players get ui_x mcpaint.calc
execute store result storage mcpaint:calc EntityData.transformation.translation[1] float 0.001 run scoreboard players get ui_y mcpaint.calc
data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.filename,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData
scoreboard players remove ui_y mcpaint.calc 50
execute store result storage mcpaint:calc EntityData.transformation.translation[1] float 0.001 run scoreboard players get ui_y mcpaint.calc
data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.filename.size,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData


# file menu
execute store result score ui_x mcpaint.calc run data get entity @s data.ui.file_menu.position[0] 1
execute store result score ui_y mcpaint.calc run data get entity @s data.ui.file_menu.position[1] 1
scoreboard players remove ui_y mcpaint.calc 500
data modify storage mcpaint:calc EntityData set value {transformation:{translation:[0f,0f,-0.437f],scale:[0.5f,0.5f,1f]},start_interpolation:0,interpolation_duration:10}
execute store result storage mcpaint:calc EntityData.transformation.translation[0] float 0.001 run scoreboard players get ui_x mcpaint.calc
execute store result storage mcpaint:calc EntityData.transformation.translation[1] float 0.001 run scoreboard players get ui_y mcpaint.calc
data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.file_menu,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData


# history
execute store result score ui_x mcpaint.calc run data get entity @s data.ui.history.position[0] 1
execute store result score ui_y mcpaint.calc run data get entity @s data.ui.history.position[1] 1
data modify storage mcpaint:calc EntityData set value {transformation:{translation:[0f,0f,0.0625f],scale:[1f, 1f, 1f]},start_interpolation:0,interpolation_duration:10}
execute store result storage mcpaint:calc EntityData.transformation.translation[0] float 0.001 run scoreboard players get ui_x mcpaint.calc
execute store result storage mcpaint:calc EntityData.transformation.translation[1] float 0.001 run scoreboard players get ui_y mcpaint.calc
data modify entity @e[type=item_display,tag=mcpaint.studio.ui_element.history.bg,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData
data modify storage mcpaint:calc EntityData.transformation.translation[2] set value 0.064f
data modify entity @e[type=item_display,tag=mcpaint.studio.ui_element.history.undo,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData
data modify entity @e[type=item_display,tag=mcpaint.studio.ui_element.history.redo,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData



function mcpaint:studio/ui/dynamic_elements

data remove entity @s data.animation
scoreboard players reset @s mcpaint.calc