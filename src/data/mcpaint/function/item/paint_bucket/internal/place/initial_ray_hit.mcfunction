scoreboard players set #paint_bucket.place.wall mcpaint.calc 0
execute if score $raycast.hit_face bs.lambda matches 1 run return run function mcpaint:item/paint_bucket/internal/place/place
execute if score $raycast.hit_face bs.lambda matches 0 run return run function mcpaint:item/paint_bucket/internal/place/align_floor

scoreboard players set #paint_bucket.place.wall mcpaint.calc 1
execute if score $raycast.hit_face bs.lambda matches 5 positioned ~0.1875 ~ ~ run return run function mcpaint:item/paint_bucket/internal/place/align_floor
execute if score $raycast.hit_face bs.lambda matches 4 positioned ~-0.1875 ~ ~ run return run function mcpaint:item/paint_bucket/internal/place/align_floor

execute if score $raycast.hit_face bs.lambda matches 3 positioned ~ ~ ~0.1875 run return run function mcpaint:item/paint_bucket/internal/place/align_floor
execute if score $raycast.hit_face bs.lambda matches 2 positioned ~ ~ ~-0.1875 run return run function mcpaint:item/paint_bucket/internal/place/align_floor