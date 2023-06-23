execute if entity @s[tag=mcpaint.studio.interaction] run function mcpaint:studio/api/interaction_get_rclicked
execute if entity @s[tag=mcpaint.custom_painting.interaction] run function mcpaint:custom_painting/api/interaction_get_rclicked
execute if entity @s[tag=mcpaint.computer.interaction] on target align xyz positioned ~0.5 ~0.5 ~0.5 run function mcpaint:block/computer/rclick

tag @s remove mcpaint.clickable_interaction.rclick_responder
data remove entity @s interaction