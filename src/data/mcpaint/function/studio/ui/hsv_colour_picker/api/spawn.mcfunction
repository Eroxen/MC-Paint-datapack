#####################################################################
# studio/ui/colour_picker/api/spawn.mcfunction
# written by Eroxen
#
# Executed as the studio marker.
# Opens the colour picker window.
#####################################################################

data modify storage mcpaint:calc internal.studio.anchored_pos set value {anchor:[1f,0.5f],offset:[0.250f,-0.750f]}
function mcpaint:studio/internal/ui/spawn_element/anchored_pos
scoreboard players set #studio.ui_element.layer mcpaint.calc 0

data modify storage mcpaint:calc internal.studio.ui.definition set value {name:"hsv_colour_picker",size:[1000,1500],origin:[500,1500]}
function mcpaint:studio/internal/ui/spawn_element/init_values
function mcpaint:studio/internal/ui/spawn_element/additional_transform {key:"dart_origin",relative:{translation:[0f,-0.5625f,0.01f]}}

### init data ###
data modify storage mcpaint:calc internal.studio.ui.data merge value {selected_name:"foreground",foreground_colour:0,background_colour:0,hsv:[0f,0f,0f],text_macro:{foreground:"#000000",background:"#000000",sv_square:"00"}}
data modify storage mcpaint:calc internal.studio.ui.data.foreground_colour set from storage mcpaint:calc internal.studio.data.colour.foreground
data modify storage mcpaint:calc internal.studio.ui.data.background_colour set from storage mcpaint:calc internal.studio.data.colour.background
data modify storage mcpaint:calc internal.studio.ui.data.selected_name set from storage mcpaint:calc internal.studio.data.colour.selected_name
data modify storage mcpaint:calc internal.studio.ui.data.dart_origin set from storage mcpaint:calc internal.studio.ui.spawn.dart_origin

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
data modify storage mcpaint:calc internal.studio.ui.spawn.dart_hue_transform set from storage mcpaint:calc internal.studio.ui.data.dart_origin
data modify storage mcpaint:calc internal.studio.ui.spawn.dart_hue_transform.translation set from storage mcpaint:calc internal.studio.ui.data.dart_hue
data modify storage mcpaint:calc internal.studio.ui.spawn.dart_sv_transform set from storage mcpaint:calc internal.studio.ui.data.dart_origin
data modify storage mcpaint:calc internal.studio.ui.spawn.dart_sv_transform.translation set from storage mcpaint:calc internal.studio.ui.data.dart_sv

### selected slot ###
data modify storage mcpaint:calc internal.studio.ui.data.text_macro.selected_slot set value "0002"
execute if data storage mcpaint:calc internal.studio.ui.data{selected_name:"background"} run data modify storage mcpaint:calc internal.studio.ui.data.text_macro.selected_slot set value "0003"
execute if data storage mcpaint:calc internal.studio.ui.data{selected_name:"transparent"} run data modify storage mcpaint:calc internal.studio.ui.data.text_macro.selected_slot set value "0004"



function mcpaint:studio/ui/hsv_colour_picker/internal/generate_text with storage mcpaint:calc internal.studio.ui.data.text_macro


function mcpaint:studio/ui/hsv_colour_picker/internal/summon with storage mcpaint:calc internal.studio.ui.spawn