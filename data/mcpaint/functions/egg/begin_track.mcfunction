execute on origin run data modify storage mcpaint:calc thrower set from entity @s {}
tag @s add mcpaint.tracked_egg
execute on origin unless predicate mcpaint:can_give_eggy_feedback run return 0

summon marker ~ ~ ~ {Tags:["mcpaint.egg_tracker","mcpaint.egg_tracker.new","mcpaint.marker.ticking"],data:{thrower:{}}}
data modify entity @e[type=marker,tag=mcpaint.egg_tracker.new,distance=..0.1,limit=1] Rotation set from storage mcpaint:calc thrower.Rotation
data modify entity @e[type=marker,tag=mcpaint.egg_tracker.new,distance=..0.1,limit=1] data.thrower.UUID set from storage mcpaint:calc thrower.UUID
ride @e[type=marker,tag=mcpaint.egg_tracker.new,distance=..0.1,limit=1] mount @s
tag @e[type=marker,tag=mcpaint.egg_tracker.new,distance=..1] remove mcpaint.egg_tracker.new