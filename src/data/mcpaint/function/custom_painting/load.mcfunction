data modify storage mcpaint:calc internal.custom_painting set value {item_interactions:[],\
default_options:{background_variant:"canvas",glowing:0b,axis_shading:1b,show_name:0b,show_lore:0b,locked:0b,billboard:0b,transparency:0b,roll:0b,view_range:1b}}

data modify storage mcpaint:calc internal.custom_painting.rolls set value [\
{left_rotation:[0f,0f,0f,1f],roll:0f},\
{left_rotation:[0f,0f,-0.195f,0.981f],roll:22.5f},\
{left_rotation:[0f,0f,-0.383f,0.924f],roll:45f},\
{left_rotation:[0f,0f,-0.556f,0.831f],roll:67.5f},\
{left_rotation:[0f,0f,-0.707f,0.707f],roll:90f},\
{left_rotation:[0f,0f,-0.831f,0.556f],roll:112.5f},\
{left_rotation:[0f,0f,-0.924f,0.383f],roll:135f},\
{left_rotation:[0f,0f,-0.981f,0.195f],roll:157.5f},\
{left_rotation:[0f,0f,1f,0f],roll:180f},\
{left_rotation:[0f,0f,0.981f,0.195f],roll:202.5f},\
{left_rotation:[0f,0f,0.924f,0.383f],roll:225f},\
{left_rotation:[0f,0f,0.831f,0.556f],roll:247.5f},\
{left_rotation:[0f,0f,0.707f,0.707f],roll:270f},\
{left_rotation:[0f,0f,0.556f,0.831f],roll:292.5f},\
{left_rotation:[0f,0f,0.383f,0.924f],roll:315f},\
{left_rotation:[0f,0f,0.195f,0.981f],roll:337.5f}\
]

data modify storage mcpaint:calc internal.custom_painting.item_interactions append value {\
items:["minecraft:shears"],\
merge_options:{background_variant:"empty"},\
sound:{name:"minecraft:entity.sheep.shear",parameters:"1 1"},\
grant_advancement:"mcpaint:guide/set_no_background"}

data modify storage mcpaint:calc internal.custom_painting.item_interactions append value {\
items:["minecraft:white_wool"],\
merge_options:{background_variant:"canvas"},\
sound:{name:"minecraft:block.wool.place",parameters:"1 1"}}

data modify storage mcpaint:calc internal.custom_painting.item_interactions append value {\
items:["minecraft:deepslate"],\
merge_options:{background_variant:"blackboard"},\
sound:{name:"minecraft:block.grindstone.use",parameters:"1 1"}}

data modify storage mcpaint:calc internal.custom_painting.item_interactions append value {\
items:["minecraft:observer"],\
merge_options:{background_variant:"puter"},\
sound:{name:"minecraft:block.note_block.bit",parameters:"1 1"}}

data modify storage mcpaint:calc internal.custom_painting.item_interactions append value {\
items:["minecraft:glow_ink_sac"],\
merge_options:{glowing:1b},\
sound:{name:"minecraft:item.glow_ink_sac.use",parameters:"1 1"},\
grant_advancement:"mcpaint:guide/set_glowing"}

data modify storage mcpaint:calc internal.custom_painting.item_interactions append value {\
items:["minecraft:ink_sac"],\
merge_options:{glowing:0b},\
sound:{name:"minecraft:item.ink_sac.use",parameters:"1 1"}}

data modify storage mcpaint:calc internal.custom_painting.item_interactions append value {\
items:["minecraft:tinted_glass"],\
toggle_option:{option:"axis_shading",values:2},\
sound:{name:"minecraft:block.copper_bulb.turn_on",parameters:"1 1"}}

data modify storage mcpaint:calc internal.custom_painting.item_interactions append value {\
items:["minecraft:name_tag"],\
toggle_option:{option:"show_name",values:2}}

data modify storage mcpaint:calc internal.custom_painting.item_interactions append value {\
items:["minecraft:writable_book"],\
toggle_option:{option:"show_lore",values:2},\
grant_advancement:"mcpaint:guide/custom_painting_lore"}

data modify storage mcpaint:calc internal.custom_painting.item_interactions append value {\
items:["minecraft:tripwire_hook"],\
toggle_option:{option:"locked",values:2},\
true_sound:{name:"minecraft:block.iron_door.close",parameters:"1 0.7"},\
false_sound:{name:"minecraft:block.iron_door.open",parameters:"1 1.3"}}

data modify storage mcpaint:calc internal.custom_painting.item_interactions append value {\
items:["minecraft:ender_eye"],\
toggle_option:{option:"billboard",values:4},\
sound:{name:"minecraft:entity.enderman.ambient",parameters:"1 1"}}

data modify storage mcpaint:calc internal.custom_painting.item_interactions append value {\
items:["minecraft:compass"],\
toggle_option:{option:"roll",values:16},\
sound:{name:"minecraft:entity.item_frame.rotate_item",parameters:"1 1"},\
grant_advancement:"mcpaint:guide/roll_custom_painting"}

data modify storage mcpaint:calc internal.custom_painting.item_interactions append value {\
items:["minecraft:ice"],\
toggle_option:{option:"transparency",values:8},\
sound:{name:"minecraft:block.glass.place",parameters:"0.5 2"}}

data modify storage mcpaint:calc internal.custom_painting.item_interactions append value {\
items:["minecraft:spyglass"],\
toggle_option:{option:"view_range",values:4},\
sound:{name:"minecraft:item.spyglass.use",parameters:"1 1"}}

data modify storage mcpaint:calc internal.custom_painting.item_interactions append value {\
items:["minecraft:paper"],\
special:"copy_paste",\
sound:{name:"minecraft:item.book.page_turn",parameters:"1 1"}}