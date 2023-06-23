data modify storage mcpaint:calc UUID set from entity @e[type=item,predicate=mcpaint:pro_brush_item,distance=..1,limit=1] Thrower
execute store success score different mcpaint.calc run data modify storage mcpaint:calc UUID set from entity @s UUID

execute if score different mcpaint.calc matches 0 as @e[type=item,predicate=mcpaint:pro_brush_item,distance=..1,limit=1] run function mcpaint:item/return_to_thrower
execute if score different mcpaint.calc matches 0 run data modify storage mcpaint:calc painter_tick.q set value 1b