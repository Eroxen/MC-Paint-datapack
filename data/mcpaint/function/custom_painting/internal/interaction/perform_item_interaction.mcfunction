data modify storage mcpaint:calc internal.custom_painting.data set from entity @s item.components.minecraft:custom_data.mcpaint.custom_painting

scoreboard players set #custom_painting.interaction.modifying mcpaint.calc 1
execute if data storage mcpaint:calc internal.custom_painting.item_interaction{special:"copy_paste"} if score #custom_painting.interaction.is_sneaking mcpaint.calc matches 1 run scoreboard players set #custom_painting.interaction.modifying mcpaint.calc 0
execute if score #custom_painting.interaction.modifying mcpaint.calc matches 1 if entity @s[tag=mcpaint.custom_painting.locked] unless data storage mcpaint:calc internal.custom_painting.item_interaction{toggle_option:{option:"locked"}} run return fail

scoreboard players set #custom_painting.changed mcpaint.calc 0
execute if data storage mcpaint:calc internal.custom_painting.item_interaction.merge_options store success score #custom_painting.changed mcpaint.calc run data modify storage mcpaint:calc internal.custom_painting.data.options merge from storage mcpaint:calc internal.custom_painting.item_interaction.merge_options
execute if data storage mcpaint:calc internal.custom_painting.item_interaction.toggle_option run function mcpaint:custom_painting/internal/interaction/toggle_option with storage mcpaint:calc internal.custom_painting.item_interaction.toggle_option
execute if data storage mcpaint:calc internal.custom_painting.item_interaction{special:"copy_paste"} run function mcpaint:custom_painting/internal/interaction/copy
execute if score #custom_painting.changed mcpaint.calc matches 0 run return fail

execute if data storage mcpaint:calc internal.custom_painting.item_interaction.sound run function mcpaint:custom_painting/internal/interaction/play_sound with storage mcpaint:calc internal.custom_painting.item_interaction.sound

execute if data storage mcpaint:calc internal.custom_painting.item_interaction.grant_advancement run scoreboard players set #custom_painting.interaction.grant_advancement mcpaint.calc 1

execute if data storage mcpaint:calc internal.custom_painting.item_interaction.merge_options.background_variant run function mcpaint:custom_painting/internal/update/background

execute if data storage mcpaint:calc internal.custom_painting.item_interaction.merge_options{glowing:1b} on passengers if entity @s[type=text_display] run data modify entity @s brightness set value {sky:15,block:15}
execute if data storage mcpaint:calc internal.custom_painting.item_interaction.merge_options{glowing:0b} on passengers if entity @s[type=text_display] run data remove entity @s brightness

data modify entity @s item.components.minecraft:custom_data.mcpaint.custom_painting set from storage mcpaint:calc internal.custom_painting.data