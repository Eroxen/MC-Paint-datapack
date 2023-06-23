data modify storage mcpaint:calc padding set value '{"text":"\\n\\n\\n\\n\\n\\n\\n\\n"}'
execute store result score selected_row mcpaint.calc run data get storage mcpaint:calc computer_render.selected_row
execute if score selected_row mcpaint.calc matches 0 run data modify storage mcpaint:calc padding set value '{"text":"\\n\\n\\n\\n\\n\\n\\n"}'
execute if score selected_row mcpaint.calc matches 1 run data modify storage mcpaint:calc padding set value '{"text":"\\n\\n\\n\\n\\n\\n"}'
execute if score selected_row mcpaint.calc matches 2 run data modify storage mcpaint:calc padding set value '{"text":"\\n\\n\\n\\n\\n"}'
execute if score selected_row mcpaint.calc matches 3 run data modify storage mcpaint:calc padding set value '{"text":"\\n\\n\\n\\n"}'
execute if score selected_row mcpaint.calc matches 4 run data modify storage mcpaint:calc padding set value '{"text":"\\n\\n\\n"}'
execute if score selected_row mcpaint.calc matches 5 run data modify storage mcpaint:calc padding set value '{"text":"\\n\\n"}'
execute if score selected_row mcpaint.calc matches 6 run data modify storage mcpaint:calc padding set value '{"text":"\\n"}'
execute if score selected_row mcpaint.calc matches 7 run data modify storage mcpaint:calc padding set value '{"text":""}'

data modify storage mcpaint:calc EntityData set value {text:'{"text":"","extra":[{"text":"pppp\\n","font":"mcpaint:ink"},{"text":"E","font":"mcpaint:ink","color":"blue"},{"storage":"mcpaint:calc","nbt":"padding","interpret":true}]}',alignment:"left",line_width:1000}
execute unless score selected_row mcpaint.calc matches 0..7 run data modify storage mcpaint:calc EntityData.text set value '{"text":""}'
data modify entity @e[type=text_display,tag=mcpaint.computer.text_display.files.selected_filename,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData

execute store result score selected_page mcpaint.calc run data get storage mcpaint:calc computer_render.selected_page
scoreboard players add selected_page mcpaint.calc 1
execute store result score total_pages mcpaint.calc run data get storage mcpaint:calc computer_render.total_pages

data modify storage mcpaint:calc EntityData set value {text:'{"text":"","extra":[{"score":{"name":"selected_page","objective":"mcpaint.calc"}},{"text":"/"},{"score":{"name":"total_pages","objective":"mcpaint.calc"}}]}',alignment:"center",line_width:1000}
data modify entity @e[type=text_display,tag=mcpaint.computer.text_display.files.page_number,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData