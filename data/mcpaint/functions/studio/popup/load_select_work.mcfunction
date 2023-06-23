data modify storage mcpaint:calc filepath set value {author:[I;0,0,0,0],name:""}
execute if data entity @s data.painter.UUID run data modify storage mcpaint:calc filepath.author set from entity @s data.painter.UUID
data modify storage mcpaint:calc filepath.name set from storage mcpaint:calc popup.filename
data modify entity @s data.popups[0].filename set from storage mcpaint:calc popup.filename
function mcpaint:database/open_filepath
data modify storage mcpaint:calc canvas set value {}
execute if data storage mcpaint:database search{found_work:1b} run data modify storage mcpaint:calc canvas set from storage mcpaint:database search.work.canvas
function mcpaint:canvas/get_info

scoreboard players operation scale_blocks mcpaint.calc = canvas_width_blocks mcpaint.calc
scoreboard players operation scale_blocks mcpaint.calc > canvas_height_blocks mcpaint.calc


scoreboard players set scale_factor mcpaint.calc 500
scoreboard players set op mcpaint.calc 1000

scoreboard players set scale_x mcpaint.calc 40960
scoreboard players operation scale_x mcpaint.calc *= canvas_width_blocks mcpaint.calc
scoreboard players operation scale_x mcpaint.calc /= canvas_width_px mcpaint.calc
scoreboard players operation scale_x mcpaint.calc /= scale_blocks mcpaint.calc
scoreboard players operation scale_x mcpaint.calc *= scale_factor mcpaint.calc
scoreboard players operation scale_x mcpaint.calc /= op mcpaint.calc

scoreboard players set scale_y mcpaint.calc 40960
scoreboard players operation scale_y mcpaint.calc *= canvas_height_blocks mcpaint.calc
scoreboard players operation scale_y mcpaint.calc /= canvas_height_px mcpaint.calc
scoreboard players operation scale_y mcpaint.calc /= scale_blocks mcpaint.calc
scoreboard players operation scale_y mcpaint.calc *= scale_factor mcpaint.calc
scoreboard players operation scale_y mcpaint.calc /= op mcpaint.calc

scoreboard players set offset_x mcpaint.calc 10240
scoreboard players operation offset_x mcpaint.calc /= canvas_width_px mcpaint.calc
scoreboard players operation offset_x mcpaint.calc *= scale_factor mcpaint.calc
scoreboard players operation offset_x mcpaint.calc /= op mcpaint.calc
scoreboard players add offset_x mcpaint.calc 69000

scoreboard players set offset_y mcpaint.calc 10240
scoreboard players operation offset_y mcpaint.calc /= canvas_height_px mcpaint.calc
scoreboard players operation offset_y mcpaint.calc *= scale_factor mcpaint.calc
scoreboard players operation offset_y mcpaint.calc /= op mcpaint.calc
scoreboard players remove offset_y mcpaint.calc 38300

scoreboard players set offset_y2 mcpaint.calc 50000
scoreboard players operation offset_y2 mcpaint.calc *= canvas_height_blocks mcpaint.calc
scoreboard players operation offset_y2 mcpaint.calc /= scale_blocks mcpaint.calc
scoreboard players remove offset_y2 mcpaint.calc 50000
scoreboard players operation offset_y2 mcpaint.calc *= scale_factor mcpaint.calc
scoreboard players operation offset_y2 mcpaint.calc /= op mcpaint.calc
scoreboard players operation offset_y mcpaint.calc += offset_y2 mcpaint.calc

execute store result score base_x mcpaint.calc run data get storage mcpaint:calc popup.position[0] 102
execute store result score base_y mcpaint.calc run data get storage mcpaint:calc popup.position[1] 102
scoreboard players operation offset_x mcpaint.calc -= base_x mcpaint.calc
scoreboard players operation offset_y mcpaint.calc -= base_y mcpaint.calc
scoreboard players remove offset_x mcpaint.calc 50900
scoreboard players remove offset_y mcpaint.calc 30500

data modify storage mcpaint:calc EntityData set value {Tags:["mcpaint.studio","mcpaint.studio.popup_element","mcpaint.studio.popup_element.work_preview"],transformation:{translation:[0f,0f,0f],scale:[2f,2f,1f]},background:0,line_width:10000}
execute store result storage mcpaint:calc EntityData.transformation.scale[0] float 0.00009766 run scoreboard players get scale_x mcpaint.calc
execute store result storage mcpaint:calc EntityData.transformation.scale[1] float 0.00009766 run scoreboard players get scale_y mcpaint.calc
execute store result storage mcpaint:calc EntityData.transformation.translation[0] float -0.000009766 run scoreboard players get offset_x mcpaint.calc
execute store result storage mcpaint:calc EntityData.transformation.translation[1] float -0.000009766 run scoreboard players get offset_y mcpaint.calc
data modify storage mcpaint:calc EntityData.text set from storage mcpaint:calc canvas.resolved_text
data modify storage mcpaint:calc EntityData.item set from storage mcpaint:calc custom_models.load_popup
data modify entity @e[type=text_display,tag=mcpaint.studio.popup_element.work_preview,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData
data modify entity @e[type=text_display,tag=mcpaint.studio.popup_element.work_name,distance=..0.1,limit=1] text set value '{"text":"","extra":[{"text":"pppp\\n","font":"mcpaint:ink"},{"storage":"mcpaint:calc","nbt":"popup.filename"}]}'