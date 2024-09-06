data modify storage mcpaint:calc internal.paint_bucket.data set from entity @s item.components.minecraft:custom_data.mcpaint
execute store success score #different mcpaint.calc run data modify storage mcpaint:calc internal.paint_bucket.data.colour set from storage mcpaint:calc internal.paint_bucket.interaction.set_colour
execute if score #different mcpaint.calc matches 0 run return fail

data modify storage mcpaint:calc api.util.colour.int set from storage mcpaint:calc internal.paint_bucket.data.colour
function mcpaint:util/colour/api/int_to_potion
playsound minecraft:item.ink_sac.use block @a[distance=..32]
data modify entity @s item.components.minecraft:potion_contents.custom_color set from storage mcpaint:calc api.util.colour.potion
function mcpaint:util/colour/api/int_to_rgba
function mcpaint:item/paint_bucket/internal/interaction/particles with storage mcpaint:calc api.util.colour

data modify entity @s item.components.minecraft:custom_data.mcpaint set from storage mcpaint:calc internal.paint_bucket.data