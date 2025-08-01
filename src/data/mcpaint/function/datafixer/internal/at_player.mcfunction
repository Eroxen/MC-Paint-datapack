execute as @e[type=interaction,tag=mcpaint.paint_bucket.interaction,distance=..64,predicate=mcpaint:datafixer/outdated,limit=64] run function mcpaint:datafixer/internal/update/paint_bucket
execute as @e[type=item_display,tag=mcpaint.custom_painting.item_display,distance=..64,predicate=mcpaint:datafixer/outdated,limit=64] run function mcpaint:datafixer/internal/update/custom_painting
execute as @e[type=marker,tag=mcpaint.studio.marker,distance=..64,predicate=mcpaint:datafixer/outdated,limit=64] run function mcpaint:datafixer/internal/update/studio

execute if predicate mcpaint:datafixer/has_outdated_item run function eroxified2:datafixer/api/iterate_inventory {predicate:"mcpaint:datafixer/outdated_item", function:"mcpaint:datafixer/internal/update/item", authority:"MCPaint"}