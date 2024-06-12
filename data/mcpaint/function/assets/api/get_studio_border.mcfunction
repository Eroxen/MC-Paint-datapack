#####################################################################
# assets/api/get_studio_border.mcfunction
# written by Eroxen
#
# Gets the model of the border of the studio.
#
# Storage input:
# - mcpaint:calc api.assets.get_model:
#   - (width): (int) block width
#   - (height): (int) block height
#   - (z_origin): (float) surface height of the display entity 
#
# Storage output :
# - mcpaint:calc api.assets.model:
#   - item: (itemStack) item
#   - transformation: item display transformation
#####################################################################

data modify storage mcpaint:calc api.assets.model set value {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0.5f],scale:[1f,1f,1f]}}
data modify storage mcpaint:calc internal.assets.lookup set value {filter:{id:"studio_border",width:1,height:1},z_origin:0f}
data modify storage mcpaint:calc internal.assets.lookup.z_origin set from storage mcpaint:calc api.assets.get_model.z_origin
data modify storage mcpaint:calc internal.assets.lookup.filter.width set from storage mcpaint:calc api.assets.get_model.width
data modify storage mcpaint:calc internal.assets.lookup.filter.height set from storage mcpaint:calc api.assets.get_model.height
function mcpaint:assets/internal/lookup with storage mcpaint:calc internal.assets.lookup

data modify storage mcpaint:calc api.assets.model.item set from storage mcpaint:calc internal.assets.lookup.return.item
execute unless data storage mcpaint:calc api.assets.model.item run data modify storage mcpaint:calc api.assets.model merge value {item:{id:"minecraft:orange_tulip"},transformation:{scale:[0f,0f,0f]}}

execute store result score #assets.z_origin mcpaint.calc run data get storage mcpaint:calc api.assets.get_model.z_origin 10000
execute store result score #assets.z mcpaint.calc run data get storage mcpaint:calc api.assets.model.transformation.translation[2] 10000
scoreboard players operation #assets.z mcpaint.calc -= #assets.z_origin mcpaint.calc
execute store result storage mcpaint:calc api.assets.model.transformation.translation[2] float 0.0001 run scoreboard players get #assets.z mcpaint.calc
