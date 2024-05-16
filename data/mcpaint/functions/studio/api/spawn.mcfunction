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
data modify storage mcpaint:calc internal.studio.spawn set value {width:1,height:1,facing:"north",y_rotation:-180f}
data modify storage mcpaint:calc internal.studio.spawn merge from storage mcpaint:calc api.studio.spawn
execute unless data storage mcpaint:calc internal.studio.spawn.canvas run function mcpaint:studio/internal/spawn/init_canvas

execute if data storage mcpaint:calc internal.studio.spawn{facing:"east"} run data modify storage mcpaint:calc internal.studio.spawn.y_rotation set value -90f
execute if data storage mcpaint:calc internal.studio.spawn{facing:"south"} run data modify storage mcpaint:calc internal.studio.spawn.y_rotation set value 0f
execute if data storage mcpaint:calc internal.studio.spawn{facing:"west"} run data modify storage mcpaint:calc internal.studio.spawn.y_rotation set value 90f

function mcpaint:assets/api/studio/get_border_model
data modify storage mcpaint:calc internal.studio.spawn.border_item set from storage mcpaint:calc api.assets.item
function mcpaint:assets/api/studio/get_background_model
data modify storage mcpaint:calc internal.studio.spawn.background_item set from storage mcpaint:calc api.assets.item

data modify storage mcpaint:calc api.canvas.get_transformation set value {offset_z:-0.4375f}
function mcpaint:canvas/api/get_transformation_painting
data modify storage mcpaint:calc internal.studio.spawn.canvas_transform set from storage mcpaint:calc api.canvas.get_transformation.transformation


execute align xyz positioned ~0.5 ~0.5 ~0.5 run function mcpaint:studio/internal/spawn/summon with storage mcpaint:calc internal.studio.spawn