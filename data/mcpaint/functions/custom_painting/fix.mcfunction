data modify storage mcpaint:calc filepath set from entity @s data.drop_item.tag.EntityTag.Item.tag.mcpaint.filepath
function mcpaint:database/open_filepath
data modify storage mcpaint:calc canvas set from storage mcpaint:database search.work.canvas
function mcpaint:canvas/colour_array_to_resolved_rows_all
function mcpaint:canvas/get_info

data modify storage mcpaint:database write_file set value {canvas:{}}
data modify storage mcpaint:database write_file.canvas.colour_array set from storage mcpaint:calc canvas.colour_array
data modify storage mcpaint:database write_file.canvas.resolved_rows set from storage mcpaint:calc canvas.resolved_rows
data modify storage mcpaint:database write_file.canvas.resolved_text set from storage mcpaint:calc canvas.resolved_text
data modify storage mcpaint:database write_file.canvas.width_px set from storage mcpaint:calc canvas.width_px
data modify storage mcpaint:database write_file.canvas.height_px set from storage mcpaint:calc canvas.height_px
data modify storage mcpaint:database write_file.canvas.width_blocks set from storage mcpaint:calc canvas.width_blocks
data modify storage mcpaint:database write_file.canvas.height_blocks set from storage mcpaint:calc canvas.height_blocks
function mcpaint:database/write_file

function mcpaint:custom_painting/scale_and_offset
execute as @e[type=text_display,tag=mcpaint.custom_painting.text_display,distance=..0.1] run data modify entity @s text set value '{"text":""}'
execute as @e[type=text_display,tag=mcpaint.custom_painting.text_display,distance=..0.1] run data modify entity @s text set from storage mcpaint:calc canvas.resolved_text
data modify storage mcpaint:calc EntityData set value {scale:[1f,1f,1f],translation:[0f,0f,0.03125f]}
execute store result storage mcpaint:calc EntityData.scale[0] float 0.00009766 run scoreboard players get scale_x mcpaint.calc
execute store result storage mcpaint:calc EntityData.scale[1] float 0.00009766 run scoreboard players get scale_y mcpaint.calc
execute store result storage mcpaint:calc EntityData.translation[0] float -0.000009766 run scoreboard players get offset_x mcpaint.calc
execute store result storage mcpaint:calc EntityData.translation[1] float -0.000009766 run scoreboard players get offset_y mcpaint.calc
execute as @e[type=text_display,tag=mcpaint.custom_painting.text_display,distance=..0.1] run data modify entity @s transformation merge from storage mcpaint:calc EntityData