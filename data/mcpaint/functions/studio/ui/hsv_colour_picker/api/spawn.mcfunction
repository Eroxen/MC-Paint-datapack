#####################################################################
# studio/ui/colour_picker/api/spawn.mcfunction
# written by Eroxen
#
# Executed as the studio marker.
# Opens the colour picker window.
#####################################################################

scoreboard players set #studio.ui_element.pos.u mcpaint.calc 1250
scoreboard players set #studio.ui_element.pos.v mcpaint.calc -250
scoreboard players set #studio.ui_element.layer mcpaint.calc 0

data modify storage mcpaint:calc internal.studio.ui.definition set value {name:"hsv_colour_picker",size:[1000,1500],origin:[500,1500]}
function mcpaint:studio/internal/ui/spawn_element/init_values

### init data ###
data modify storage mcpaint:calc internal.studio.ui.data merge value {selected_name:"foreground",foreground_colour:0,background_colour:0,hsv:[0f,0f,0f],text_macro:{foreground:"#000000",background:"#000000",sv_square:"00"}}
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
execute store result storage mcpaint:calc api.util.int int 1 run data get storage mcpaint:calc internal.studio.ui.data.hsv[0] 0.711111111111111
function mcpaint:util/api/int_to_hexadecimal_len2
data modify storage mcpaint:calc internal.studio.ui.data.text_macro.sv_square set from storage mcpaint:calc api.util.hex

### selected slot ###
data modify storage mcpaint:calc internal.studio.ui.data.text_macro.selected_slot set value "0002"
execute if data storage mcpaint:calc internal.studio.ui.data{selected_name:"background"} run data modify storage mcpaint:calc internal.studio.ui.data.text_macro.selected_slot set value "0003"
execute if data storage mcpaint:calc internal.studio.ui.data{selected_name:"transparent"} run data modify storage mcpaint:calc internal.studio.ui.data.text_macro.selected_slot set value "0004"



function mcpaint:studio/ui/hsv_colour_picker/internal/generate_text with storage mcpaint:calc internal.studio.ui.data.text_macro


function mcpaint:studio/ui/hsv_colour_picker/internal/summon with storage mcpaint:calc internal.studio.ui.spawn