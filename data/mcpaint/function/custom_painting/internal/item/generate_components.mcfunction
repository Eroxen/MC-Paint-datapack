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
}\
}
data modify storage mcpaint:calc internal.custom_painting.item.components.minecraft:entity_data.Item.components.minecraft:custom_data.mcpaint.custom_painting set value {}
data modify storage mcpaint:calc internal.custom_painting.item.components.minecraft:entity_data.Item.components.minecraft:custom_data.mcpaint.custom_painting.filepath set from storage mcpaint:calc internal.database.filepath

function mcpaint:custom_painting/internal/item/generate_options_data
function mcpaint:database/api/get_features with storage mcpaint:calc internal.database.filepath
function mcpaint:custom_painting/internal/item/generate_lore with storage mcpaint:calc api.database.features