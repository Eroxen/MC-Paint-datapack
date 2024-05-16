#####################################################################
# custom_painting/api/spawn.mcfunction
# written by Eroxen
#
# Summons a new studio.
#
# Storage input:
# - mcpaint:calc api.custom_painting.spawn:
#   - facing_axis: facing axis
#   - facing: direction
#   - filepath: filepath
#   - options: options
#####################################################################

data modify storage mcpaint:calc internal.database.filepath set from storage mcpaint:calc api.custom_painting.spawn.filepath
function mcpaint:database/api/get_work with storage mcpaint:calc internal.database.filepath
execute if score #database.found mcpaint.calc matches 0 run return run loot spawn ~ ~ ~ loot mcpaint:item/vanilla_painting

playsound minecraft:entity.painting.place block @a[distance=..16] ~ ~ ~ 1 1
data modify storage mcpaint:calc internal.custom_painting.spawn set value {vertical_direction:"level",facing:"north",rotation:[-180f,0f]}
data modify storage mcpaint:calc internal.custom_painting.spawn merge from storage mcpaint:calc api.custom_painting.spawn
data modify storage mcpaint:calc internal.custom_painting.spawn.canvas set from storage mcpaint:calc api.database.work.canvas

data modify storage mcpaint:calc internal.custom_painting.spawn.y_rotation set from storage mcpaint:calc internal.custom_painting.spawn.rotation[0]
data modify storage mcpaint:calc internal.custom_painting.spawn.x_rotation set from storage mcpaint:calc internal.custom_painting.spawn.rotation[1]

function mcpaint:assets/api/studio/get_background_model
data modify storage mcpaint:calc internal.custom_painting.spawn.background_item set from storage mcpaint:calc api.assets.item
data modify storage mcpaint:calc internal.custom_painting.spawn.background_transform set value {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0.25f],scale:[1f,1f,1f]}

data modify storage mcpaint:calc api.canvas.get_transformation set value {offset_z:-0.1875f}
function mcpaint:canvas/api/get_transformation_painting
data modify storage mcpaint:calc internal.custom_painting.spawn.canvas_transform set from storage mcpaint:calc api.canvas.get_transformation.transformation

execute unless data storage mcpaint:calc internal.custom_painting.spawn{facing_axis:"y"} align xyz positioned ~0.5 ~0.5 ~0.5 run function mcpaint:custom_painting/internal/spawn/vertical with storage mcpaint:calc internal.custom_painting.spawn
execute if data storage mcpaint:calc internal.custom_painting.spawn{facing_axis:"y"} align xyz positioned ~0.5 ~0.5 ~0.5 run function mcpaint:custom_painting/internal/spawn/horizontal with storage mcpaint:calc internal.custom_painting.spawn
execute align xyz positioned ~0.5 ~0.5 ~0.5 run function mcpaint:custom_painting/internal/spawn/summon with storage mcpaint:calc internal.custom_painting.spawn