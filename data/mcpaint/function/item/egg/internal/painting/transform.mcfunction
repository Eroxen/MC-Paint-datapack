tellraw @a[distance=..32] {"translate":"mcpaint.message.egg_banter.3"}

scoreboard players set #width mcpaint.calc 1
scoreboard players set #height mcpaint.calc 1

execute align xyz positioned ~ ~-2 ~ if entity @s[dx=0,dy=0,dz=0] run scoreboard players add #height mcpaint.calc 1
execute align xyz positioned ~ ~-1 ~ if entity @s[dx=0,dy=0,dz=0] run scoreboard players add #height mcpaint.calc 1
execute align xyz positioned ~ ~1 ~ if entity @s[dx=0,dy=0,dz=0] run scoreboard players add #height mcpaint.calc 1

execute align xyz positioned ^1 ^ ^ if entity @s[dx=0,dy=0,dz=0] run scoreboard players add #width mcpaint.calc 1
execute align xyz positioned ^2 ^ ^ if entity @s[dx=0,dy=0,dz=0] run scoreboard players add #width mcpaint.calc 1
execute align xyz positioned ^-2 ^ ^ if entity @s[dx=0,dy=0,dz=0] run scoreboard players add #width mcpaint.calc 1
execute align xyz positioned ^-1 ^ ^ if entity @s[dx=0,dy=0,dz=0] run scoreboard players add #width mcpaint.calc 1

execute if score #width mcpaint.calc matches 5.. run scoreboard players set #width mcpaint.calc 4

execute if score #height mcpaint.calc matches 1 positioned ^-0.25 ^ ^ run function mcpaint:item/egg/internal/painting/spawn_studio
execute if score #height mcpaint.calc matches 2..3 positioned ^-0.25 ^-1 ^ run function mcpaint:item/egg/internal/painting/spawn_studio
execute if score #height mcpaint.calc matches 4 positioned ^-0.25 ^-2 ^ run function mcpaint:item/egg/internal/painting/spawn_studio

playsound minecraft:entity.generic.explode block @a[distance=..16] ~ ~ ~ 1 1
particle explosion_emitter
kill @s