execute at @s anchored eyes positioned ^ ^ ^3 run tag @e[type=marker,tag=mcpaint.studio.marker,distance=..16,limit=1,sort=nearest] add mcpaint.fix_maybe
execute at @s anchored eyes positioned ^ ^ ^3 run tag @e[type=marker,tag=mcpaint.custom_painting.marker,distance=..16,limit=1,sort=nearest] add mcpaint.fix_maybe

tag @e[type=marker,tag=mcpaint.fix_maybe,limit=1,sort=nearest] add mcpaint.fix

execute at @e[type=marker,tag=mcpaint.fix,limit=1,sort=nearest] run particle explosion
execute as @e[type=marker,tag=mcpaint.fix,limit=1,sort=nearest] if entity @s[tag=mcpaint.studio.marker] at @s run function mcpaint:studio/fix
execute as @e[type=marker,tag=mcpaint.fix,limit=1,sort=nearest] if entity @s[tag=mcpaint.custom_painting.marker] at @s run function mcpaint:custom_painting/fix

tag @e[type=marker,tag=mcpaint.fix] remove mcpaint.fix
tag @e[type=marker,tag=mcpaint.fix_maybe] remove mcpaint.fix_maybe