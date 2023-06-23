data modify storage mcpaint:calc spawn_studio set value {could_spawn:0b}
data modify storage mcpaint:calc spawn_studio.facing set from storage mcpaint:calc trigger_item_frame.facing
data modify storage mcpaint:calc spawn_studio.facing_rotation set from storage mcpaint:calc trigger_item_frame.facing_rotation


execute align x align y align z positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=mcpaint.studio,distance=..0.1,limit=1] run function mcpaint:studio/spawn
execute if data storage mcpaint:calc spawn_studio{could_spawn:0b} run data modify storage mcpaint:calc trigger_item_frame.drop_item set value 1b