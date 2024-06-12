execute if data storage mcpaint:calc internal.studio.ui.data{selected_name:"foreground"} run data modify storage mcpaint:calc api.util.colour.int set from storage mcpaint:calc internal.studio.ui.data.foreground_colour
execute if data storage mcpaint:calc internal.studio.ui.data{selected_name:"background"} run data modify storage mcpaint:calc api.util.colour.int set from storage mcpaint:calc internal.studio.ui.data.background_colour
function mcpaint:util/colour/api/int_to_hsv
data modify storage mcpaint:calc internal.studio.ui.data.hsv set from storage mcpaint:calc api.util.colour.hsv

function mcpaint:studio/ui/hsv_colour_picker/internal/update_hsv_display