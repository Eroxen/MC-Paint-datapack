data modify storage mcpaint:calc padding set value '{"text":""}'
execute store result score lines mcpaint.calc run data get storage mcpaint:calc computer_render.work_names
execute if score lines mcpaint.calc matches 1 run data modify storage mcpaint:calc padding set value '{"text":"\\n\\n\\n\\n\\n\\n\\n"}'
execute if score lines mcpaint.calc matches 2 run data modify storage mcpaint:calc padding set value '{"text":"\\n\\n\\n\\n\\n\\n"}'
execute if score lines mcpaint.calc matches 3 run data modify storage mcpaint:calc padding set value '{"text":"\\n\\n\\n\\n\\n"}'
execute if score lines mcpaint.calc matches 4 run data modify storage mcpaint:calc padding set value '{"text":"\\n\\n\\n\\n"}'
execute if score lines mcpaint.calc matches 5 run data modify storage mcpaint:calc padding set value '{"text":"\\n\\n\\n"}'
execute if score lines mcpaint.calc matches 6 run data modify storage mcpaint:calc padding set value '{"text":"\\n\\n"}'
execute if score lines mcpaint.calc matches 7 run data modify storage mcpaint:calc padding set value '{"text":"\\n"}'

data modify storage mcpaint:calc EntityData set value {text:'{"text":"","extra":[{"text":"pppp\\n","font":"mcpaint:ink"},{"storage":"mcpaint:calc","nbt":"computer_render.work_names[]","separator":"\\n"},{"storage":"mcpaint:calc","nbt":"padding","interpret":true}]}',alignment:"left",line_width:1000}
data modify entity @e[type=text_display,tag=mcpaint.computer.text_display.files.filenames,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData


data modify storage mcpaint:calc api.canvas.canvas set from storage mcpaint:calc computer_render.canvas

data modify storage mcpaint:calc api.canvas.get_transformation set value {scale:0.252f,offset_x:-0.2515f,offset_y:0.2515f,offset_z:-0.0475f}
function mcpaint:canvas/api/get_transformation_contain
data modify storage mcpaint:calc EntityData set value {background:0,line_width:10000}
data modify storage mcpaint:calc EntityData.transformation set from storage mcpaint:calc api.canvas.get_transformation.transformation
data modify storage mcpaint:calc EntityData.text set from storage mcpaint:calc api.canvas.canvas.resolved_text
data modify entity @e[type=text_display,tag=mcpaint.computer.text_display.files.canvas,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData
