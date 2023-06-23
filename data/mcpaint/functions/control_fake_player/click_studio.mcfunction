data modify storage mcpaint:calc interaction set value {}

execute as @e[type=armor_stand,tag=mcpaint.fake_player,limit=1,sort=nearest] run data modify storage mcpaint:calc interaction.player set from entity @s UUID
execute store result storage mcpaint:calc interaction.timestamp long 1 run time query gametime

execute as @e[type=armor_stand,tag=mcpaint.fake_player,limit=1,sort=nearest] at @s anchored eyes positioned ^ ^ ^3 run data modify entity @e[type=interaction,tag=mcpaint.studio.interaction,distance=..4,limit=1,sort=nearest] interaction set from storage mcpaint:calc interaction
execute as @e[type=armor_stand,tag=mcpaint.fake_player,limit=1,sort=nearest] at @s run function mcpaint:trigger/right_click_studio