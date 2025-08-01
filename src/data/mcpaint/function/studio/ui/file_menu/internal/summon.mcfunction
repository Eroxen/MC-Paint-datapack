$summon text_display ~ ~ ~ {Rotation:$(rotation),Tags:["mcpaint.entity","mcpaint.studio","mcpaint.studio.text_display","mcpaint.studio.text_display.highlightable.text_opacity","mcpaint.studio.ui_element","mcpaint.studio.ui_element.parent","mcpaint.studio.ui_element.file_menu","mcpaint.studio.ui_element.subscribe.history_changed","mcpaint.studio.ui_element.subscribe.saved"],background:0,line_width:10000,transformation:$(transformation),text_opacity:-10b,alignment:"left",Passengers:[\
{id:"minecraft:marker",Tags:["mcpaint.entity","mcpaint.studio","mcpaint.studio.ui_element","mcpaint.studio.ui_element.child"]},\
{id:"minecraft:text_display",Rotation:$(rotation),Tags:["mcpaint.entity","mcpaint.studio","mcpaint.studio.ui_element","mcpaint.studio.ui_element.child","mcpaint.studio.ui_element.file_menu.filename"],background:0,line_width:10000,transformation:$(filename_transform)}]}

data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.file_menu,distance=..0.1,limit=1] text set from storage mcpaint:calc internal.studio.ui.data.text
data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.file_menu.filename,distance=..0.1,limit=1] text set from storage mcpaint:calc internal.studio.ui.data.filename_text

data merge entity @e[type=text_display,tag=mcpaint.studio.ui_element.file_menu,distance=..0.1,limit=1] {transformation:{scale:[0.625f,0.625f,0.625f]},start_interpolation:0,interpolation_duration:5}
data merge entity @e[type=text_display,tag=mcpaint.studio.ui_element.file_menu.filename,distance=..0.1,limit=1] {transformation:{scale:[0.25f,0.25f,0.25f]},start_interpolation:0,interpolation_duration:5}

execute as @e[type=text_display,tag=mcpaint.studio.ui_element.file_menu,distance=..0.1,limit=1] run function mcpaint:studio/internal/ui/spawn_element/apply_values