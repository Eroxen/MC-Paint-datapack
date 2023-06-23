# colour picker
data modify storage mcpaint:calc EntityData set value {translation:[0f,0f,-0.31f]}
execute store result score offset_x mcpaint.calc run data get entity @s data.ui.colour_picker.position[0] 1
execute store result score offset_y mcpaint.calc run data get entity @s data.ui.colour_picker.position[1] 1
execute store result score offset mcpaint.calc run data get entity @s data.ui.colour_picker.red 27.344
scoreboard players add offset mcpaint.calc 63
scoreboard players operation offset mcpaint.calc += offset_x mcpaint.calc
scoreboard players remove offset mcpaint.calc 487
execute store result storage mcpaint:calc EntityData.translation[0] float 0.001 run scoreboard players get offset mcpaint.calc
scoreboard players set offset mcpaint.calc 906
scoreboard players operation offset mcpaint.calc += offset_y mcpaint.calc
scoreboard players remove offset mcpaint.calc 500
execute store result storage mcpaint:calc EntityData.translation[1] float 0.001 run scoreboard players get offset mcpaint.calc
data modify entity @e[type=item_display,tag=mcpaint.studio.ui_element.colour_picker.red,distance=..0.1,limit=1] transformation merge from storage mcpaint:calc EntityData
execute store result score offset mcpaint.calc run data get entity @s data.ui.colour_picker.green 27.344
scoreboard players add offset mcpaint.calc 63
scoreboard players operation offset mcpaint.calc += offset_x mcpaint.calc
scoreboard players remove offset mcpaint.calc 487
execute store result storage mcpaint:calc EntityData.translation[0] float 0.001 run scoreboard players get offset mcpaint.calc
scoreboard players set offset mcpaint.calc 719
scoreboard players operation offset mcpaint.calc += offset_y mcpaint.calc
scoreboard players remove offset mcpaint.calc 500
execute store result storage mcpaint:calc EntityData.translation[1] float 0.001 run scoreboard players get offset mcpaint.calc
data modify entity @e[type=item_display,tag=mcpaint.studio.ui_element.colour_picker.green,distance=..0.1,limit=1] transformation merge from storage mcpaint:calc EntityData
execute store result score offset mcpaint.calc run data get entity @s data.ui.colour_picker.blue 27.344
scoreboard players add offset mcpaint.calc 63
scoreboard players operation offset mcpaint.calc += offset_x mcpaint.calc
scoreboard players remove offset mcpaint.calc 487
execute store result storage mcpaint:calc EntityData.translation[0] float 0.001 run scoreboard players get offset mcpaint.calc
scoreboard players set offset mcpaint.calc 531
scoreboard players operation offset mcpaint.calc += offset_y mcpaint.calc
scoreboard players remove offset mcpaint.calc 500
execute store result storage mcpaint:calc EntityData.translation[1] float 0.001 run scoreboard players get offset mcpaint.calc
data modify entity @e[type=item_display,tag=mcpaint.studio.ui_element.colour_picker.blue,distance=..0.1,limit=1] transformation merge from storage mcpaint:calc EntityData

execute store result score colour mcpaint.calc run data get entity @s data.ui.colour_picker.fg_colour
function mcpaint:pixel/get_colour
data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.colour_picker.fg_colour,distance=..0.1,limit=1] text set value '{"nbt":"pixel","storage":"mcpaint:calc","font":"mcpaint:ink","interpret":true}'
execute store result score colour mcpaint.calc run data get entity @s data.ui.colour_picker.bg_colour
function mcpaint:pixel/get_colour
data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.colour_picker.bg_colour,distance=..0.1,limit=1] text set value '{"nbt":"pixel","storage":"mcpaint:calc","font":"mcpaint:ink","interpret":true}'

execute if data entity @s data.ui.colour_picker{selected_colour:"fg"} run data modify entity @e[type=item_display,tag=mcpaint.studio.ui_element.colour_picker,distance=..0.1,limit=1] item set from storage mcpaint:calc custom_models.colour_picker_fg
execute if data entity @s data.ui.colour_picker{selected_colour:"bg"} run data modify entity @e[type=item_display,tag=mcpaint.studio.ui_element.colour_picker,distance=..0.1,limit=1] item set from storage mcpaint:calc custom_models.colour_picker_bg
execute if data entity @s data.ui.colour_picker{selected_colour:"transparant"} run data modify entity @e[type=item_display,tag=mcpaint.studio.ui_element.colour_picker,distance=..0.1,limit=1] item set from storage mcpaint:calc custom_models.colour_picker_transparent



# tools
execute if data entity @s data.ui.tools{selected_tool_data:{name:"colour_picker"}} run data modify entity @e[type=item_display,tag=mcpaint.studio.ui_element.tools,distance=..0.1,limit=1] item set from storage mcpaint:calc custom_models.tool_colour_picker
execute if data entity @s data.ui.tools{selected_tool_data:{name:"pen"}} run data modify entity @e[type=item_display,tag=mcpaint.studio.ui_element.tools,distance=..0.1,limit=1] item set from storage mcpaint:calc custom_models.tool_pen

data modify storage mcpaint:calc EntityData set value {transformation:{translation:[0f,0f,0.064f]},item:{id:"minecraft:air"}}
execute store result score offset_x mcpaint.calc run data get entity @s data.ui.tools.position[0] 1
execute store result score offset_y mcpaint.calc run data get entity @s data.ui.tools.position[1] 1
scoreboard players set offset mcpaint.calc 0
scoreboard players operation offset mcpaint.calc += offset_x mcpaint.calc
execute store result storage mcpaint:calc EntityData.transformation.translation[0] float 0.001 run scoreboard players get offset mcpaint.calc
execute store result score offset mcpaint.calc run data get entity @s data.ui.tools.selected_subtool -125
scoreboard players add offset mcpaint.calc 125
scoreboard players operation offset mcpaint.calc += offset_y mcpaint.calc
execute store result storage mcpaint:calc EntityData.transformation.translation[1] float 0.001 run scoreboard players get offset mcpaint.calc
execute store result score selected_subtool mcpaint.calc run data get entity @s data.ui.tools.selected_subtool 1
execute if score selected_subtool mcpaint.calc matches 1.. run data modify storage mcpaint:calc EntityData.item set from storage mcpaint:calc custom_models.selected_subtool
data modify entity @e[type=item_display,tag=mcpaint.studio.ui_element.tools.selected_subtool,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData



# filename
execute unless data entity @e[type=marker,tag=mcpaint.studio.marker,distance=..0.1,limit=1] data{unsaved_changes:1b} run data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.filename,distance=..0.1,limit=1] text set value '{"translate":"mcpaint.studio.filename","with":[{"nbt":"data.filename","entity":"@e[type=marker,tag=mcpaint.studio.marker,distance=..0.1,limit=1]"}]}'
execute if data entity @e[type=marker,tag=mcpaint.studio.marker,distance=..0.1,limit=1] data{unsaved_changes:1b} run data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.filename,distance=..0.1,limit=1] text set value '{"translate":"mcpaint.studio.filename.unsaved_changes","with":[{"nbt":"data.filename","entity":"@e[type=marker,tag=mcpaint.studio.marker,distance=..0.1,limit=1]"}]}'
function mcpaint:studio/ui/update_filesize


# file menu
data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.file_menu,distance=..0.1,limit=1] text set value '{"nbt":"data.ui.file_menu.lines[]","entity":"@e[type=marker,tag=mcpaint.studio.marker,distance=..0.1,limit=1]","separator":"\\n","interpret":true}'


# history
function mcpaint:studio/ui/update_history



