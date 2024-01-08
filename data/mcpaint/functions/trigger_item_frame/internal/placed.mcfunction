data modify storage mcpaint:calc api.trigger_item_frame.trigger set from entity @s Item.tag.mcpaint
execute store result score #temp mcpaint.calc run data get entity @s Facing
execute if score #temp mcpaint.calc matches 0 run data modify storage mcpaint:calc api.trigger_item_frame.trigger merge value {facing:"down",facing_axis:"y",rotation:[0f,90f]}
execute if score #temp mcpaint.calc matches 1 run data modify storage mcpaint:calc api.trigger_item_frame.trigger merge value {facing:"up",facing_axis:"y",rotation:[0f,-90f]}
execute if score #temp mcpaint.calc matches 2 run data modify storage mcpaint:calc api.trigger_item_frame.trigger merge value {facing:"north",facing_axis:"z",rotation:[180f,0f]}
execute if score #temp mcpaint.calc matches 3 run data modify storage mcpaint:calc api.trigger_item_frame.trigger merge value {facing:"south",facing_axis:"z",rotation:[0f,0f]}
execute if score #temp mcpaint.calc matches 4 run data modify storage mcpaint:calc api.trigger_item_frame.trigger merge value {facing:"west",facing_axis:"x",rotation:[90f,0f]}
execute if score #temp mcpaint.calc matches 5 run data modify storage mcpaint:calc api.trigger_item_frame.trigger merge value {facing:"east",facing_axis:"x",rotation:[270f,0f]}
execute if score #temp mcpaint.calc matches 0..1 run function mcpaint:util/api/horizontal_direction_to_rotation
execute if score #temp mcpaint.calc matches 0..1 run data modify storage mcpaint:calc api.trigger_item_frame.trigger.rotation[0] set from storage mcpaint:calc api.util.rotation[0]

scoreboard players set #trigger_item_frame.can_place mcpaint.calc 1
function mcpaint:trigger_item_frame/internal/trigger with storage mcpaint:calc api.trigger_item_frame.trigger
kill @s