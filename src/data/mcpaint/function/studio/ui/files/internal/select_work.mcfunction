$data modify storage mcpaint:calc internal.studio.ui.data.filepath.name set from storage mcpaint:calc internal.studio.ui.data.filenames[$(selected_work)]
data modify storage mcpaint:calc internal.database.filepath set from storage mcpaint:calc internal.studio.ui.data.filepath
function mcpaint:database/api/get_work with storage mcpaint:calc internal.database.filepath
data modify storage mcpaint:calc api.canvas.canvas set from storage mcpaint:calc api.database.work.canvas
data modify storage mcpaint:calc api.canvas.get_transformation set value {scale:0.3125f,offset_x:0f,offset_y:0f,offset_z:0f}
data modify storage mcpaint:calc api.canvas.get_transformation.offset_x set from storage mcpaint:calc internal.studio.ui.data.canvas_origin[0]
data modify storage mcpaint:calc api.canvas.get_transformation.offset_y set from storage mcpaint:calc internal.studio.ui.data.canvas_origin[1]
data modify storage mcpaint:calc api.canvas.get_transformation.offset_z set from storage mcpaint:calc internal.studio.ui.data.canvas_origin[2]
function mcpaint:canvas/api/get_transformation_contain

execute store result score #studio.ui_element.selected mcpaint.calc run data get storage mcpaint:calc internal.studio.ui.data.selected_work 1

data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.files.canvas,distance=..0.1,limit=1] transformation set from storage mcpaint:calc api.canvas.get_transformation.transformation
execute unless score #studio.ui_element.selected mcpaint.calc matches ..-1 as @e[type=text_display,tag=mcpaint.studio.ui_element.files.canvas,distance=..0.1,limit=1] run function mcpaint:canvas/api/apply_to_text_display {axis_shading:0b}
execute if score #studio.ui_element.selected mcpaint.calc matches ..-1 run data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.files.canvas,distance=..0.1,limit=1] text set value '""'

execute if score #studio.ui_element.selected mcpaint.calc matches ..-1 run data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.files.selected,distance=..0.1,limit=1] text set value '""'
execute if score #studio.ui_element.selected mcpaint.calc matches 0 run data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.files.selected,distance=..0.1,limit=1] text set value '{"text":"F.F.B.\\n\\n\\n\\n\\n\\n\\n","font":"mcpaint:ink/fullbright","color":"dark_purple"}'
execute if score #studio.ui_element.selected mcpaint.calc matches 1 run data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.files.selected,distance=..0.1,limit=1] text set value '{"text":"F.F.B.\\n\\n\\n\\n\\n\\n","font":"mcpaint:ink/fullbright","color":"dark_purple"}'
execute if score #studio.ui_element.selected mcpaint.calc matches 2 run data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.files.selected,distance=..0.1,limit=1] text set value '{"text":"F.F.B.\\n\\n\\n\\n\\n","font":"mcpaint:ink/fullbright","color":"dark_purple"}'
execute if score #studio.ui_element.selected mcpaint.calc matches 3 run data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.files.selected,distance=..0.1,limit=1] text set value '{"text":"F.F.B.\\n\\n\\n\\n","font":"mcpaint:ink/fullbright","color":"dark_purple"}'
execute if score #studio.ui_element.selected mcpaint.calc matches 4 run data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.files.selected,distance=..0.1,limit=1] text set value '{"text":"F.F.B.\\n\\n\\n","font":"mcpaint:ink/fullbright","color":"dark_purple"}'
execute if score #studio.ui_element.selected mcpaint.calc matches 5 run data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.files.selected,distance=..0.1,limit=1] text set value '{"text":"F.F.B.\\n\\n","font":"mcpaint:ink/fullbright","color":"dark_purple"}'
execute if score #studio.ui_element.selected mcpaint.calc matches 6 run data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.files.selected,distance=..0.1,limit=1] text set value '{"text":"F.F.B.\\n","font":"mcpaint:ink/fullbright","color":"dark_purple"}'
execute if score #studio.ui_element.selected mcpaint.calc matches 7 run data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.files.selected,distance=..0.1,limit=1] text set value '{"text":"F.F.B.","font":"mcpaint:ink/fullbright","color":"dark_purple"}'
