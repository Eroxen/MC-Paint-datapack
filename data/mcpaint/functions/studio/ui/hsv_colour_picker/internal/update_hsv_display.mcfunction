execute store result storage mcpaint:calc api.util.int int 1 run data get storage mcpaint:calc internal.studio.ui.data.hsv[0] 0.711111111111111
function mcpaint:util/api/int_to_hexadecimal_len2
data modify storage mcpaint:calc internal.studio.ui.data.text_macro.sv_square set from storage mcpaint:calc api.util.hex

### hue dart ###
data modify storage eroxified2:api entity.rotation_to_pos set value {rotation:[0f,0f],distance:0.36f}
execute store result storage eroxified2:api entity.rotation_to_pos.rotation[0] float 0.001 run data get storage mcpaint:calc internal.studio.ui.data.hsv[0] -1000
function eroxified2:entity/api/rotation_to_pos
data modify storage mcpaint:calc internal.studio.ui.data.dart_hue set from storage mcpaint:calc internal.studio.ui.data.dart_origin.translation
execute store result score #studio.ui_element.dart.u mcpaint.calc run data get storage mcpaint:calc internal.studio.ui.data.dart_hue[0] 1000
execute store result score #studio.ui_element.dart.v mcpaint.calc run data get storage mcpaint:calc internal.studio.ui.data.dart_hue[1] 1000
execute store result score #temp.du mcpaint.calc run data get storage eroxified2:api entity.pos[2] 1000
execute store result score #temp.dv mcpaint.calc run data get storage eroxified2:api entity.pos[0] -1000
scoreboard players operation #studio.ui_element.dart.u mcpaint.calc += #temp.du mcpaint.calc
scoreboard players operation #studio.ui_element.dart.v mcpaint.calc += #temp.dv mcpaint.calc
execute store result storage mcpaint:calc internal.studio.ui.data.dart_hue[0] float 0.001 run scoreboard players get #studio.ui_element.dart.u mcpaint.calc
execute store result storage mcpaint:calc internal.studio.ui.data.dart_hue[1] float 0.001 run scoreboard players get #studio.ui_element.dart.v mcpaint.calc
data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.hsv_colour_picker.dart_hue,distance=..0.1,limit=1] transformation.translation set from storage mcpaint:calc internal.studio.ui.data.dart_hue

### sv dart ###
data modify storage mcpaint:calc internal.studio.ui.data.dart_sv set from storage mcpaint:calc internal.studio.ui.data.dart_origin.translation
execute store result score #studio.ui_element.dart.u mcpaint.calc run data get storage mcpaint:calc internal.studio.ui.data.dart_sv[0] 1000
execute store result score #studio.ui_element.dart.v mcpaint.calc run data get storage mcpaint:calc internal.studio.ui.data.dart_sv[1] 1000
execute store result score #temp.du mcpaint.calc run data get storage mcpaint:calc internal.studio.ui.data.hsv[1] 375
execute store result score #temp.dv mcpaint.calc run data get storage mcpaint:calc internal.studio.ui.data.hsv[2] 375
scoreboard players operation #studio.ui_element.dart.u mcpaint.calc += #temp.du mcpaint.calc
scoreboard players operation #studio.ui_element.dart.v mcpaint.calc += #temp.dv mcpaint.calc
scoreboard players remove #studio.ui_element.dart.u mcpaint.calc 188
scoreboard players remove #studio.ui_element.dart.v mcpaint.calc 188
execute store result storage mcpaint:calc internal.studio.ui.data.dart_sv[0] float 0.001 run scoreboard players get #studio.ui_element.dart.u mcpaint.calc
execute store result storage mcpaint:calc internal.studio.ui.data.dart_sv[1] float 0.001 run scoreboard players get #studio.ui_element.dart.v mcpaint.calc
data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.hsv_colour_picker.dart_sv,distance=..0.1,limit=1] transformation.translation set from storage mcpaint:calc internal.studio.ui.data.dart_sv