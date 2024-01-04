execute unless data storage mcpaint:calc custom_painting.settings{glowing:1b} run data remove storage mcpaint:calc custom_painting.text_display.brightness
execute if data storage mcpaint:calc custom_painting.settings{glowing:1b} run data modify storage mcpaint:calc custom_painting.text_display.brightness set value {block:15,sky:15}


data modify storage mcpaint:calc api.canvas.get_transformation set value {offset_z:0.0315f}
function mcpaint:canvas/api/get_transformation_painting
data modify storage mcpaint:calc custom_painting.text_display.transformation set from storage mcpaint:calc api.canvas.get_transformation.transformation
execute if data storage mcpaint:calc custom_painting.settings{background:"none"} run data modify storage mcpaint:calc custom_painting.text_display.transformation.translation[2] set value -0.03125f


execute store result score width mcpaint.calc run data get storage mcpaint:calc api.canvas.canvas.width_blocks
execute store result score height mcpaint.calc run data get storage mcpaint:calc api.canvas.canvas.height_blocks
function mcpaint:custom_painting/get_size_data
data modify storage mcpaint:calc model set value {Count:1b,id:"minecraft:air"}
execute if data storage mcpaint:calc custom_painting.settings{background:"canvas"} run data modify storage mcpaint:calc model set from storage mcpaint:calc painting_size_data.background_models.canvas
data modify storage mcpaint:calc custom_painting.item_display.item set from storage mcpaint:calc model

execute unless data storage mcpaint:calc custom_painting.settings{long_view_range:1b} run data modify storage mcpaint:calc custom_painting merge value {item_display:{view_range:0.75f},text_display:{view_range:0.5f}}
execute if data storage mcpaint:calc custom_painting.settings{long_view_range:1b} run data modify storage mcpaint:calc custom_painting merge value {item_display:{view_range:2f},text_display:{view_range:1.5f}}