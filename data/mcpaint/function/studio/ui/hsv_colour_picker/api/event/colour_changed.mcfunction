data modify storage mcpaint:calc internal.studio.ui.data set from entity @s data

data modify storage mcpaint:calc internal.studio.ui.data.foreground_colour set from storage mcpaint:calc internal.studio.data.colour.foreground
data modify storage mcpaint:calc internal.studio.ui.data.background_colour set from storage mcpaint:calc internal.studio.data.colour.background
data modify storage mcpaint:calc internal.studio.ui.data.selected_name set from storage mcpaint:calc internal.studio.data.colour.selected_name

### fg & bg colour to text ###
data modify storage mcpaint:calc api.util.colour.int set from storage mcpaint:calc internal.studio.ui.data.foreground_colour
function mcpaint:util/colour/api/int_to_html
data modify storage mcpaint:calc internal.studio.ui.data.text_macro.foreground set from storage mcpaint:calc api.util.colour.html
data modify storage mcpaint:calc api.util.colour.int set from storage mcpaint:calc internal.studio.ui.data.background_colour
function mcpaint:util/colour/api/int_to_html
data modify storage mcpaint:calc internal.studio.ui.data.text_macro.background set from storage mcpaint:calc api.util.colour.html

### fg or bg colour to hsv ###
data modify storage mcpaint:calc api.util.colour.int set from storage mcpaint:calc internal.studio.ui.data.foreground_colour
execute if data storage mcpaint:calc internal.studio.ui.data{selected_name:"background"} run data modify storage mcpaint:calc api.util.colour.int set from storage mcpaint:calc internal.studio.ui.data.background_colour
function mcpaint:util/colour/api/int_to_hsv
data modify storage mcpaint:calc internal.studio.ui.data.hsv set from storage mcpaint:calc api.util.colour.hsv

### sv square ###
function mcpaint:studio/ui/hsv_colour_picker/internal/update_hsv_display
### selected slot ###
data modify storage mcpaint:calc internal.studio.ui.data.text_macro.selected_slot set value "0002"
execute if data storage mcpaint:calc internal.studio.ui.data{selected_name:"background"} run data modify storage mcpaint:calc internal.studio.ui.data.text_macro.selected_slot set value "0003"
execute if data storage mcpaint:calc internal.studio.ui.data{selected_name:"transparent"} run data modify storage mcpaint:calc internal.studio.ui.data.text_macro.selected_slot set value "0004"

function mcpaint:studio/ui/hsv_colour_picker/internal/generate_text with storage mcpaint:calc internal.studio.ui.data.text_macro
execute on vehicle run data modify entity @s text set from storage mcpaint:calc internal.studio.ui.data.text

data modify entity @s data set from storage mcpaint:calc internal.studio.ui.data