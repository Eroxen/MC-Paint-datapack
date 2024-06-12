#####################################################################
# studio/api/destroy.mcfunction
# written by Eroxen
#
# Called on a studio marker.
# Removes the studio.
#####################################################################

playsound minecraft:block.wood.break block @a[distance=..16] ~ ~ ~ 1 1
execute at @s rotated as @s run particle minecraft:block{block_state:{Name:"minecraft:stripped_spruce_log"}} ^ ^-0.125 ^-0.5 0.2 0.4 0.2 0 10

execute at @s align xyz as @e[type=interaction,tag=mcpaint.studio.interaction,dx=0,dy=0,dz=0] positioned ~ ~-1 ~ if entity @s[dx=0,dy=0,dz=0] run kill @s
execute at @s run kill @e[tag=mcpaint.studio,distance=..0.1]