#####################################################################
# paint_bucket/api/interaction_rclicked.mcfunction
# written by Eroxen
#
# Called when the interaction is right-clicked,
# as the interaction.
#####################################################################

data remove storage mcpaint:calc internal.paint_bucket.used_item
execute on target if items entity @s weapon.mainhand * run data modify storage mcpaint:calc internal.paint_bucket.used_item set from entity @s SelectedItem
execute on target store success score #paint_bucket.interaction.in_session mcpaint.calc if entity @s[tag=mcpaint.player.in_session]
execute on target store success score #paint_bucket.interaction.is_sneaking mcpaint.calc if predicate mcpaint:is_sneaking
scoreboard players set #paint_bucket.interaction.used_item mcpaint.calc 0
execute if data storage mcpaint:calc internal.paint_bucket.used_item run scoreboard players set #paint_bucket.interaction.used_item mcpaint.calc 1

execute if score #paint_bucket.interaction.used_item mcpaint.calc matches 1 run function mcpaint:item/paint_bucket/internal/interaction/get_item_interaction with storage mcpaint:calc internal.paint_bucket.used_item
execute if score #paint_bucket.interaction.used_item mcpaint.calc matches 1 if data storage mcpaint:calc internal.paint_bucket.interaction run function mcpaint:item/paint_bucket/internal/interaction/perform

execute if score #paint_bucket.interaction.used_item mcpaint.calc matches 0 if score #paint_bucket.interaction.in_session mcpaint.calc matches 1 run function mcpaint:item/paint_bucket/internal/interaction/studio
