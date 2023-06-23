execute unless data storage mcpaint:calc custom_painting.settings{glowing:1b} run data remove storage mcpaint:calc custom_painting.text_display.brightness
execute if data storage mcpaint:calc custom_painting.settings{glowing:1b} run data modify storage mcpaint:calc custom_painting.text_display.brightness set value {block:15,sky:15}


function mcpaint:custom_painting/scale_and_offset
data modify storage mcpaint:calc EntityData set value {scale:[1f,1f,1f],translation:[0f,0f,0.03125f]}
execute store result storage mcpaint:calc EntityData.scale[0] float 0.00009766 run scoreboard players get scale_x mcpaint.calc
execute store result storage mcpaint:calc EntityData.scale[1] float 0.00009766 run scoreboard players get scale_y mcpaint.calc
execute store result storage mcpaint:calc EntityData.translation[0] float -0.000009766 run scoreboard players get offset_x mcpaint.calc
execute store result storage mcpaint:calc EntityData.translation[1] float -0.000009766 run scoreboard players get offset_y mcpaint.calc
data modify storage mcpaint:calc custom_painting.text_display.transformation set from storage mcpaint:calc EntityData
execute if data storage mcpaint:calc custom_painting.settings{background:"none"} run data modify storage mcpaint:calc custom_painting.text_display.transformation.translation[2] set value -0.03125f


execute store result score width mcpaint.calc run data get storage mcpaint:calc canvas.width_blocks
execute store result score height mcpaint.calc run data get storage mcpaint:calc canvas.height_blocks
function mcpaint:custom_painting/get_size_data
data modify storage mcpaint:calc model set value {Count:1b,id:"minecraft:air"}
execute if data storage mcpaint:calc custom_painting.settings{background:"canvas"} run data modify storage mcpaint:calc model set from storage mcpaint:calc painting_size_data.background_models.canvas
data modify storage mcpaint:calc custom_painting.item_display.item set from storage mcpaint:calc model

execute unless data storage mcpaint:calc custom_painting.settings{long_view_range:1b} run data modify storage mcpaint:calc custom_painting merge value {item_display:{view_range:0.75f},text_display:{view_range:0.5f}}
execute if data storage mcpaint:calc custom_painting.settings{long_view_range:1b} run data modify storage mcpaint:calc custom_painting merge value {item_display:{view_range:2f},text_display:{view_range:1.5f}}