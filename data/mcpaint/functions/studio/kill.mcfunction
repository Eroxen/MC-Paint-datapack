playsound minecraft:block.wood.break block @a[distance=..16] ~ ~ ~ 1 1
particle minecraft:block minecraft:stripped_spruce_wood ~ ~ ~ 0.2 0.2 0.2 0 4

execute rotated as @s run function mcpaint:studio/kill_interactions
kill @e[type=item_display,tag=mcpaint.studio.item_display,distance=..0.1]
kill @e[type=text_display,tag=mcpaint.studio.text_display,distance=..0.1]
execute if data entity @s data{attacker_in_survival_or_adventure:1b} run function mcpaint:studio/drop_item
kill @s