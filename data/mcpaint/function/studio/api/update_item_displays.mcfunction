#####################################################################
# studio/api/update_item_displays.mcfunction
# written by Eroxen
#
# Called on a studio marker.
# Reapplies the items for the background and frame.
#####################################################################
data modify storage mcpaint:calc internal.studio.data set from entity @s data
data modify storage mcpaint:calc api.assets.get_model set value {z_origin:0.5f,width:1,height:1,variant:"canvas",enforce_surface:0.0625f}
data modify storage mcpaint:calc api.assets.get_model.width set from storage mcpaint:calc internal.studio.data.width
data modify storage mcpaint:calc api.assets.get_model.height set from storage mcpaint:calc internal.studio.data.height
data modify storage mcpaint:calc api.assets.get_model.variant set from storage mcpaint:calc internal.studio.data.display_settings.background_variant
function mcpaint:assets/api/get_painting_background
execute store result storage mcpaint:calc api.assets.model.width float 1 run data get storage mcpaint:calc internal.studio.data.width
execute store result storage mcpaint:calc api.assets.model.height float 1 run data get storage mcpaint:calc internal.studio.data.height
execute at @s run data modify entity @e[type=item_display,tag=mcpaint.studio.item_display.background,distance=..0.1,limit=1] {} merge from storage mcpaint:calc api.assets.model
function mcpaint:assets/api/get_studio_border
execute store result storage mcpaint:calc api.assets.model.width float 1 run data get storage mcpaint:calc internal.studio.data.width
execute store result storage mcpaint:calc api.assets.model.height float 1 run data get storage mcpaint:calc internal.studio.data.height
execute at @s run data modify entity @e[type=item_display,tag=mcpaint.studio.item_display.border,distance=..0.1,limit=1] {} merge from storage mcpaint:calc api.assets.model
