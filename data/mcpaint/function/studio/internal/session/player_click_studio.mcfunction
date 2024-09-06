execute if items entity @s weapon.mainhand minecraft:tinted_glass run return run execute as @e[type=marker,tag=mcpaint.studio.marker,tag=mcpaint.studio.in_session,predicate=mcpaint:same_session,limit=1] at @s run function mcpaint:studio/internal/session/use_item/toggle_axis_shading
execute if predicate mcpaint:studio/can_change_background run return run function mcpaint:studio/internal/session/use_item/change_background

function mcpaint:studio/internal/session/stop_as_player