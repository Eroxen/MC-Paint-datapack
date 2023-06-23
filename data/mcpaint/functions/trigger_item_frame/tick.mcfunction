data modify storage mcpaint:calc trigger_item_frame.item_tag set from entity @s Item.tag.mcpaint
data modify storage mcpaint:calc trigger_item_frame.facing_i set from entity @s Facing
execute if data storage mcpaint:calc trigger_item_frame{facing_i:0b} run data modify storage mcpaint:calc trigger_item_frame merge value {facing:"down",facing_axis:"y",facing_rotation:[0f,90f]}
execute if data storage mcpaint:calc trigger_item_frame{facing_i:1b} run data modify storage mcpaint:calc trigger_item_frame merge value {facing:"up",facing_axis:"y",facing_rotation:[0f,-90f]}
execute if data storage mcpaint:calc trigger_item_frame{facing_i:2b} run data modify storage mcpaint:calc trigger_item_frame merge value {facing:"north",facing_axis:"z",facing_rotation:[180f,0f]}
execute if data storage mcpaint:calc trigger_item_frame{facing_i:3b} run data modify storage mcpaint:calc trigger_item_frame merge value {facing:"south",facing_axis:"z",facing_rotation:[0f,0f]}
execute if data storage mcpaint:calc trigger_item_frame{facing_i:4b} run data modify storage mcpaint:calc trigger_item_frame merge value {facing:"west",facing_axis:"x",facing_rotation:[90f,0f]}
execute if data storage mcpaint:calc trigger_item_frame{facing_i:5b} run data modify storage mcpaint:calc trigger_item_frame merge value {facing:"east",facing_axis:"x",facing_rotation:[270f,0f]}

execute if data storage mcpaint:calc trigger_item_frame.item_tag{trigger:"studio_spawner"} if data storage mcpaint:calc trigger_item_frame{facing_axis:"y"} run data modify storage mcpaint:calc trigger_item_frame.drop_item set value 1b
execute if data storage mcpaint:calc trigger_item_frame.item_tag{trigger:"studio_spawner"} unless data storage mcpaint:calc trigger_item_frame{facing_axis:"y"} run function mcpaint:trigger_item_frame/studio_spawner
execute if data storage mcpaint:calc trigger_item_frame{drop_item:1b,placer:{survival_or_adventure:1b}} positioned ^ ^ ^0.3 run function mcpaint:studio/drop_item

execute if data storage mcpaint:calc trigger_item_frame.item_tag{trigger:"custom_painting"} run function mcpaint:trigger_item_frame/custom_painting

kill @s