execute on origin run advancement grant @s only mcpaint:guide/apply_egg

$execute $(align)run summon item_display ~ ~ ~ {Rotation:$(rotation),item:{id:"minecraft:orange_tulip",components:{"minecraft:custom_model_data":360064}},Tags:["mcpaint.entity","mcpaint.egg_splat","mcpaint.egg_splat.new"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0.15f],scale:[0.9f,0.9f,1.4f]}}
$execute $(align)as @e[type=item_display,tag=mcpaint.egg_splat.new,distance=..0.1,limit=1] run function mcpaint:item/egg/internal/splat/init
kill @s