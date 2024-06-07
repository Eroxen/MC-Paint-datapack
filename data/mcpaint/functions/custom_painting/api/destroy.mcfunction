#####################################################################
# custom_painting/api/destroy.mcfunction
# written by Eroxen
#
# Called as the root item display.
# Destroys the painting.
#####################################################################

data modify storage mcpaint:calc internal.custom_painting.data set value {}
data modify storage mcpaint:calc internal.custom_painting.data.options set from storage mcpaint:calc internal.custom_painting.default_options
data modify storage mcpaint:calc internal.custom_painting.data merge from entity @s item.components.minecraft:custom_data.mcpaint.custom_painting
playsound minecraft:entity.painting.break block @a[distance=..16] ~ ~ ~ 1 1
execute on passengers run kill @s
kill @s

data modify storage mcpaint:calc internal.database.filepath set from storage mcpaint:calc internal.custom_painting.data.filepath
function mcpaint:database/api/get_work with storage mcpaint:calc internal.database.filepath
execute if score #database.found mcpaint.calc matches 0 run return run loot spawn ~ ~ ~ loot mcpaint:item/vanilla_painting
data modify storage mcpaint:calc api.canvas.canvas set from storage mcpaint:calc api.database.work.canvas

data modify storage mcpaint:calc internal.custom_painting.item set value {id:"minecraft:item_frame"}
function mcpaint:custom_painting/internal/item/generate_components
function mcpaint:custom_painting/internal/item/spawn_loot with storage mcpaint:calc internal.custom_painting.item