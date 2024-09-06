execute on target run function mcpaint:studio/api/get_active_colour
execute if data storage mcpaint:calc api.studio{active_colour:-1} run return fail
data modify storage mcpaint:calc internal.paint_bucket.interaction set value {}
data modify storage mcpaint:calc internal.paint_bucket.interaction.set_colour set from storage mcpaint:calc api.studio.active_colour
function mcpaint:item/paint_bucket/internal/interaction/perform