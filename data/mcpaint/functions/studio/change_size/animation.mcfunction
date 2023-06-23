function mcpaint:studio/get_default_data
data modify storage mcpaint:calc EntityData set value {transformation:{scale:[1f,1f,1f],translation:[0f,0f,0f]},start_interpolation:0,interpolation_duration:10}
data modify storage mcpaint:calc EntityData.item set from storage mcpaint:calc studio_data.borderless_model
scoreboard players set scale mcpaint.calc 1000
scoreboard players operation scale mcpaint.calc *= width mcpaint.calc
scoreboard players operation scale mcpaint.calc /= old_width mcpaint.calc
execute store result storage mcpaint:calc EntityData.transformation.scale[0] float 0.001 run scoreboard players get scale mcpaint.calc

scoreboard players set scale mcpaint.calc 1000
scoreboard players operation scale mcpaint.calc *= height mcpaint.calc
scoreboard players operation scale mcpaint.calc /= old_height mcpaint.calc
execute store result storage mcpaint:calc EntityData.transformation.scale[1] float 0.001 run scoreboard players get scale mcpaint.calc

scoreboard players set offset mcpaint.calc 500
scoreboard players operation offset mcpaint.calc *= height mcpaint.calc
scoreboard players operation offset mcpaint.calc /= old_height mcpaint.calc
scoreboard players remove offset mcpaint.calc 500
execute store result storage mcpaint:calc EntityData.transformation.translation[1] float 0.001 run scoreboard players get offset mcpaint.calc

scoreboard players operation offset mcpaint.calc = old_width mcpaint.calc
scoreboard players set op mcpaint.calc 2
scoreboard players operation offset mcpaint.calc %= op mcpaint.calc
scoreboard players remove offset mcpaint.calc 1
scoreboard players set op mcpaint.calc 500
scoreboard players operation offset mcpaint.calc *= op mcpaint.calc
scoreboard players operation offset mcpaint.calc *= width mcpaint.calc
scoreboard players operation offset mcpaint.calc /= old_width mcpaint.calc
scoreboard players operation offset2 mcpaint.calc = width mcpaint.calc
scoreboard players set op mcpaint.calc 2
scoreboard players add offset2 mcpaint.calc 1
scoreboard players operation offset2 mcpaint.calc %= op mcpaint.calc
scoreboard players set op mcpaint.calc 500
scoreboard players operation offset2 mcpaint.calc *= op mcpaint.calc
scoreboard players operation offset mcpaint.calc += offset2 mcpaint.calc
execute store result storage mcpaint:calc EntityData.transformation.translation[0] float 0.001 run scoreboard players get offset mcpaint.calc
data modify entity @s data.change_size_animation.item_display set from storage mcpaint:calc EntityData

tag @s add mcpaint.studio.change_size.1
schedule function mcpaint:studio/change_size/schedule_1 3t append
schedule function mcpaint:studio/change_size/schedule_2 16t append

execute store result entity @s data.width int 1 run scoreboard players get width mcpaint.calc
execute store result entity @s data.height int 1 run scoreboard players get height mcpaint.calc
function mcpaint:studio/get_default_data
data modify entity @s data.ui merge from storage mcpaint:calc studio_data.positioned_ui

data modify entity @s data.canvas.width_blocks set from entity @s data.width
data modify entity @s data.canvas.height_blocks set from entity @s data.height
data modify storage mcpaint:calc canvas set from entity @s data.canvas
function mcpaint:canvas/get_info
function mcpaint:custom_painting/scale_and_offset
data modify storage mcpaint:calc EntityData set value {transformation:{scale:[1f,1f,1f],translation:[0f,0f,-0.4375f]},start_interpolation:0,interpolation_duration:10}
execute store result storage mcpaint:calc EntityData.transformation.scale[0] float 0.00009766 run scoreboard players get scale_x mcpaint.calc
execute store result storage mcpaint:calc EntityData.transformation.scale[1] float 0.00009766 run scoreboard players get scale_y mcpaint.calc
execute store result storage mcpaint:calc EntityData.transformation.translation[0] float -0.000009766 run scoreboard players get offset_x mcpaint.calc
execute store result storage mcpaint:calc EntityData.transformation.translation[1] float -0.000009766 run scoreboard players get offset_y mcpaint.calc
data modify entity @s data.change_size_animation.text_display set from storage mcpaint:calc EntityData

function mcpaint:studio/ui/close