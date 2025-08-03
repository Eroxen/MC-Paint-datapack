function mcpaint:datafixer/internal/pre_update

execute if score #datafixer.from_version mcpaint.calc matches ..0 on passengers if entity @s[type=item_display] run data modify entity @s transformation set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}
execute if score #datafixer.from_version mcpaint.calc matches ..0 on passengers if entity @s[type=item_display] run data remove entity @s item.components."minecraft:custom_model_data"
execute if score #datafixer.from_version mcpaint.calc matches ..0 on passengers if entity @s[type=item_display] run data modify entity @s item.components."minecraft:item_model" set value "mcpaint:paint_bucket/ground"

function mcpaint:datafixer/internal/post_update