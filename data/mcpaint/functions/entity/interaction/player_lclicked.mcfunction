data modify storage mcpaint:calc interactor set from entity @s {}
scoreboard players set #lclick_responder mcpaint.calc 0
execute store result score #current_time mcpaint.calc run time query gametime

tag @e[type=interaction,tag=mcpaint.clickable_interaction.lclick_responder,distance=..8] remove mcpaint.clickable_interaction.lclick_responder
execute as @e[type=interaction,tag=mcpaint.clickable_interaction,predicate=mcpaint:interaction_attacked,distance=..8] at @s run function mcpaint:entity/interaction/verify_lclick

execute if score #lclick_responder mcpaint.calc matches 0 run return 0

execute as @e[type=interaction,tag=mcpaint.clickable_interaction.lclick_responder,distance=..8,limit=1] at @s run function mcpaint:entity/interaction/get_lclicked