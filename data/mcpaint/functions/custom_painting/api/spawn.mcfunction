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

data modify storage mcpaint:calc internal.custom_painting.user set from storage mcpaint:calc api.trigger_item_frame.placer.UUID
data modify storage mcpaint:calc internal.database.filepath set from storage mcpaint:calc api.custom_painting.spawn.filepath
function mcpaint:database/api/get_work with storage mcpaint:calc internal.database.filepath
execute if score #database.found mcpaint.calc matches 0 run return run loot spawn ~ ~ ~ loot mcpaint:item/vanilla_painting
data modify storage mcpaint:calc api.canvas.canvas set from storage mcpaint:calc api.database.work.canvas
function mcpaint:canvas/api/get_info

playsound minecraft:entity.painting.place block @a[distance=..16] ~ ~ ~ 1 1
data modify storage mcpaint:calc internal.custom_painting.spawn set value {vertical_direction:"level",facing:"north",rotation:[-180f,0f],width:1f,height:1f}
data modify storage mcpaint:calc internal.custom_painting.spawn merge from storage mcpaint:calc api.custom_painting.spawn

execute if data storage mcpaint:calc api.custom_painting.spawn{facing_axis:"y"} run scoreboard players operation #canvas.width_blocks mcpaint.calc > #canvas.height_blocks mcpaint.calc
execute store result storage mcpaint:calc internal.custom_painting.spawn.width float 1 run scoreboard players get #canvas.width_blocks mcpaint.calc
execute unless data storage mcpaint:calc api.custom_painting.spawn{facing_axis:"y"} store result storage mcpaint:calc internal.custom_painting.spawn.height float 1 run scoreboard players get #canvas.height_blocks mcpaint.calc

data modify storage mcpaint:calc internal.custom_painting.spawn.y_rotation set from storage mcpaint:calc internal.custom_painting.spawn.rotation[0]
data modify storage mcpaint:calc internal.custom_painting.spawn.x_rotation set from storage mcpaint:calc internal.custom_painting.spawn.rotation[1]

data modify storage mcpaint:calc api.assets.get_model set value {z_origin:0.25f,width:1,height:1,variant:"canvas"}
data modify storage mcpaint:calc api.assets.get_model.variant set from storage mcpaint:calc api.custom_painting.spawn.options.background_variant
data modify storage mcpaint:calc api.assets.get_model.width set from storage mcpaint:calc api.canvas.canvas.width_blocks
data modify storage mcpaint:calc api.assets.get_model.height set from storage mcpaint:calc api.canvas.canvas.height_blocks
function mcpaint:assets/api/get_painting_background
data modify storage mcpaint:calc internal.custom_painting.spawn.background_item set from storage mcpaint:calc api.assets.model.item
data modify storage mcpaint:calc internal.custom_painting.spawn.background_transform set from storage mcpaint:calc api.assets.model.transformation

data modify storage mcpaint:calc api.canvas.get_transformation set value {offset_z:0f}
data modify storage mcpaint:calc api.canvas.get_transformation.offset_z set from storage mcpaint:calc api.assets.model.surface
function mcpaint:canvas/api/get_transformation_painting
data modify storage mcpaint:calc internal.custom_painting.spawn.canvas_transform set from storage mcpaint:calc api.canvas.get_transformation.transformation

execute unless data storage mcpaint:calc internal.custom_painting.spawn{facing_axis:"y"} align xyz positioned ~0.5 ~0.5 ~0.5 run function mcpaint:custom_painting/internal/spawn/vertical with storage mcpaint:calc internal.custom_painting.spawn
execute if data storage mcpaint:calc internal.custom_painting.spawn{facing_axis:"y"} align xyz positioned ~0.5 ~0.5 ~0.5 run function mcpaint:custom_painting/internal/spawn/horizontal with storage mcpaint:calc internal.custom_painting.spawn
execute align xyz positioned ~0.5 ~0.5 ~0.5 run function mcpaint:custom_painting/internal/spawn/summon with storage mcpaint:calc internal.custom_painting.spawn