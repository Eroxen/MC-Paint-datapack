scoreboard players set #custom_painting.interaction.used_item mcpaint.calc 0
scoreboard players set #custom_painting.interaction.send_message mcpaint.calc 0
scoreboard players set #custom_painting.interaction.grant_advancement mcpaint.calc 0
scoreboard players set #custom_painting.interaction.transform_item mcpaint.calc 0

execute on target run function mcpaint:credit/api/send_welcome_message
execute on target store success score #custom_painting.interaction.is_sneaking mcpaint.calc if predicate mcpaint:is_sneaking
execute on target run data modify storage mcpaint:calc internal.custom_painting.user set from entity @s UUID

data remove storage mcpaint:calc internal.custom_painting.used_item
execute on target if items entity @s weapon.mainhand * run data modify storage mcpaint:calc internal.custom_painting.used_item set from entity @s SelectedItem
execute if data storage mcpaint:calc internal.custom_painting.used_item run scoreboard players set #custom_painting.interaction.used_item mcpaint.calc 1

execute if score #custom_painting.interaction.used_item mcpaint.calc matches 0 as @e[type=item_display,tag=mcpaint.custom_painting.has_text_message,distance=..0.1,limit=1] run function mcpaint:custom_painting/internal/interaction/get_text_message

execute if score #custom_painting.interaction.used_item mcpaint.calc matches 1 on target unless predicate mcpaint:permission/modify_custom_painting run return fail
execute if score #custom_painting.interaction.used_item mcpaint.calc matches 1 run function mcpaint:custom_painting/internal/interaction/get_item_interaction with storage mcpaint:calc internal.custom_painting.used_item
execute if score #custom_painting.interaction.used_item mcpaint.calc matches 1 if data storage mcpaint:calc internal.custom_painting.item_interaction as @e[type=item_display,tag=mcpaint.custom_painting.item_display,distance=..0.3] at @s run function mcpaint:custom_painting/internal/interaction/perform_item_interaction
execute if score #custom_painting.interaction.send_message mcpaint.calc matches 1 on target run tellraw @s {"storage":"mcpaint:calc","nbt":"internal.custom_painting.message[]","separator": "\n","interpret": true}
execute if score #custom_painting.interaction.grant_advancement mcpaint.calc matches 1 on target run function mcpaint:custom_painting/internal/interaction/grant_advancement with storage mcpaint:calc internal.custom_painting.item_interaction
execute if score #custom_painting.interaction.transform_item mcpaint.calc matches 1 on target run function mcpaint:custom_painting/internal/interaction/transform_item