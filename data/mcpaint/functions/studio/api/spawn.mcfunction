#####################################################################
# studio/api/spawn.mcfunction
# written by Eroxen
#
# Summons a new studio.
#
# Storage input:
# - mcpaint:calc api.studio.spawn:
#   - width: block width
#   - height: block height
#   - facing: direction
#   - (optional) canvas: canvas object
#####################################################################

playsound minecraft:block.wood.place block @a[distance=..16] ~ ~ ~ 1 1
data modify storage mcpaint:calc internal.studio.spawn set value {width:1,height:1,facing:"north",y_rotation:-180f,display_settings:{axis_shading:1b,background_variant:"canvas"}}
data modify storage mcpaint:calc internal.studio.spawn merge from storage mcpaint:calc api.studio.spawn
execute unless data storage mcpaint:calc internal.studio.spawn.canvas run function mcpaint:studio/internal/spawn/init_canvas

execute if data storage mcpaint:calc internal.studio.spawn{facing:"east"} run data modify storage mcpaint:calc internal.studio.spawn.y_rotation set value -90f
execute if data storage mcpaint:calc internal.studio.spawn{facing:"south"} run data modify storage mcpaint:calc internal.studio.spawn.y_rotation set value 0f
execute if data storage mcpaint:calc internal.studio.spawn{facing:"west"} run data modify storage mcpaint:calc internal.studio.spawn.y_rotation set value 90f

data modify storage mcpaint:calc api.assets.get_model set value {z_origin:0.5f,width:1,height:1,variant:"canvas",enforce_surface:0.0625f}
data modify storage mcpaint:calc api.assets.get_model.width set from storage mcpaint:calc internal.studio.spawn.width
data modify storage mcpaint:calc api.assets.get_model.height set from storage mcpaint:calc internal.studio.spawn.height
data modify storage mcpaint:calc api.assets.get_model.variant set from storage mcpaint:calc internal.studio.spawn.display_settings.background_variant
function mcpaint:assets/api/get_painting_background
data modify storage mcpaint:calc internal.studio.spawn.background_item set from storage mcpaint:calc api.assets.model.item
data modify storage mcpaint:calc internal.studio.spawn.background_transform set from storage mcpaint:calc api.assets.model.transformation
function mcpaint:assets/api/get_studio_border
data modify storage mcpaint:calc internal.studio.spawn.border_item set from storage mcpaint:calc api.assets.model.item
data modify storage mcpaint:calc internal.studio.spawn.border_transform set from storage mcpaint:calc api.assets.model.transformation

data modify storage mcpaint:calc api.canvas.get_transformation set value {offset_z:-0.4375f}
function mcpaint:canvas/api/get_transformation_painting
data modify storage mcpaint:calc internal.studio.spawn.canvas_transform set from storage mcpaint:calc api.canvas.get_transformation.transformation


execute align xyz positioned ~0.5 ~0.5 ~0.5 run function mcpaint:studio/internal/spawn/summon with storage mcpaint:calc internal.studio.spawn