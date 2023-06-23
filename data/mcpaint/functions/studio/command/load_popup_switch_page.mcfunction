execute store result score page mcpaint.calc run data get storage mcpaint:calc painter_command.page 1
scoreboard players operation i mcpaint.calc = page mcpaint.calc
data modify storage mcpaint:calc array_op set from storage mcpaint:calc popup.page_texts
execute if score i mcpaint.calc matches 2.. run function mcpaint:studio/command/load_popup_switch_page_loop

data modify storage mcpaint:calc popup.current_page_texts set from storage mcpaint:calc array_op[0]
execute store result storage mcpaint:calc popup.page int 1 run scoreboard players get page mcpaint.calc
execute store result storage mcpaint:calc popup.lines_on_page int 1 run data get storage mcpaint:calc popup.current_page_texts
data modify entity @s data.popups[0] set from storage mcpaint:calc popup




data modify storage mcpaint:calc padding set value '{"text":""}'
execute store result score lines mcpaint.calc run data get storage mcpaint:calc popup.lines_on_page 1
execute if score lines mcpaint.calc matches 1 run data modify storage mcpaint:calc padding set value '{"text":"\\n\\n\\n\\n\\n\\n\\n"}'
execute if score lines mcpaint.calc matches 2 run data modify storage mcpaint:calc padding set value '{"text":"\\n\\n\\n\\n\\n\\n"}'
execute if score lines mcpaint.calc matches 3 run data modify storage mcpaint:calc padding set value '{"text":"\\n\\n\\n\\n\\n"}'
execute if score lines mcpaint.calc matches 4 run data modify storage mcpaint:calc padding set value '{"text":"\\n\\n\\n\\n"}'
execute if score lines mcpaint.calc matches 5 run data modify storage mcpaint:calc padding set value '{"text":"\\n\\n\\n"}'
execute if score lines mcpaint.calc matches 6 run data modify storage mcpaint:calc padding set value '{"text":"\\n\\n"}'
execute if score lines mcpaint.calc matches 7 run data modify storage mcpaint:calc padding set value '{"text":"\\n"}'
data modify entity @e[type=text_display,tag=mcpaint.studio.popup_element.works,distance=..0.1,limit=1] text set value '{"text":"","extra":[{"text":"pppp\\n","font":"mcpaint:ink"},{"storage":"mcpaint:calc","nbt":"popup.current_page_texts[]","separator":"\\n"},{"storage":"mcpaint:calc","nbt":"padding","interpret":true}]}'

data modify entity @e[type=text_display,tag=mcpaint.studio.popup_element.page,distance=..0.1,limit=1] text set value '{"nbt":"popup.page","storage":"mcpaint:calc","extra":[{"text":" / "},{"nbt":"popup.pages","storage":"mcpaint:calc"}]}'