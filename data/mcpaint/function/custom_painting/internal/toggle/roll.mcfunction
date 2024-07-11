function mcpaint:database/api/get_work with entity @s item.components.minecraft:custom_data.mcpaint.custom_painting.filepath
execute if score #database.found mcpaint.calc matches 0 run return fail
data modify storage mcpaint:calc api.canvas.canvas set from storage mcpaint:calc api.database.work.canvas

data modify storage mcpaint:calc internal.temp set value {merge:{start_interpolation:0,interpolation_duration:4}}
$data modify storage mcpaint:calc internal.temp.lookup set from storage mcpaint:calc internal.custom_painting.rolls[$(roll)]
data modify storage mcpaint:calc internal.temp.merge.transformation.left_rotation set from storage mcpaint:calc internal.temp.lookup.left_rotation
data modify entity @s {} merge from storage mcpaint:calc internal.temp.merge
data modify storage mcpaint:calc api.canvas.get_transformation set value {offset_z:0f,roll:0f}
data modify storage mcpaint:calc api.canvas.get_transformation.roll set from storage mcpaint:calc internal.temp.lookup.roll
function mcpaint:canvas/api/get_transformation_painting
execute on passengers if entity @s[type=text_display] run data modify storage mcpaint:calc internal.temp.merge.transformation set from entity @s transformation
data modify storage mcpaint:calc internal.temp.merge.transformation.left_rotation set from storage mcpaint:calc internal.temp.lookup.left_rotation
data modify storage mcpaint:calc internal.temp.merge.transformation.translation[0] set from storage mcpaint:calc api.canvas.get_transformation.transformation.translation[0]
data modify storage mcpaint:calc internal.temp.merge.transformation.translation[1] set from storage mcpaint:calc api.canvas.get_transformation.transformation.translation[1]
execute on passengers if entity @s[type=text_display] run data modify entity @s {} merge from storage mcpaint:calc internal.temp.merge