data modify storage mcpaint:calc egg_tracking.painting set from entity @e[type=painting,dx=0,dy=0,dz=0,limit=1] {}

data modify storage mcpaint:calc egg_tracking.facing set value "north"
execute if data storage mcpaint:calc egg_tracking.painting{facing:0b} run data modify storage mcpaint:calc egg_tracking.facing set value "south"
execute if data storage mcpaint:calc egg_tracking.painting{facing:1b} run data modify storage mcpaint:calc egg_tracking.facing set value "west"
execute if data storage mcpaint:calc egg_tracking.painting{facing:3b} run data modify storage mcpaint:calc egg_tracking.facing set value "east"

execute if data storage mcpaint:calc egg_tracking{facing:"north"} if entity @s[y_rotation=-65..65] run data modify storage mcpaint:calc egg_tracking.hit_painting set value 1b
execute if data storage mcpaint:calc egg_tracking{facing:"east"} if entity @s[y_rotation=25..155] run data modify storage mcpaint:calc egg_tracking.hit_painting set value 1b
execute if data storage mcpaint:calc egg_tracking{facing:"south"} if entity @s[y_rotation=115..245] run data modify storage mcpaint:calc egg_tracking.hit_painting set value 1b
execute if data storage mcpaint:calc egg_tracking{facing:"west"} if entity @s[y_rotation=205..335] run data modify storage mcpaint:calc egg_tracking.hit_painting set value 1b

execute if data storage mcpaint:calc egg_tracking{hit_painting:1b} align x align y align z positioned ~0.5 ~0.5 ~0.5 run function mcpaint:egg/summon_feedback_egg
execute if data storage mcpaint:calc egg_tracking{hit_painting:1b} on vehicle run kill @s
execute if data storage mcpaint:calc egg_tracking{hit_painting:1b} run function mcpaint:egg/end_track