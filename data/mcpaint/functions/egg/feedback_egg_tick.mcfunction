scoreboard players add @s mcpaint.calc 1


execute if score @s mcpaint.calc matches 2 run data modify entity @e[type=item_display,tag=mcpaint.feedback_egg.item_display,distance=..0.1,limit=1] transformation merge value {scale:[1.3f,1.3f,1f],translation:[0f,0f,0f]}
execute if score @s mcpaint.calc matches 2 run data merge entity @e[type=item_display,tag=mcpaint.feedback_egg.item_display,distance=..0.1,limit=1] {start_interpolation:0,interpolation_duration:10}


execute if score send_egg_chat mcpaint.config matches 1 if score @s mcpaint.calc matches 20 run tellraw @a[distance=..32] {"translate":"mcpaint.cutscene.egg.1"}


execute if score @s mcpaint.calc matches 40 run data modify entity @e[type=item_display,tag=mcpaint.feedback_egg.item_display,distance=..0.1,limit=1] transformation merge value {translation:[0f,-0.15f,0f],left_rotation:[0f,0f,0.196f,-0.981f]}
execute if score @s mcpaint.calc matches 40 run data merge entity @e[type=item_display,tag=mcpaint.feedback_egg.item_display,distance=..0.1,limit=1] {start_interpolation:0,interpolation_duration:10}


execute if score @s mcpaint.calc matches 60 run data modify entity @e[type=item_display,tag=mcpaint.feedback_egg.item_display,distance=..0.1,limit=1] transformation merge value {translation:[0f,-0.3f,0f],left_rotation:[0f,0f,-0.056f,-0.998f]}
execute if score @s mcpaint.calc matches 60 run data merge entity @e[type=item_display,tag=mcpaint.feedback_egg.item_display,distance=..0.1,limit=1] {start_interpolation:0,interpolation_duration:10}
execute if score send_egg_chat mcpaint.config matches 1 if score @s mcpaint.calc matches 60 run tellraw @a[distance=..32] {"translate":"mcpaint.cutscene.egg.2"}


execute if score send_egg_chat mcpaint.config matches 1 if score @s mcpaint.calc matches 100 run tellraw @a[distance=..32] {"translate":"mcpaint.cutscene.egg.3"}
execute if score @s mcpaint.calc matches 100 align x align y align z run kill @e[type=painting,dx=0,dy=0,dz=0]
execute if score @s mcpaint.calc matches 100 run particle minecraft:explosion_emitter ~ ~ ~
execute if score @s mcpaint.calc matches 100 run playsound minecraft:entity.generic.explode block @a[distance=..32] ~ ~ ~ 1 1
execute if score @s mcpaint.calc matches 100 run data modify storage mcpaint:calc spawn_studio set value {}
execute if score @s mcpaint.calc matches 100 run data modify storage mcpaint:calc spawn_studio.facing set from entity @s data.facing
execute if score @s mcpaint.calc matches 100 if data entity @s data.painting_size run data modify storage mcpaint:calc spawn_studio.size set from entity @s data.painting_size
execute if score @s mcpaint.calc matches 100 if data entity @s data.painting_size run data modify entity @s Pos set from entity @s data.painting_pos
execute if score @s mcpaint.calc matches 100 at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 unless entity @e[type=marker,tag=mcpaint.studio.marker,distance=..0.1,limit=1] run function mcpaint:studio/spawn
execute if score @s mcpaint.calc matches 100 run advancement grant @a[distance=..32] only mcpaint:guide/apply_egg

execute if score @s mcpaint.calc matches 100.. run kill @e[type=item_display,tag=mcpaint.feedback_egg.item_display,distance=..0.1]
execute if score @s mcpaint.calc matches 100.. run kill @s