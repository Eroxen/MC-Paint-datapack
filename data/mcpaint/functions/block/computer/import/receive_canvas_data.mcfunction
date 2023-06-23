data modify storage mcpaint:calc EntityData set value {transformation:{translation:[0f,0f,-0.04f],scale:[0f,0f,1f]},background:0,line_width:10000}
data modify storage mcpaint:calc EntityData.text set from storage mcpaint:calc canvas.resolved_text

function mcpaint:canvas/get_info

scoreboard players operation scale_blocks mcpaint.calc = canvas_width_blocks mcpaint.calc
scoreboard players operation scale_blocks mcpaint.calc > canvas_height_blocks mcpaint.calc

scoreboard players set scale_factor mcpaint.calc 625
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
scoreboard players add offset_x mcpaint.calc 50900

scoreboard players set offset_y mcpaint.calc 10240
scoreboard players operation offset_y mcpaint.calc /= canvas_height_px mcpaint.calc
scoreboard players operation offset_y mcpaint.calc *= scale_factor mcpaint.calc
scoreboard players operation offset_y mcpaint.calc /= op mcpaint.calc
scoreboard players add offset_y mcpaint.calc 19200

scoreboard players set offset_y2 mcpaint.calc 50000
scoreboard players operation offset_y2 mcpaint.calc *= canvas_height_blocks mcpaint.calc
scoreboard players operation offset_y2 mcpaint.calc /= scale_blocks mcpaint.calc
scoreboard players remove offset_y2 mcpaint.calc 50000
scoreboard players operation offset_y2 mcpaint.calc *= scale_factor mcpaint.calc
scoreboard players operation offset_y2 mcpaint.calc /= op mcpaint.calc
scoreboard players operation offset_y mcpaint.calc += offset_y2 mcpaint.calc

scoreboard players remove offset_x mcpaint.calc 50900
execute store result storage mcpaint:calc EntityData.transformation.scale[0] float 0.00009766 run scoreboard players get scale_x mcpaint.calc
execute store result storage mcpaint:calc EntityData.transformation.scale[1] float 0.00009766 run scoreboard players get scale_y mcpaint.calc
execute store result storage mcpaint:calc EntityData.transformation.translation[0] float -0.000009766 run scoreboard players get offset_x mcpaint.calc
execute store result storage mcpaint:calc EntityData.transformation.translation[1] float -0.000009766 run scoreboard players get offset_y mcpaint.calc

execute at @s rotated as @s positioned ^ ^ ^0.55 run data modify entity @e[type=text_display,tag=mcpaint.computer.text_display.import.canvas,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData

execute unless data entity @s data.computer_page.filename run data modify entity @s data.computer_page.filename set value "unnamed"

data modify entity @s data.computer_page.canvas set from storage mcpaint:calc canvas
function mcpaint:block/computer/import/check_validity