#####################################################################
# paint_bucket/api/used.mcfunction
# written by Eroxen
#
# Called when the potion gets thrown, as and at the player.
#####################################################################

tag @s add mcpaint.player.paint_bucket.placer
execute at @s anchored eyes positioned ^ ^ ^ store result score #temp mcpaint.calc run function #bs.raycast:run {with:{blocks:true,entities:"mcpaint.can_place_blocks_against",max_distance:5.0f,on_entry_point:"function mcpaint:item/paint_bucket/internal/place/initial_ray_hit"}}
tag @s remove mcpaint.player.paint_bucket.placer

execute if score #temp mcpaint.calc matches 0 if predicate mcpaint:survival_or_adventure run return run function eroxified2:item.throwable/api/refund