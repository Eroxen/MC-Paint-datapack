data modify storage mcpaint:calc api.canvas.get_pixel set value {u:0,v:0}
execute store result storage mcpaint:calc api.canvas.get_pixel.u int 1 run scoreboard players get #studio.ui_element.v.px mcpaint.calc
execute store result storage mcpaint:calc api.canvas.get_pixel.v int 1 run scoreboard players get #studio.ui_element.u.px mcpaint.calc
function mcpaint:canvas/api/get_pixel

execute store success score #studio.ui_element.temp mcpaint.calc run data modify storage mcpaint:calc internal.studio.data.colour.selected set from storage mcpaint:calc api.canvas.get_pixel.colour
execute if score #studio.ui_element.temp mcpaint.calc matches 0 run return 0

execute if data storage mcpaint:calc internal.studio.data.colour{selected_name:"transparent"} run data modify storage mcpaint:calc internal.studio.data.colour.selected_name set value "foreground"
execute if data storage mcpaint:calc internal.studio.data.colour{selected:-1} run data modify storage mcpaint:calc internal.studio.data.colour.selected_name set value "transparent"
execute if data storage mcpaint:calc internal.studio.data.colour{selected_name:"foreground"} run data modify storage mcpaint:calc internal.studio.data.colour.foreground set from storage mcpaint:calc api.canvas.get_pixel.colour
execute if data storage mcpaint:calc internal.studio.data.colour{selected_name:"background"} run data modify storage mcpaint:calc internal.studio.data.colour.background set from storage mcpaint:calc api.canvas.get_pixel.colour
function mcpaint:studio/internal/event/colour_changed