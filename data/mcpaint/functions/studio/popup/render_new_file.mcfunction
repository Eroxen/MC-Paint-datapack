data modify storage mcpaint:calc EntityData set value {Tags:["mcpaint.studio","mcpaint.studio.popup_element"],transformation:{translation:[0f,0f,0.5f],scale:[2f,2f,1f]}}
scoreboard players operation offset_x mcpaint.calc = base_x mcpaint.calc
scoreboard players add offset_x mcpaint.calc 500
scoreboard players operation offset_y mcpaint.calc = base_y mcpaint.calc
scoreboard players add offset_y mcpaint.calc 300
execute store result storage mcpaint:calc EntityData.transformation.translation[0] float 0.001 run scoreboard players get offset_x mcpaint.calc
execute store result storage mcpaint:calc EntityData.transformation.translation[1] float 0.001 run scoreboard players get offset_y mcpaint.calc
data modify storage mcpaint:calc EntityData.item set from storage mcpaint:calc custom_models.new_file_popup
function mcpaint:studio/popup/new_item_display
data modify entity @e[type=item_display,tag=mcpaint.studio.popup_element.new,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData

data modify storage mcpaint:calc EntityData set value {Tags:["mcpaint.studio","mcpaint.studio.popup_element"],transformation:{translation:[0f,0f,0f],scale:[1f,1f,1f]},text:'{"text":"A","font":"mcpaint:icon"}'}
scoreboard players operation offset_x mcpaint.calc = base_x mcpaint.calc
scoreboard players add offset_x mcpaint.calc 1270
scoreboard players operation offset_y mcpaint.calc = base_y mcpaint.calc
scoreboard players add offset_y mcpaint.calc 940
execute store result storage mcpaint:calc EntityData.transformation.translation[0] float 0.001 run scoreboard players get offset_x mcpaint.calc
execute store result storage mcpaint:calc EntityData.transformation.translation[1] float 0.001 run scoreboard players get offset_y mcpaint.calc
function mcpaint:studio/popup/new_text_display
data modify entity @e[type=text_display,tag=mcpaint.studio.popup_element.new,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData

data modify storage mcpaint:calc EntityData set value {Tags:["mcpaint.studio","mcpaint.studio.popup_element","mcpaint.studio.popup_element.filename"],transformation:{translation:[0f,0f,0f],scale:[0.5f,0.5f,1f]},text:'{"text":"","extra":[{"text":"p\\n","font":"mcpaint:ink"},{"nbt":"popup.filename","storage":"mcpaint:calc"}]}',alignment:"left",line_width:150,shadow:1b}
scoreboard players operation offset_x mcpaint.calc = base_x mcpaint.calc
scoreboard players add offset_x mcpaint.calc 580
scoreboard players operation offset_y mcpaint.calc = base_y mcpaint.calc
scoreboard players add offset_y mcpaint.calc 1000
execute store result storage mcpaint:calc EntityData.transformation.translation[0] float 0.001 run scoreboard players get offset_x mcpaint.calc
execute store result storage mcpaint:calc EntityData.transformation.translation[1] float 0.001 run scoreboard players get offset_y mcpaint.calc
function mcpaint:studio/popup/new_text_display
data modify entity @e[type=text_display,tag=mcpaint.studio.popup_element.new,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData

data modify storage mcpaint:calc EntityData set value {Tags:["mcpaint.studio","mcpaint.studio.popup_element","mcpaint.studio.popup_element.width_blocks"],transformation:{translation:[0f,0f,0f],scale:[0.5f,0.5f,1f]},text:'{"nbt":"popup.width_blocks","storage":"mcpaint:calc"}',shadow:1b}
scoreboard players operation offset_x mcpaint.calc = base_x mcpaint.calc
scoreboard players add offset_x mcpaint.calc 500
scoreboard players operation offset_y mcpaint.calc = base_y mcpaint.calc
scoreboard players add offset_y mcpaint.calc 650
execute store result storage mcpaint:calc EntityData.transformation.translation[0] float 0.001 run scoreboard players get offset_x mcpaint.calc
execute store result storage mcpaint:calc EntityData.transformation.translation[1] float 0.001 run scoreboard players get offset_y mcpaint.calc
function mcpaint:studio/popup/new_text_display
data modify entity @e[type=text_display,tag=mcpaint.studio.popup_element.new,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData

data modify storage mcpaint:calc EntityData set value {Tags:["mcpaint.studio","mcpaint.studio.popup_element","mcpaint.studio.popup_element.width_px"],transformation:{translation:[0f,0f,0f],scale:[0.5f,0.5f,1f]},text:'{"nbt":"popup.width_px","storage":"mcpaint:calc"}',shadow:1b}
scoreboard players operation offset_x mcpaint.calc = base_x mcpaint.calc
scoreboard players add offset_x mcpaint.calc 500
scoreboard players operation offset_y mcpaint.calc = base_y mcpaint.calc
scoreboard players add offset_y mcpaint.calc 420
execute store result storage mcpaint:calc EntityData.transformation.translation[0] float 0.001 run scoreboard players get offset_x mcpaint.calc
execute store result storage mcpaint:calc EntityData.transformation.translation[1] float 0.001 run scoreboard players get offset_y mcpaint.calc
function mcpaint:studio/popup/new_text_display
data modify entity @e[type=text_display,tag=mcpaint.studio.popup_element.new,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData

data modify storage mcpaint:calc EntityData set value {Tags:["mcpaint.studio","mcpaint.studio.popup_element","mcpaint.studio.popup_element.height_blocks"],transformation:{translation:[0f,0f,0f],scale:[0.5f,0.5f,1f]},text:'{"nbt":"popup.height_blocks","storage":"mcpaint:calc"}',shadow:1b}
scoreboard players operation offset_x mcpaint.calc = base_x mcpaint.calc
scoreboard players remove offset_x mcpaint.calc 270
scoreboard players operation offset_y mcpaint.calc = base_y mcpaint.calc
scoreboard players add offset_y mcpaint.calc 80
execute store result storage mcpaint:calc EntityData.transformation.translation[0] float 0.001 run scoreboard players get offset_x mcpaint.calc
execute store result storage mcpaint:calc EntityData.transformation.translation[1] float 0.001 run scoreboard players get offset_y mcpaint.calc
function mcpaint:studio/popup/new_text_display
data modify entity @e[type=text_display,tag=mcpaint.studio.popup_element.new,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData

data modify storage mcpaint:calc EntityData set value {Tags:["mcpaint.studio","mcpaint.studio.popup_element","mcpaint.studio.popup_element.height_px"],transformation:{translation:[0f,0f,0f],scale:[0.5f,0.5f,1f]},text:'{"nbt":"popup.height_px","storage":"mcpaint:calc"}',shadow:1b}
scoreboard players operation offset_x mcpaint.calc = base_x mcpaint.calc
scoreboard players add offset_x mcpaint.calc 70
scoreboard players operation offset_y mcpaint.calc = base_y mcpaint.calc
scoreboard players add offset_y mcpaint.calc 80
execute store result storage mcpaint:calc EntityData.transformation.translation[0] float 0.001 run scoreboard players get offset_x mcpaint.calc
execute store result storage mcpaint:calc EntityData.transformation.translation[1] float 0.001 run scoreboard players get offset_y mcpaint.calc
function mcpaint:studio/popup/new_text_display
data modify entity @e[type=text_display,tag=mcpaint.studio.popup_element.new,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData

data modify storage mcpaint:calc EntityData set value {Tags:["mcpaint.studio","mcpaint.studio.popup_element"],transformation:{translation:[0f,0f,0f],scale:[0.5f,0.5f,1f]},text:'{"translate":"mcpaint.popup.button.ok"}',shadow:1b}
scoreboard players operation offset_x mcpaint.calc = base_x mcpaint.calc
scoreboard players remove offset_x mcpaint.calc 10
scoreboard players operation offset_y mcpaint.calc = base_y mcpaint.calc
scoreboard players remove offset_y mcpaint.calc 440
execute store result storage mcpaint:calc EntityData.transformation.translation[0] float 0.001 run scoreboard players get offset_x mcpaint.calc
execute store result storage mcpaint:calc EntityData.transformation.translation[1] float 0.001 run scoreboard players get offset_y mcpaint.calc
function mcpaint:studio/popup/new_text_display
data modify entity @e[type=text_display,tag=mcpaint.studio.popup_element.new,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData

data modify storage mcpaint:calc EntityData set value {Tags:["mcpaint.studio","mcpaint.studio.popup_element"],transformation:{translation:[0f,0f,0f],scale:[0.5f,0.5f,1f]},text:'{"translate":"mcpaint.popup.button.cancel"}',shadow:1b}
scoreboard players operation offset_x mcpaint.calc = base_x mcpaint.calc
scoreboard players add offset_x mcpaint.calc 1010
scoreboard players operation offset_y mcpaint.calc = base_y mcpaint.calc
scoreboard players remove offset_y mcpaint.calc 440
execute store result storage mcpaint:calc EntityData.transformation.translation[0] float 0.001 run scoreboard players get offset_x mcpaint.calc
execute store result storage mcpaint:calc EntityData.transformation.translation[1] float 0.001 run scoreboard players get offset_y mcpaint.calc
function mcpaint:studio/popup/new_text_display
data modify entity @e[type=text_display,tag=mcpaint.studio.popup_element.new,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData

data modify storage mcpaint:calc EntityData set value {Tags:["mcpaint.studio","mcpaint.studio.popup_element"],transformation:{translation:[0f,0f,0f],scale:[0.5f,0.5f,1f]},text:'{"text":"","extra":[{"text":"p\\n","font":"mcpaint:ink"},{"translate":"mcpaint.popup.new_file.blocks","storage":"mcpaint:calc"}]}',alignment:"left",shadow:1b}
scoreboard players operation offset_x mcpaint.calc = base_x mcpaint.calc
scoreboard players add offset_x mcpaint.calc 1830
scoreboard players operation offset_y mcpaint.calc = base_y mcpaint.calc
scoreboard players add offset_y mcpaint.calc 650
execute store result storage mcpaint:calc EntityData.transformation.translation[0] float 0.001 run scoreboard players get offset_x mcpaint.calc
execute store result storage mcpaint:calc EntityData.transformation.translation[1] float 0.001 run scoreboard players get offset_y mcpaint.calc
function mcpaint:studio/popup/new_text_display
data modify entity @e[type=text_display,tag=mcpaint.studio.popup_element.new,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData

data modify storage mcpaint:calc EntityData set value {Tags:["mcpaint.studio","mcpaint.studio.popup_element"],transformation:{translation:[0f,0f,0f],scale:[0.5f,0.5f,1f]},text:'{"text":"","extra":[{"text":"p\\n","font":"mcpaint:ink"},{"translate":"mcpaint.popup.new_file.px","storage":"mcpaint:calc"}]}',alignment:"left",shadow:1b}
scoreboard players operation offset_x mcpaint.calc = base_x mcpaint.calc
scoreboard players add offset_x mcpaint.calc 1830
scoreboard players operation offset_y mcpaint.calc = base_y mcpaint.calc
scoreboard players add offset_y mcpaint.calc 420
execute store result storage mcpaint:calc EntityData.transformation.translation[0] float 0.001 run scoreboard players get offset_x mcpaint.calc
execute store result storage mcpaint:calc EntityData.transformation.translation[1] float 0.001 run scoreboard players get offset_y mcpaint.calc
function mcpaint:studio/popup/new_text_display
data modify entity @e[type=text_display,tag=mcpaint.studio.popup_element.new,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData