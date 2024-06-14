data modify storage mcpaint:calc internal.studio.ui.data set from entity @s data

data modify storage mcpaint:calc internal.studio.ui.data.canvas set from storage mcpaint:calc api.canvas.canvas

data modify storage mcpaint:calc api.canvas.get_transformation set value {scale:0.3125f,offset_x:0f,offset_y:0f,offset_z:0f}
data modify storage mcpaint:calc api.canvas.get_transformation.offset_x set from storage mcpaint:calc internal.studio.ui.data.canvas_origin[0]
data modify storage mcpaint:calc api.canvas.get_transformation.offset_y set from storage mcpaint:calc internal.studio.ui.data.canvas_origin[1]
data modify storage mcpaint:calc api.canvas.get_transformation.offset_z set from storage mcpaint:calc internal.studio.ui.data.canvas_origin[2]
function mcpaint:canvas/api/get_transformation_contain
say s
data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.import_code.canvas,distance=..0.1,limit=1] transformation set from storage mcpaint:calc api.canvas.get_transformation.transformation
execute unless score #studio.ui_element.selected mcpaint.calc matches ..-1 as @e[type=text_display,tag=mcpaint.studio.ui_element.import_code.canvas,distance=..0.1,limit=1] run function mcpaint:canvas/api/apply_to_text_display {axis_shading:0b}

execute unless data storage mcpaint:calc internal.studio.ui.data.filepath.name run function mcpaint:database/api/get_default_filename with storage mcpaint:calc internal.studio.ui.data.filepath
execute unless data storage mcpaint:calc internal.studio.ui.data.filepath.name run data modify storage mcpaint:calc internal.studio.ui.data.filepath.name set from storage mcpaint:calc api.database.filename
data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.import_code.filename,distance=..0.1,limit=1] text set value '{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.filepath.name"}'

execute on vehicle run data modify entity @s text set value '{"text":"\\u1001\\u0305","color":"white","font":"mcpaint:studio_ui"}'
data modify storage mcpaint:calc internal.studio.ui.data.can_ok set value 1b


data modify entity @s data set from storage mcpaint:calc internal.studio.ui.data