execute align xyz positioned ~0.5 ~1 ~0.5 unless entity @n[type=item_display,tag=mcpaint.projector.root,distance=..0.1] positioned ~ ~-0.5 ~ run return run setblock ~ ~ ~ air destroy

execute align xyz positioned ~0.5 ~1 ~0.5 as @n[type=item_display,tag=mcpaint.projector.root,distance=..0.1] run function mcpaint:item/projector/internal/toggle

execute if score #projector.powered mcpaint.calc matches 1 run return 1
return fail