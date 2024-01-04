data modify storage mcpaint:calc filepath set value {author:[I;0,0,0,0],name:""}
execute if data entity @s data.painter.UUID run data modify storage mcpaint:calc filepath.author set from entity @s data.painter.UUID
data modify storage mcpaint:calc filepath.name set from storage mcpaint:calc popup.filename
data modify entity @s data.popups[0].filename set from storage mcpaint:calc popup.filename
function mcpaint:database/open_filepath
data modify storage mcpaint:calc api.canvas.canvas set value {}
execute if data storage mcpaint:database search{found_work:1b} run data modify storage mcpaint:calc api.canvas.canvas set from storage mcpaint:database search.work.canvas

data modify storage mcpaint:calc api.canvas.get_transformation set value {scale:0.503f,offset_x:-0.675f,offset_y:0.625f,offset_z:0f}
execute if score width mcpaint.calc matches 2 run data modify storage mcpaint:calc api.canvas.get_transformation.offset_x set value -0.175f
execute if score width mcpaint.calc matches 4 run data modify storage mcpaint:calc api.canvas.get_transformation.offset_x set value -0.175f
function mcpaint:canvas/api/get_transformation_contain

data modify storage mcpaint:calc EntityData set value {Tags:["mcpaint.studio","mcpaint.studio.popup_element","mcpaint.studio.popup_element.work_preview"],background:0,line_width:10000}
data modify storage mcpaint:calc EntityData.transformation set from storage mcpaint:calc api.canvas.get_transformation.transformation
data modify storage mcpaint:calc EntityData.text set from storage mcpaint:calc api.canvas.canvas.resolved_text
data modify storage mcpaint:calc EntityData.item set from storage mcpaint:calc custom_models.load_popup
data modify entity @e[type=text_display,tag=mcpaint.studio.popup_element.work_preview,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData
data modify entity @e[type=text_display,tag=mcpaint.studio.popup_element.work_name,distance=..0.1,limit=1] text set value '{"text":"","extra":[{"text":"pppp\\n","font":"mcpaint:ink"},{"storage":"mcpaint:calc","nbt":"popup.filename"}]}'