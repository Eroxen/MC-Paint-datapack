$summon text_display ~ ~ ~ {Rotation:$(rotation),Tags:["mcpaint.entity","mcpaint.studio","mcpaint.studio.text_display","mcpaint.studio.ui_element","mcpaint.studio.ui_element.parent","mcpaint.studio.ui_element.tools"],background:0,line_width:10000,transformation:$(transformation),text_opacity:-30b,alignment:"left",text:'{"storage":"mcpaint:calc","nbt":"internal.studio.tools.window.text_rows[]","separator":"\\n","interpret":true}',Passengers:[\
{id:"minecraft:marker",Tags:["mcpaint.entity","mcpaint.studio","mcpaint.studio.ui_element","mcpaint.studio.ui_element.child"]},\
{id:"minecraft:text_display",Rotation:$(rotation),Tags:["mcpaint.entity","mcpaint.studio","mcpaint.studio.ui_element","mcpaint.studio.ui_element.child","mcpaint.studio.ui_element.tools.child","mcpaint.studio.ui_element.tools.toolname"],background:0,line_width:10000,transformation:$(toolname_transform)}]}

data merge entity @e[type=text_display,tag=mcpaint.studio.ui_element.tools,distance=..0.1,limit=1] {transformation:{scale:[0.625f,0.625f,0.625f]},start_interpolation:0,interpolation_duration:5}
data merge entity @e[type=text_display,tag=mcpaint.studio.ui_element.tools.toolname,distance=..0.1,limit=1] {transformation:{scale:[0.3125f,0.3125f,0.3125f]},start_interpolation:0,interpolation_duration:5}

data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.tools.toolname,distance=..0.1,limit=1] text set from storage mcpaint:calc internal.studio.ui.data.toolname_text

execute as @e[type=text_display,tag=mcpaint.studio.ui_element.tools,distance=..0.1,limit=1] run function mcpaint:studio/internal/ui/spawn_element/apply_values