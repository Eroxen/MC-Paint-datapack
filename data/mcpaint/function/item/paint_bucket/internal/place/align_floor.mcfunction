execute facing ~0 ~-1 ~0 store result score #temp mcpaint.calc run function #bs.raycast:run {with:{blocks:true,entities:"mcpaint.can_place_blocks_against",max_distance:0.5f}}
execute if score #temp mcpaint.calc matches 0 run return run function mcpaint:item/paint_bucket/internal/place/place

data modify storage mcpaint:calc internal.macro set value {x:0d,y:0d,z:0d,nx:0d,ny:0d,nz:0d,function:'mcpaint:item/paint_bucket/internal/place/place'}
data modify storage mcpaint:calc internal.macro.x set from storage bs:out raycast.hit_point[0]
data modify storage mcpaint:calc internal.macro.y set from storage bs:out raycast.hit_point[1]
data modify storage mcpaint:calc internal.macro.z set from storage bs:out raycast.hit_point[2]
execute store result storage mcpaint:calc internal.macro.nx double 0.1875 run data get storage bs:out raycast.hit_normal[0]
execute store result storage mcpaint:calc internal.macro.ny double 0.25 run data get storage bs:out raycast.hit_normal[1]
execute store result storage mcpaint:calc internal.macro.nz double 0.1875 run data get storage bs:out raycast.hit_normal[2]
function mcpaint:item/paint_bucket/internal/place/goto_hit_point with storage mcpaint:calc internal.macro