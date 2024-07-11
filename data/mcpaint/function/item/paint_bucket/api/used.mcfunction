#####################################################################
# paint_bucket/api/used.mcfunction
# written by Eroxen
#
# Called when the potion gets thrown, as and at the player.
#####################################################################

execute at @s anchored eyes positioned ^ ^ ^ store result score #temp mcpaint.calc run function #bs.raycast:run {with:{blocks:true,entities:"mcpaint.can_place_blocks_against",max_distance:5.0f}}

execute if score #temp mcpaint.calc matches 0 if predicate mcpaint:survival_or_adventure run return run function eroxified2:item.throwable/api/refund
data modify storage mcpaint:calc internal.macro set value {x:0d,y:0d,z:0d,nx:0d,ny:0d,nz:0d,function:'mcpaint:item/paint_bucket/internal/place/align_floor'}
data modify storage mcpaint:calc internal.macro.x set from storage bs:out raycast.hit_point[0]
data modify storage mcpaint:calc internal.macro.y set from storage bs:out raycast.hit_point[1]
data modify storage mcpaint:calc internal.macro.z set from storage bs:out raycast.hit_point[2]
execute store result storage mcpaint:calc internal.macro.nx double 0.1875 run data get storage bs:out raycast.hit_normal[0]
execute store result storage mcpaint:calc internal.macro.ny double 0.25 run data get storage bs:out raycast.hit_normal[1]
execute store result storage mcpaint:calc internal.macro.nz double 0.1875 run data get storage bs:out raycast.hit_normal[2]
execute if data storage mcpaint:calc internal.macro{ny:0.25d} run data modify storage mcpaint:calc internal.macro.function set value 'mcpaint:item/paint_bucket/internal/place/place'
function mcpaint:item/paint_bucket/internal/place/goto_hit_point with storage mcpaint:calc internal.macro