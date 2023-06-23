summon marker ~ ~ ~ {Tags:["mcpaint.studio","mcpaint.studio.ui_controller","mcpaint.studio.ui_controller.new","mcpaint.marker.ticking"],data:{animation:"open"}}
data modify entity @e[type=marker,tag=mcpaint.studio.ui_controller.new,distance=..0.1,limit=1] data.ui set from entity @s data.ui
data modify storage mcpaint:calc spawn_ui set value {facing:"north"}
data modify storage mcpaint:calc spawn_ui.facing set from entity @s data.facing


# colour picker
data modify storage mcpaint:calc EntityData set value {Tags:["mcpaint.studio","mcpaint.studio.ui_element","mcpaint.studio.ui_element.colour_picker"]}
function mcpaint:studio/ui/new_item_display
data modify entity @e[type=item_display,tag=mcpaint.studio.ui_element.new,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData

data modify storage mcpaint:calc EntityData set value {Tags:["mcpaint.studio","mcpaint.studio.ui_element","mcpaint.studio.ui_element.colour_picker.red"],transformation:{scale:[0.25f, 0.25f, 0.25f],translation:[0f,0f,-0.5f]}}
data modify storage mcpaint:calc EntityData.item set from storage mcpaint:calc custom_models.selection_arrows
function mcpaint:studio/ui/new_item_display
data modify entity @e[type=item_display,tag=mcpaint.studio.ui_element.new,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData

data modify storage mcpaint:calc EntityData set value {Tags:["mcpaint.studio","mcpaint.studio.ui_element","mcpaint.studio.ui_element.colour_picker.green"],transformation:{scale:[0.25f, 0.25f, 0.25f],translation:[0f,0f,-0.5f]}}
data modify storage mcpaint:calc EntityData.item set from storage mcpaint:calc custom_models.selection_arrows
function mcpaint:studio/ui/new_item_display
data modify entity @e[type=item_display,tag=mcpaint.studio.ui_element.new,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData

data modify storage mcpaint:calc EntityData set value {Tags:["mcpaint.studio","mcpaint.studio.ui_element","mcpaint.studio.ui_element.colour_picker.blue"],transformation:{scale:[0.25f, 0.25f, 0.25f],translation:[0f,0f,-0.5f]}}
data modify storage mcpaint:calc EntityData.item set from storage mcpaint:calc custom_models.selection_arrows
function mcpaint:studio/ui/new_item_display
data modify entity @e[type=item_display,tag=mcpaint.studio.ui_element.new,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData

data modify storage mcpaint:calc EntityData set value {Tags:["mcpaint.studio","mcpaint.studio.ui_element","mcpaint.studio.ui_element.colour_picker.fg_colour"],transformation:{scale:[0.1f, 0.2f, 0.1f],translation:[0f,0f,-0.5f]}}
function mcpaint:studio/ui/new_text_display
data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.new,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData

data modify storage mcpaint:calc EntityData set value {Tags:["mcpaint.studio","mcpaint.studio.ui_element","mcpaint.studio.ui_element.colour_picker.bg_colour"],transformation:{scale:[0.1f, 0.2f, 0.1f],translation:[0f,0f,-0.5f]}}
function mcpaint:studio/ui/new_text_display
data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.new,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData



# tools
function mcpaint:studio/ui/new_item_display
data modify entity @e[type=item_display,tag=mcpaint.studio.ui_element.new,distance=..0.1,limit=1] Tags set value ["mcpaint.studio","mcpaint.studio.ui_element","mcpaint.studio.ui_element.tools"]
function mcpaint:studio/ui/new_item_display
data modify entity @e[type=item_display,tag=mcpaint.studio.ui_element.new,distance=..0.1,limit=1] Tags set value ["mcpaint.studio","mcpaint.studio.ui_element","mcpaint.studio.ui_element.tools.selected_subtool"]



# filename
execute if data storage mcpaint:calc spawn_ui{facing:"north"} run summon text_display ~ ~ ~ {Rotation:[180f,0f],Tags:["mcpaint.studio","mcpaint.studio.ui_element","mcpaint.studio.ui_element.new","mcpaint.studio.ui_element.filename"],background:0,shadow:1b}
execute if data storage mcpaint:calc spawn_ui{facing:"east"} run summon text_display ~ ~ ~ {Rotation:[270f,0f],Tags:["mcpaint.studio","mcpaint.studio.ui_element","mcpaint.studio.ui_element.new","mcpaint.studio.ui_element.filename"],background:0,shadow:1b}
execute if data storage mcpaint:calc spawn_ui{facing:"south"} run summon text_display ~ ~ ~ {Rotation:[0f,0f],Tags:["mcpaint.studio","mcpaint.studio.ui_element","mcpaint.studio.ui_element.new","mcpaint.studio.ui_element.filename"],background:0,shadow:1b}
execute if data storage mcpaint:calc spawn_ui{facing:"west"} run summon text_display ~ ~ ~ {Rotation:[90f,0f],Tags:["mcpaint.studio","mcpaint.studio.ui_element","mcpaint.studio.ui_element.new","mcpaint.studio.ui_element.filename"],background:0,shadow:1b}
data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.new,tag=mcpaint.studio.ui_element.filename,distance=..0.1,limit=1] transformation merge value {scale:[0.5f, 0.5f, 1f],translation:[0f,0f,-0.5f]}
tag @e[type=text_display,tag=mcpaint.studio.ui_element.new,distance=..0.1] remove mcpaint.studio.ui_element.new

execute if data storage mcpaint:calc spawn_ui{facing:"north"} run summon text_display ~ ~ ~ {Rotation:[180f,0f],Tags:["mcpaint.studio","mcpaint.studio.ui_element","mcpaint.studio.ui_element.new","mcpaint.studio.ui_element.filename.size"],background:0,shadow:1b}
execute if data storage mcpaint:calc spawn_ui{facing:"east"} run summon text_display ~ ~ ~ {Rotation:[270f,0f],Tags:["mcpaint.studio","mcpaint.studio.ui_element","mcpaint.studio.ui_element.new","mcpaint.studio.ui_element.filename.size"],background:0,shadow:1b}
execute if data storage mcpaint:calc spawn_ui{facing:"south"} run summon text_display ~ ~ ~ {Rotation:[0f,0f],Tags:["mcpaint.studio","mcpaint.studio.ui_element","mcpaint.studio.ui_element.new","mcpaint.studio.ui_element.filename.size"],background:0,shadow:1b}
execute if data storage mcpaint:calc spawn_ui{facing:"west"} run summon text_display ~ ~ ~ {Rotation:[90f,0f],Tags:["mcpaint.studio","mcpaint.studio.ui_element","mcpaint.studio.ui_element.new","mcpaint.studio.ui_element.filename.size"],background:0,shadow:1b}
data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.new,tag=mcpaint.studio.ui_element.filename.size,distance=..0.1,limit=1] transformation merge value {scale:[0.25f, 0.25f, 1f],translation:[0f,0f,-0.5f]}
tag @e[type=text_display,tag=mcpaint.studio.ui_element.new,distance=..0.1] remove mcpaint.studio.ui_element.new




# file menu
execute if data storage mcpaint:calc spawn_ui{facing:"north"} run summon text_display ~ ~ ~ {Rotation:[180f,0f],Tags:["mcpaint.studio","mcpaint.studio.ui_element","mcpaint.studio.ui_element.new","mcpaint.studio.ui_element.file_menu"],default_background:1b,shadow:1b,alignment:"left"}
execute if data storage mcpaint:calc spawn_ui{facing:"east"} run summon text_display ~ ~ ~ {Rotation:[270f,0f],Tags:["mcpaint.studio","mcpaint.studio.ui_element","mcpaint.studio.ui_element.new","mcpaint.studio.ui_element.file_menu"],default_background:1b,shadow:1b,alignment:"left"}
execute if data storage mcpaint:calc spawn_ui{facing:"south"} run summon text_display ~ ~ ~ {Rotation:[0f,0f],Tags:["mcpaint.studio","mcpaint.studio.ui_element","mcpaint.studio.ui_element.new","mcpaint.studio.ui_element.file_menu"],default_background:1b,shadow:1b,alignment:"left"}
execute if data storage mcpaint:calc spawn_ui{facing:"west"} run summon text_display ~ ~ ~ {Rotation:[90f,0f],Tags:["mcpaint.studio","mcpaint.studio.ui_element","mcpaint.studio.ui_element.new","mcpaint.studio.ui_element.file_menu"],default_background:1b,shadow:1b,alignment:"left"}
data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.new,tag=mcpaint.studio.ui_element.file_menu,distance=..0.1,limit=1] text set value '{"nbt":"data.ui.file_menu.lines[]","entity":"@e[type=marker,tag=mcpaint.studio.marker,distance=..0.1,limit=1]","separator":"\\n","interpret":true}'
data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.new,tag=mcpaint.studio.ui_element.file_menu,distance=..0.1,limit=1] transformation merge value {translation:[0f,0f,-0.5f],scale:[0.25f,0.25f,1f]}
tag @e[type=text_display,tag=mcpaint.studio.ui_element.new,distance=..0.1] remove mcpaint.studio.ui_element.new



# history
data modify storage mcpaint:calc EntityData set value {Tags:["mcpaint.studio","mcpaint.studio.ui_element","mcpaint.studio.ui_element.history","mcpaint.studio.ui_element.history.bg"]}
data modify storage mcpaint:calc EntityData.item set from storage mcpaint:calc custom_models.history_bg
function mcpaint:studio/ui/new_item_display
data modify entity @e[type=item_display,tag=mcpaint.studio.ui_element.new,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData
data modify storage mcpaint:calc EntityData set value {Tags:["mcpaint.studio","mcpaint.studio.ui_element","mcpaint.studio.ui_element.history","mcpaint.studio.ui_element.history.undo"]}
function mcpaint:studio/ui/new_item_display
data modify entity @e[type=item_display,tag=mcpaint.studio.ui_element.new,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData
data modify storage mcpaint:calc EntityData set value {Tags:["mcpaint.studio","mcpaint.studio.ui_element","mcpaint.studio.ui_element.history","mcpaint.studio.ui_element.history.redo"]}
function mcpaint:studio/ui/new_item_display
data modify entity @e[type=item_display,tag=mcpaint.studio.ui_element.new,distance=..0.1,limit=1] {} merge from storage mcpaint:calc EntityData



tag @e[type=marker,tag=mcpaint.studio.ui_controller.new,distance=..0.1,limit=1] remove mcpaint.studio.ui_controller.new