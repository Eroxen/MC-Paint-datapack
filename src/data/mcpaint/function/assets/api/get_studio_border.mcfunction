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
#
# Storage output :
# - mcpaint:calc api.assets.model:
#   - item: (itemStack) item
#   - transformation: item display transformation
#####################################################################

data modify storage mcpaint:calc api.assets.model.item set value {id:"minecraft:poisonous_potato",count:1,components:{"minecraft:item_model":"mcpaint:studio_border","minecraft:custom_model_data":{floats:[1f,1f]}}}
execute store result storage mcpaint:calc api.assets.model.item.components.minecraft:custom_model_data.floats[0] float 1 run data get storage mcpaint:calc api.assets.get_model.width
execute store result storage mcpaint:calc api.assets.model.item.components.minecraft:custom_model_data.floats[1] float 1 run data get storage mcpaint:calc api.assets.get_model.height