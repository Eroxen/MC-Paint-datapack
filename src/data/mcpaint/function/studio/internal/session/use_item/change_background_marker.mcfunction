data modify storage mcpaint:calc internal.studio.data set from entity @s data
execute store success score #studio.changed mcpaint.calc run data modify storage mcpaint:calc internal.studio.data.display_settings.background_variant set from storage mcpaint:calc internal.custom_painting.item_interaction.merge_options.background_variant
execute if score #studio.changed mcpaint.calc matches 0 run return fail

data modify storage mcpaint:calc api.assets.get_model set value {z_origin:0.5f,width:1,height:1,variant:"canvas",enforce_surface:0.0625f}
data modify storage mcpaint:calc api.assets.get_model.width set from storage mcpaint:calc internal.studio.data.width
data modify storage mcpaint:calc api.assets.get_model.height set from storage mcpaint:calc internal.studio.data.height
data modify storage mcpaint:calc api.assets.get_model.variant set from storage mcpaint:calc internal.studio.data.display_settings.background_variant
function mcpaint:assets/api/get_painting_background
execute store result storage mcpaint:calc api.assets.model.width float 1 run scoreboard players get #studio.width mcpaint.calc
execute store result storage mcpaint:calc api.assets.model.height float 1 run scoreboard players get #studio.height mcpaint.calc
data modify entity @e[type=item_display,tag=mcpaint.studio.item_display.background,distance=..0.1,limit=1] {} merge from storage mcpaint:calc api.assets.model

data modify entity @s data set from storage mcpaint:calc internal.studio.data
