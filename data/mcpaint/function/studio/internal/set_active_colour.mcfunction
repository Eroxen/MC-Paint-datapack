data modify storage mcpaint:calc internal.studio.data set from entity @s data

execute store success score #studio.changed mcpaint.calc run data modify storage mcpaint:calc internal.studio.data.colour.selected set from storage mcpaint:calc api.studio.active_colour
execute if score #studio.changed mcpaint.calc matches 0 run return fail

execute if data storage mcpaint:calc internal.studio.data.colour{selected_name:"transparent"} run data modify storage mcpaint:calc internal.studio.data.colour.selected_name set value "foreground"
execute if data storage mcpaint:calc internal.studio.data.colour{selected_name:"foreground"} run data modify storage mcpaint:calc internal.studio.data.colour.foreground set from storage mcpaint:calc internal.studio.data.colour.selected
execute if data storage mcpaint:calc internal.studio.data.colour{selected_name:"background"} run data modify storage mcpaint:calc internal.studio.data.colour.background set from storage mcpaint:calc internal.studio.data.colour.selected
function mcpaint:studio/internal/event/colour_changed

data modify entity @s data set from storage mcpaint:calc internal.studio.data