execute if score #custom_painting.interaction.modifying mcpaint.calc matches 1 run return run function mcpaint:custom_painting/internal/interaction/paste

data modify storage mcpaint:calc internal.custom_painting.item set value {id:"minecraft:paper",count:1}
data modify storage mcpaint:calc internal.custom_painting.item.components set value {\
"minecraft:custom_data": {\
    "mcpaint": {\
        "copied_custom_painting_data": {}\
    }\
},\
"minecraft:custom_name": '{\
    "translate": "item.mcpaint.copied_custom_painting_data"\
}',\
"minecraft:enchantment_glint_override": true,\
"minecraft:lore": []\
}

function mcpaint:custom_painting/internal/item/generate_options_lore with storage mcpaint:calc internal.custom_painting.data.options
data modify storage mcpaint:calc internal.custom_painting.item.components.minecraft:custom_data.mcpaint.copied_custom_painting_data.options set from storage mcpaint:calc internal.custom_painting.data.options
execute if data storage mcpaint:calc internal.custom_painting.data.options{show_lore:1b} run data modify storage mcpaint:calc internal.custom_painting.item.components.minecraft:custom_data.mcpaint.copied_custom_painting_data.lore set from storage mcpaint:calc internal.custom_painting.data.lore
scoreboard players set #custom_painting.interaction.transform_item mcpaint.calc 1

function mcpaint:custom_painting/internal/interaction/play_sound {name:"minecraft:ui.cartography_table.take_result",parameters:"1 1"}