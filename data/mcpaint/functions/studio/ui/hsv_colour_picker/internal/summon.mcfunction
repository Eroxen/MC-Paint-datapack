$summon text_display ~ ~ ~ {Rotation:$(rotation),Tags:["mcpaint.entity","mcpaint.studio","mcpaint.studio.text_display","mcpaint.studio.ui_element","mcpaint.studio.ui_element.parent","mcpaint.studio.ui_element.hsv_colour_picker"],background:0,line_width:10000,transformation:$(transformation),text_opacity:-30b,alignment:"left",Passengers:[{id:"minecraft:marker",Tags:["mcpaint.entity","mcpaint.studio","mcpaint.studio.ui_element","mcpaint.studio.ui_element.child"]}]}

data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.hsv_colour_picker,distance=..0.1,limit=1] text set from storage mcpaint:calc internal.studio.ui.data.text

data merge entity @e[type=text_display,tag=mcpaint.studio.ui_element.hsv_colour_picker,distance=..0.1,limit=1] {transformation:{scale:[0.625f,0.625f,0.625f]},start_interpolation:0,interpolation_duration:5}

execute as @e[type=text_display,tag=mcpaint.studio.ui_element.hsv_colour_picker,distance=..0.1,limit=1] run function mcpaint:studio/internal/ui/spawn_element/apply_values