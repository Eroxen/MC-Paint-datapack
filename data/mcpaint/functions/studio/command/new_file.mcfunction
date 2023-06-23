function mcpaint:studio/popup/close_all

execute if data entity @s data.history run data remove entity @s data.history

execute store result score canvas_width_blocks mcpaint.calc run data get storage mcpaint:calc popup.width_blocks
execute store result score canvas_height_blocks mcpaint.calc run data get storage mcpaint:calc popup.height_blocks
execute store result score canvas_width_px mcpaint.calc run data get storage mcpaint:calc popup.width_px
execute store result score canvas_height_px mcpaint.calc run data get storage mcpaint:calc popup.height_px
function mcpaint:canvas/create_empty_canvas
data modify entity @s data.canvas set from storage mcpaint:calc canvas
data modify entity @s data.filename set from storage mcpaint:calc popup.filename
data modify entity @s data.unsaved_changes set value 0b
function mcpaint:studio/update_text_display

function mcpaint:custom_painting/scale_and_offset
data modify storage mcpaint:calc EntityData set value {scale:[1f,1f,1f],translation:[0f,0f,-0.4375f]}
execute store result storage mcpaint:calc EntityData.scale[0] float 0.00009766 run scoreboard players get scale_x mcpaint.calc
execute store result storage mcpaint:calc EntityData.scale[1] float 0.00009766 run scoreboard players get scale_y mcpaint.calc
execute store result storage mcpaint:calc EntityData.translation[0] float -0.000009766 run scoreboard players get offset_x mcpaint.calc
execute store result storage mcpaint:calc EntityData.translation[1] float -0.000009766 run scoreboard players get offset_y mcpaint.calc
data modify entity @e[type=text_display,tag=mcpaint.studio.text_display,distance=..0.1,limit=1] transformation merge from storage mcpaint:calc EntityData

scoreboard players operation width mcpaint.calc = canvas_width_blocks mcpaint.calc
scoreboard players operation height mcpaint.calc = canvas_height_blocks mcpaint.calc

function mcpaint:studio/change_size/start