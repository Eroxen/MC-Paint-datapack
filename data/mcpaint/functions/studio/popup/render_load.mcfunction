data modify storage mcpaint:calc EntityData set value {Tags:["mcpaint.studio","mcpaint.studio.popup_element"],transformation:{translation:[0f,0f,0.5f],scale:[2f,2f,1f]}}
scoreboard players operation offset_x mcpaint.calc = base_x mcpaint.calc
scoreboard players add offset_x mcpaint.calc 500
scoreboard players operation offset_y mcpaint.calc = base_y mcpaint.calc
scoreboard players add offset_y mcpaint.calc 500
execute store result storage mcpaint:calc EntityData.transformation.translation[0] float 0.001 run scoreboard players get offset_x mcpaint.calc
execute store result storage mcpaint:calc EntityData.transformation.translation[1] float 0.001 run scoreboard players get offset_y mcpaint.calc
data modify storage mcpaint:calc EntityData.item set from storage mcpaint:calc custom_models.load_popup
function mcpaint:studio/popup/new_item_display
data modify entity @e[type=item_display,tag=mcpaint.studio.popup_element.new,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData

data modify storage mcpaint:calc EntityData set value {Tags:["mcpaint.studio","mcpaint.studio.popup_element","mcpaint.studio.popup_element.page"],transformation:{translation:[0f,0f,0f],scale:[0.625f,0.625f,1f]},text:'{"nbt":"popup.page","storage":"mcpaint:calc","extra":[{"text":" / "},{"nbt":"popup.pages","storage":"mcpaint:calc"}]}',shadow:1b}
scoreboard players operation offset_x mcpaint.calc = base_x mcpaint.calc
scoreboard players remove offset_x mcpaint.calc 200
scoreboard players operation offset_y mcpaint.calc = base_y mcpaint.calc
scoreboard players add offset_y mcpaint.calc 200
execute store result storage mcpaint:calc EntityData.transformation.translation[0] float 0.001 run scoreboard players get offset_x mcpaint.calc
execute store result storage mcpaint:calc EntityData.transformation.translation[1] float 0.001 run scoreboard players get offset_y mcpaint.calc
function mcpaint:studio/popup/new_text_display
data modify entity @e[type=text_display,tag=mcpaint.studio.popup_element.new,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData

data modify storage mcpaint:calc padding set value '{"text":""}'
execute store result score lines mcpaint.calc run data get storage mcpaint:calc popup.lines_on_page 1
execute if score lines mcpaint.calc matches 1 run data modify storage mcpaint:calc padding set value '{"text":"\\n\\n\\n\\n\\n\\n\\n"}'
execute if score lines mcpaint.calc matches 2 run data modify storage mcpaint:calc padding set value '{"text":"\\n\\n\\n\\n\\n\\n"}'
execute if score lines mcpaint.calc matches 3 run data modify storage mcpaint:calc padding set value '{"text":"\\n\\n\\n\\n\\n"}'
execute if score lines mcpaint.calc matches 4 run data modify storage mcpaint:calc padding set value '{"text":"\\n\\n\\n\\n"}'
execute if score lines mcpaint.calc matches 5 run data modify storage mcpaint:calc padding set value '{"text":"\\n\\n\\n"}'
execute if score lines mcpaint.calc matches 6 run data modify storage mcpaint:calc padding set value '{"text":"\\n\\n"}'
execute if score lines mcpaint.calc matches 7 run data modify storage mcpaint:calc padding set value '{"text":"\\n"}'

data modify storage mcpaint:calc EntityData set value {Tags:["mcpaint.studio","mcpaint.studio.popup_element","mcpaint.studio.popup_element.works"],transformation:{translation:[0f,0f,0f],scale:[0.625f,0.625f,1f]},text:'{"text":"","extra":[{"text":"pppp\\n","font":"mcpaint:ink"},{"storage":"mcpaint:calc","nbt":"popup.current_page_texts[]","separator":"\\n"},{"storage":"mcpaint:calc","nbt":"padding","interpret":true}]}',alignment:"left",shadow:1b,line_width:1000}
scoreboard players operation offset_x mcpaint.calc = base_x mcpaint.calc
scoreboard players add offset_x mcpaint.calc 5140
scoreboard players operation offset_y mcpaint.calc = base_y mcpaint.calc
scoreboard players remove offset_y mcpaint.calc 90
execute store result storage mcpaint:calc EntityData.transformation.translation[0] float 0.001 run scoreboard players get offset_x mcpaint.calc
execute store result storage mcpaint:calc EntityData.transformation.translation[1] float 0.001 run scoreboard players get offset_y mcpaint.calc
function mcpaint:studio/popup/new_text_display
data modify entity @e[type=text_display,tag=mcpaint.studio.popup_element.new,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData

data modify storage mcpaint:calc EntityData set value {Tags:["mcpaint.studio","mcpaint.studio.popup_element","mcpaint.studio.popup_element.work_name"],transformation:{translation:[0f,0f,0f],scale:[0.625f,0.625f,1f]},text:'{"text":"","extra":[{"text":"pppp\\n","font":"mcpaint:ink"},{"storage":"mcpaint:calc","nbt":"popup.filename"}]}',alignment:"left",shadow:1b,line_width:1000}
scoreboard players operation offset_x mcpaint.calc = base_x mcpaint.calc
scoreboard players add offset_x mcpaint.calc 4570
scoreboard players operation offset_y mcpaint.calc = base_y mcpaint.calc
scoreboard players add offset_y mcpaint.calc 1230
execute store result storage mcpaint:calc EntityData.transformation.translation[0] float 0.001 run scoreboard players get offset_x mcpaint.calc
execute store result storage mcpaint:calc EntityData.transformation.translation[1] float 0.001 run scoreboard players get offset_y mcpaint.calc
function mcpaint:studio/popup/new_text_display
data modify entity @e[type=text_display,tag=mcpaint.studio.popup_element.new,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData

function mcpaint:studio/popup/new_text_display
data merge entity @e[type=text_display,tag=mcpaint.studio.popup_element.new,distance=..0.1,limit=1] {Tags:["mcpaint.studio","mcpaint.studio.popup_element","mcpaint.studio.popup_element.work_preview"]}


data modify storage mcpaint:calc EntityData set value {Tags:["mcpaint.studio","mcpaint.studio.popup_element"],transformation:{translation:[0f,0f,0f],scale:[0.625f,0.625f,1f]},text:'{"translate":"mcpaint.popup.button.ok"}',shadow:1b}
scoreboard players operation offset_x mcpaint.calc = base_x mcpaint.calc
scoreboard players remove offset_x mcpaint.calc 10
scoreboard players operation offset_y mcpaint.calc = base_y mcpaint.calc
scoreboard players remove offset_y mcpaint.calc 430
execute store result storage mcpaint:calc EntityData.transformation.translation[0] float 0.001 run scoreboard players get offset_x mcpaint.calc
execute store result storage mcpaint:calc EntityData.transformation.translation[1] float 0.001 run scoreboard players get offset_y mcpaint.calc
function mcpaint:studio/popup/new_text_display
data modify entity @e[type=text_display,tag=mcpaint.studio.popup_element.new,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData

data modify storage mcpaint:calc EntityData set value {Tags:["mcpaint.studio","mcpaint.studio.popup_element"],transformation:{translation:[0f,0f,0f],scale:[0.625f,0.625f,1f]},text:'{"translate":"mcpaint.popup.button.cancel"}',shadow:1b}
scoreboard players operation offset_x mcpaint.calc = base_x mcpaint.calc
scoreboard players add offset_x mcpaint.calc 1010
scoreboard players operation offset_y mcpaint.calc = base_y mcpaint.calc
scoreboard players remove offset_y mcpaint.calc 430
execute store result storage mcpaint:calc EntityData.transformation.translation[0] float 0.001 run scoreboard players get offset_x mcpaint.calc
execute store result storage mcpaint:calc EntityData.transformation.translation[1] float 0.001 run scoreboard players get offset_y mcpaint.calc
function mcpaint:studio/popup/new_text_display
data modify entity @e[type=text_display,tag=mcpaint.studio.popup_element.new,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData