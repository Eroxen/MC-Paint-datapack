data modify storage mcpaint:calc internal.custom_painting.item.components set value {\
"minecraft:entity_data": {\
    "id": "minecraft:item_frame",\
    "Silent": true,\
    "Invisible": true,\
    "Tags": [\
    "mcpaint.trigger_item_frame"\
    ],\
    "Item": {\
    "count": 1,\
    "id": "minecraft:stone",\
    "components": {\
        "minecraft:custom_data": {\
        "mcpaint": {\
            "trigger": "custom_painting"\
        }\
        },\
        "minecraft:custom_name": "{\"translate\": \"item.mcpaint.illegal_item\"}"\
    }\
    }\
},\
"minecraft:custom_model_data": {\
    "floats": [1f,1f], strings:["canvas"]\
}\
}
data modify storage mcpaint:calc internal.custom_painting.item.components.minecraft:entity_data.Item.components.minecraft:custom_data.mcpaint.custom_painting set value {}
data modify storage mcpaint:calc internal.custom_painting.item.components.minecraft:entity_data.Item.components.minecraft:custom_data.mcpaint.custom_painting.filepath set from storage mcpaint:calc internal.database.filepath

function mcpaint:custom_painting/internal/item/generate_options_data
function mcpaint:database/api/get_features with storage mcpaint:calc internal.database.filepath
function mcpaint:custom_painting/internal/item/generate_lore with storage mcpaint:calc api.database.features

execute unless data storage mcpaint:calc api.database.work.cached_data.item_canvas run function mcpaint:custom_painting/internal/item/generate_item_canvas
data modify storage mcpaint:calc internal.custom_painting.item.components."minecraft:custom_model_data".flags set from storage mcpaint:calc api.database.work.cached_data.item_canvas.flags
data modify storage mcpaint:calc internal.custom_painting.item.components."minecraft:custom_model_data".colors set from storage mcpaint:calc api.database.work.cached_data.item_canvas.colors
execute store result storage mcpaint:calc internal.custom_painting.item.components."minecraft:custom_model_data".floats[0] float 1 run data get storage mcpaint:calc api.database.features.width_blocks 1
execute store result storage mcpaint:calc internal.custom_painting.item.components."minecraft:custom_model_data".floats[1] float 1 run data get storage mcpaint:calc api.database.features.height_blocks 1
execute if data storage mcpaint:calc internal.custom_painting.data.options.background_variant run data modify storage mcpaint:calc internal.custom_painting.item.components."minecraft:custom_model_data".strings[0] set from storage mcpaint:calc internal.custom_painting.data.options.background_variant