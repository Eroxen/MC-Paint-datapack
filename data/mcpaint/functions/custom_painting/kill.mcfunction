playsound minecraft:entity.painting.break block @a[distance=..16] ~ ~ ~ 1 1
particle minecraft:block minecraft:stripped_spruce_wood ~ ~ ~ 0.2 0.2 0.2 0 4
execute if score drop_items mcpaint.calc matches 1 run data modify storage mcpaint:calc custom_painting set value {}
execute if score drop_items mcpaint.calc matches 1 run data modify storage mcpaint:calc custom_painting.settings set from entity @s data.settings
execute if score drop_items mcpaint.calc matches 1 run data modify storage mcpaint:calc filepath set from entity @s data.filepath
execute if score drop_items mcpaint.calc matches 1 run function mcpaint:custom_painting/generate_item
execute if score drop_items mcpaint.calc matches 1 run data modify storage mcpaint:calc Item set from storage mcpaint:calc custom_painting.Item
execute if score drop_items mcpaint.calc matches 1 rotated as @s positioned ^ ^ ^0.3 run function mcpaint:item/drop_motion

kill @s