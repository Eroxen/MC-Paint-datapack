execute if score #paint_bucket.interaction.is_sneaking mcpaint.calc matches 1 run return run function mcpaint:item/paint_bucket/internal/interaction/perform/set_from_studio

execute on passengers if entity @s[type=item_display] run data modify storage mcpaint:calc internal.paint_bucket.data set from entity @s item.components.minecraft:custom_data.mcpaint
data modify storage mcpaint:calc api.studio.active_colour set from storage mcpaint:calc internal.paint_bucket.data.colour
execute on target run function mcpaint:studio/api/set_active_colour
execute if score #studio.changed mcpaint.calc matches 0 run return fail
data modify storage mcpaint:calc api.util.colour.int set from storage mcpaint:calc internal.paint_bucket.data.colour
playsound minecraft:item.ink_sac.use block @a[distance=..32]
function mcpaint:util/colour/api/int_to_rgba
function mcpaint:item/paint_bucket/internal/interaction/particles with storage mcpaint:calc api.util.colour
