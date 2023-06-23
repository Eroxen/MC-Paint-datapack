tag @e[type=marker,tag=mcpaint.computer.marker.targeted,distance=..16] remove mcpaint.computer.marker.targeted

data modify storage mcpaint:calc interactor set from entity @s {}
execute as @e[type=interaction,tag=mcpaint.computer.interaction,predicate=mcpaint:interaction_interacted,distance=..8] at @s run function mcpaint:block/computer/verify_rclick

execute at @e[type=marker,tag=mcpaint.computer.marker.targeted,distance=..16,limit=1,sort=nearest] run function mcpaint:block/computer/rclick

advancement revoke @s only mcpaint:trigger/rclick_computer
tag @e[type=marker,tag=mcpaint.computer.marker.targeted,distance=..16] remove mcpaint.computer.marker.targeted