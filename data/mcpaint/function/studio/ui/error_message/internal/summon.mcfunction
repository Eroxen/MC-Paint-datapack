$summon text_display ~ ~ ~ {Rotation:$(rotation),Tags:["mcpaint.entity","mcpaint.studio","mcpaint.studio.text_display","mcpaint.studio.text_display.highlightable.see_through","mcpaint.studio.text_display.highlightable.text_opacity","mcpaint.studio.ui_element","mcpaint.studio.ui_element.parent","mcpaint.studio.ui_element.error_message"],background:0,line_width:10000,transformation:$(transformation),text_opacity:-30b,see_through:1b,alignment:"left",text:'{"text":"\\u1001\\u0301","color":"white","font":"mcpaint:studio_ui"}',Passengers:[\
{id:"minecraft:marker",Tags:["mcpaint.entity","mcpaint.studio","mcpaint.studio.ui_element","mcpaint.studio.ui_element.child"]},\
{id:"minecraft:text_display",Rotation:$(rotation),Tags:["mcpaint.entity","mcpaint.studio","mcpaint.studio.ui_element","mcpaint.studio.ui_element.child","mcpaint.studio.ui_element.error_message.message","mcpaint.studio.text_display.highlightable.see_through"],background:0,see_through:1b,line_width:120,transformation:$(message_transform)}]}

data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.error_message.message,distance=..0.1,limit=1] text set from storage mcpaint:calc internal.studio.ui.data.message

data merge entity @e[type=text_display,tag=mcpaint.studio.ui_element.error_message,distance=..0.1,limit=1] {transformation:{scale:[0.625f,0.625f,0.625f]},start_interpolation:0,interpolation_duration:5}
data merge entity @e[type=text_display,tag=mcpaint.studio.ui_element.error_message.message,distance=..0.1,limit=1] {transformation:{scale:[0.4f,0.4f,0.4f]},start_interpolation:0,interpolation_duration:5}

execute as @e[type=text_display,tag=mcpaint.studio.ui_element.error_message,distance=..0.1,limit=1] run function mcpaint:studio/internal/ui/spawn_element/apply_values