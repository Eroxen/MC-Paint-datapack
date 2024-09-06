data modify storage mcpaint:calc internal.studio.data set from entity @s data
data modify storage mcpaint:calc api.canvas.canvas set from storage mcpaint:calc internal.studio.data.canvas
execute store success storage mcpaint:calc internal.studio.data.display_settings.axis_shading byte 1 unless data storage mcpaint:calc internal.studio.data.display_settings{axis_shading:1b}
function mcpaint:studio/api/update_canvas
data modify entity @s data set from storage mcpaint:calc internal.studio.data
