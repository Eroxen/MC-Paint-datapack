data modify storage mcpaint:calc api.assets.get_model set value {z_origin:0.25f,width:1,height:1,variant:"canvas"}
data modify storage mcpaint:calc api.assets.get_model.width set from storage mcpaint:calc internal.custom_painting.data.width
data modify storage mcpaint:calc api.assets.get_model.height set from storage mcpaint:calc internal.custom_painting.data.height
data modify storage mcpaint:calc api.assets.get_model.variant set from storage mcpaint:calc internal.custom_painting.data.options.background_variant
function mcpaint:assets/api/get_painting_background
data modify entity @s {} merge from storage mcpaint:calc api.assets.model
execute on passengers if entity @s[type=text_display] run data modify entity @s transformation.translation[2] set from storage mcpaint:calc api.assets.model.surface