data modify storage mcpaint:calc internal.custom_painting.used_item set from entity @s SelectedItem
function mcpaint:custom_painting/internal/interaction/get_item_interaction with storage mcpaint:calc internal.custom_painting.used_item

execute unless data storage mcpaint:calc internal.custom_painting.item_interaction.merge_options.background_variant run return fail

scoreboard players set #studio.changed mcpaint.calc 0
execute as @e[type=marker,tag=mcpaint.studio.marker,tag=mcpaint.studio.in_session,predicate=mcpaint:same_session,limit=1] at @s run function mcpaint:studio/internal/session/use_item/change_background_marker
execute if score #studio.changed mcpaint.calc matches 0 run return 0

execute if data storage mcpaint:calc internal.custom_painting.item_interaction.sound run function mcpaint:custom_painting/internal/interaction/play_sound with storage mcpaint:calc internal.custom_painting.item_interaction.sound
execute if data storage mcpaint:calc internal.custom_painting.item_interaction.grant_advancement run function mcpaint:custom_painting/internal/interaction/grant_advancement with storage mcpaint:calc internal.custom_painting.item_interaction