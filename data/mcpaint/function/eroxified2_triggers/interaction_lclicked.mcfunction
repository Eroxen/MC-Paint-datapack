execute if entity @s[tag=mcpaint.studio.interaction] align xyz positioned ~0.5 ~1.5 ~0.5 run function mcpaint:studio/api/interactions_lclicked
execute if entity @s[tag=mcpaint.custom_painting.interaction] run function mcpaint:custom_painting/api/interactions_lclicked
execute if entity @s[tag=mcpaint.paint_bucket.interaction] run function mcpaint:item/paint_bucket/api/interaction_lclicked