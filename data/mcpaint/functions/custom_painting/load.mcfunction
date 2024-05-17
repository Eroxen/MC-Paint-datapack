data modify storage mcpaint:calc internal.custom_painting set value {item_interactions:[]}

data modify storage mcpaint:calc internal.custom_painting.item_interactions append value {\
items:["minecraft:shears"],\
merge_options:{background_variant:"empty"},\
sound:{name:"minecraft:entity.sheep.shear",parameters:"1 1"}}

data modify storage mcpaint:calc internal.custom_painting.item_interactions append value {\
items:["minecraft:white_wool"],\
merge_options:{background_variant:"canvas"},\
sound:{name:"minecraft:block.wool.place",parameters:"1 1"}}

data modify storage mcpaint:calc internal.custom_painting.item_interactions append value {\
items:["minecraft:glow_ink_sac"],\
merge_options:{glowing:1b},\
sound:{name:"minecraft:item.glow_ink_sac.use",parameters:"1 1"}}

data modify storage mcpaint:calc internal.custom_painting.item_interactions append value {\
items:["minecraft:ink_sac"],\
merge_options:{glowing:0b},\
sound:{name:"minecraft:item.ink_sac.use",parameters:"1 1"}}

data modify storage mcpaint:calc internal.custom_painting.item_interactions append value {\
items:["minecraft:name_tag"],\
toggle_option:{option:"show_name",values:2}}

data modify storage mcpaint:calc internal.custom_painting.item_interactions append value {\
items:["minecraft:writable_book"],\
toggle_option:{option:"show_lore",values:2}}

data modify storage mcpaint:calc internal.custom_painting.item_interactions append value {\
items:["minecraft:tripwire_hook"],\
toggle_option:{option:"locked",values:2},\
true_sound:{name:"minecraft:block.iron_door.close",parameters:"1 0.7"},\
false_sound:{name:"minecraft:block.iron_door.open",parameters:"1 1.3"}}

data modify storage mcpaint:calc internal.custom_painting.item_interactions append value {\
items:["minecraft:ender_eye"],\
toggle_option:{option:"billboard",values:4},\
sound:{name:"minecraft:entity.enderman.ambient",parameters:"1 1"}}