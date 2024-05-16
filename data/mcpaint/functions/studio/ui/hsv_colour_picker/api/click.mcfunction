#####################################################################
# studio/ui/hsv_colour_picker/api/click.mcfunction
# written by Eroxen
#
# Clicks the colour picker. Called on the marker.
#
# Children:
# 1: hue ring
# 2: sv square
# 3: foreground colour
# 4: background colour
# 5: transparent colour
# 6: switch fg <-> bg
#####################################################################

data modify storage mcpaint:calc internal.studio.ui.data set from entity @s data

### hue ring & sv square ###
execute if score #studio.ui_element.focused_child mcpaint.calc matches 1 run function mcpaint:studio/ui/hsv_colour_picker/internal/click_hue_ring

execute if score #studio.ui_element.focused_child mcpaint.calc matches 2 run scoreboard players operation #studio.ui_element.temp mcpaint.calc = #studio.ui_element.u.px mcpaint.calc
execute if score #studio.ui_element.focused_child mcpaint.calc matches 2 run scoreboard players remove #studio.ui_element.temp mcpaint.calc 20
execute if score #studio.ui_element.focused_child mcpaint.calc matches 2 store result storage mcpaint:calc internal.studio.ui.data.hsv[1] float 0.04348 run scoreboard players get #studio.ui_element.temp mcpaint.calc
execute if score #studio.ui_element.focused_child mcpaint.calc matches 2 run scoreboard players operation #studio.ui_element.temp mcpaint.calc = #studio.ui_element.v.px mcpaint.calc
execute if score #studio.ui_element.focused_child mcpaint.calc matches 2 run scoreboard players remove #studio.ui_element.temp mcpaint.calc 48
execute if score #studio.ui_element.focused_child mcpaint.calc matches 2 store result storage mcpaint:calc internal.studio.ui.data.hsv[2] float 0.04348 run scoreboard players get #studio.ui_element.temp mcpaint.calc

execute if score #studio.ui_element.focused_child mcpaint.calc matches 1..2 run data modify storage mcpaint:calc api.util.colour.hsv set from storage mcpaint:calc internal.studio.ui.data.hsv
execute if score #studio.ui_element.focused_child mcpaint.calc matches 1..2 run function mcpaint:util/colour/api/hsv_to_int
execute if score #studio.ui_element.focused_child mcpaint.calc matches 1..2 run function mcpaint:util/colour/api/int_to_html
execute if score #studio.ui_element.focused_child mcpaint.calc matches 1..2 if data storage mcpaint:calc internal.studio.ui.data{selected_name:"foreground"} run data modify storage mcpaint:calc internal.studio.ui.data.foreground_colour set from storage mcpaint:calc api.util.colour.int
execute if score #studio.ui_element.focused_child mcpaint.calc matches 1..2 if data storage mcpaint:calc internal.studio.ui.data{selected_name:"foreground"} run data modify storage mcpaint:calc internal.studio.ui.data.text_macro.foreground set from storage mcpaint:calc api.util.colour.html
execute if score #studio.ui_element.focused_child mcpaint.calc matches 1..2 if data storage mcpaint:calc internal.studio.ui.data{selected_name:"background"} run data modify storage mcpaint:calc internal.studio.ui.data.background_colour set from storage mcpaint:calc api.util.colour.int
execute if score #studio.ui_element.focused_child mcpaint.calc matches 1..2 if data storage mcpaint:calc internal.studio.ui.data{selected_name:"background"} run data modify storage mcpaint:calc internal.studio.ui.data.text_macro.background set from storage mcpaint:calc api.util.colour.html

### slot buttons ###
execute if score #studio.ui_element.focused_child mcpaint.calc matches 3 run data modify storage mcpaint:calc internal.studio.ui.data.selected_name set value "foreground"
execute if score #studio.ui_element.focused_child mcpaint.calc matches 3 run data modify storage mcpaint:calc internal.studio.ui.data.text_macro.selected_slot set value "0002"
execute if score #studio.ui_element.focused_child mcpaint.calc matches 4 run data modify storage mcpaint:calc internal.studio.ui.data.selected_name set value "background"
execute if score #studio.ui_element.focused_child mcpaint.calc matches 4 run data modify storage mcpaint:calc internal.studio.ui.data.text_macro.selected_slot set value "0003"
execute if score #studio.ui_element.focused_child mcpaint.calc matches 5 run data modify storage mcpaint:calc internal.studio.ui.data.selected_name set value "transparent"
execute if score #studio.ui_element.focused_child mcpaint.calc matches 5 run data modify storage mcpaint:calc internal.studio.ui.data.text_macro.selected_slot set value "0004"

execute if score #studio.ui_element.focused_child mcpaint.calc matches 3..4 run function mcpaint:studio/ui/hsv_colour_picker/internal/recalculate_hsv_values


### switch fg <-> bg ###
execute if score #studio.ui_element.focused_child mcpaint.calc matches 6 run data modify storage mcpaint:calc temp set from storage mcpaint:calc internal.studio.ui.data.foreground_colour
execute if score #studio.ui_element.focused_child mcpaint.calc matches 6 run data modify storage mcpaint:calc internal.studio.ui.data.foreground_colour set from storage mcpaint:calc internal.studio.ui.data.background_colour
execute if score #studio.ui_element.focused_child mcpaint.calc matches 6 run data modify storage mcpaint:calc internal.studio.ui.data.background_colour set from storage mcpaint:calc temp
execute if score #studio.ui_element.focused_child mcpaint.calc matches 6 run data modify storage mcpaint:calc api.util.colour.int set from storage mcpaint:calc internal.studio.ui.data.foreground_colour
execute if score #studio.ui_element.focused_child mcpaint.calc matches 6 run function mcpaint:util/colour/api/int_to_html
execute if score #studio.ui_element.focused_child mcpaint.calc matches 6 run data modify storage mcpaint:calc internal.studio.ui.data.text_macro.foreground set from storage mcpaint:calc api.util.colour.html
execute if score #studio.ui_element.focused_child mcpaint.calc matches 6 run data modify storage mcpaint:calc api.util.colour.int set from storage mcpaint:calc internal.studio.ui.data.background_colour
execute if score #studio.ui_element.focused_child mcpaint.calc matches 6 run function mcpaint:util/colour/api/int_to_html
execute if score #studio.ui_element.focused_child mcpaint.calc matches 6 run data modify storage mcpaint:calc internal.studio.ui.data.text_macro.background set from storage mcpaint:calc api.util.colour.html
execute if score #studio.ui_element.focused_child mcpaint.calc matches 6 unless data storage mcpaint:calc internal.studio.ui.data{selected_name:"transparent"} run function mcpaint:studio/ui/hsv_colour_picker/internal/recalculate_hsv_values






function mcpaint:studio/ui/hsv_colour_picker/internal/generate_text with storage mcpaint:calc internal.studio.ui.data.text_macro
execute on vehicle run data modify entity @s text set from storage mcpaint:calc internal.studio.ui.data.text

data modify entity @s data set from storage mcpaint:calc internal.studio.ui.data

data modify storage mcpaint:calc internal.studio.data.colour set value {}
data modify storage mcpaint:calc internal.studio.data.colour.selected_name set from storage mcpaint:calc internal.studio.ui.data.selected_name
data modify storage mcpaint:calc internal.studio.data.colour.foreground set from storage mcpaint:calc internal.studio.ui.data.foreground_colour
data modify storage mcpaint:calc internal.studio.data.colour.background set from storage mcpaint:calc internal.studio.ui.data.background_colour
execute if data storage mcpaint:calc internal.studio.data.colour{selected_name:"foreground"} run data modify storage mcpaint:calc internal.studio.data.colour.selected set from storage mcpaint:calc internal.studio.data.colour.foreground
execute if data storage mcpaint:calc internal.studio.data.colour{selected_name:"background"} run data modify storage mcpaint:calc internal.studio.data.colour.selected set from storage mcpaint:calc internal.studio.data.colour.background
execute if data storage mcpaint:calc internal.studio.data.colour{selected_name:"transparent"} run data modify storage mcpaint:calc internal.studio.data.colour.selected set value -1
data modify entity @e[type=marker,tag=mcpaint.studio.marker,distance=..0.1,limit=1] data.colour set from storage mcpaint:calc internal.studio.data.colour