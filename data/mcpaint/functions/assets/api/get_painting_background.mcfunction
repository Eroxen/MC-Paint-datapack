#####################################################################
# assets/api/get_painting_background.mcfunction
# written by Eroxen
#
# Gets the model of the background of a painting or the studio.
#
# Storage input:
# - mcpaint:calc api.assets.get_model:
#   - (width): (int) block width
#   - (height): (int) block height
#   - (variant): (string) skin variant, default "canvas"
#   - (z_origin): (float) surface height of the display entity 
#
# Storage output :
# - mcpaint:calc api.assets.model:
#   - item: (itemStack) item
#   - transformation: item display transformation
#   - surface: (float) surface height for the painting ink
#####################################################################

data modify storage mcpaint:calc api.assets.model set value {surface:0.0625f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0.5f],scale:[1f,1f,1f]}}
data modify storage mcpaint:calc internal.assets.lookup set value {filter:{id:"painting_background",variant:"canvas",width:1,height:1},z_origin:0f}
data modify storage mcpaint:calc internal.assets.lookup.z_origin set from storage mcpaint:calc api.assets.get_model.z_origin
data modify storage mcpaint:calc internal.assets.lookup.filter.width set from storage mcpaint:calc api.assets.get_model.width
data modify storage mcpaint:calc internal.assets.lookup.filter.height set from storage mcpaint:calc api.assets.get_model.height
data modify storage mcpaint:calc internal.assets.lookup.filter.variant set from storage mcpaint:calc api.assets.get_model.variant
execute unless data storage mcpaint:calc api.assets.get_model{variant:"empty"} run function mcpaint:assets/internal/lookup with storage mcpaint:calc internal.assets.lookup

data modify storage mcpaint:calc api.assets.model.item set from storage mcpaint:calc internal.assets.lookup.return.item
data modify storage mcpaint:calc api.assets.model.surface set from storage mcpaint:calc internal.assets.lookup.return.surface
execute unless data storage mcpaint:calc api.assets.model.item run data modify storage mcpaint:calc api.assets.model merge value {item:{id:"minecraft:orange_tulip"},transformation:{scale:[0f,0f,0f]},surface:0f}

execute store result score #assets.z_origin mcpaint.calc run data get storage mcpaint:calc api.assets.get_model.z_origin 10000
execute store result score #assets.z mcpaint.calc run data get storage mcpaint:calc api.assets.model.surface 10000
scoreboard players operation #assets.z mcpaint.calc -= #assets.z_origin mcpaint.calc
execute store result storage mcpaint:calc api.assets.model.surface float 0.0001 run scoreboard players get #assets.z mcpaint.calc
execute store result score #assets.z mcpaint.calc run data get storage mcpaint:calc api.assets.model.transformation.translation[2] 10000
scoreboard players operation #assets.z mcpaint.calc -= #assets.z_origin mcpaint.calc
execute store result storage mcpaint:calc api.assets.model.transformation.translation[2] float 0.0001 run scoreboard players get #assets.z mcpaint.calc
