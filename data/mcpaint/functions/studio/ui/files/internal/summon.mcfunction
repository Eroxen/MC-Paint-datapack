$summon text_display ~ ~ ~ {Rotation:$(rotation),Tags:["mcpaint.entity","mcpaint.studio","mcpaint.studio.text_display","mcpaint.studio.ui_element","mcpaint.studio.ui_element.parent","mcpaint.studio.ui_element.files"],background:0,line_width:10000,transformation:$(transformation),text_opacity:-30b,alignment:"left",text:'{"text":"\\u1001\\u0303","color":"white","font":"mcpaint:studio_ui"}',Passengers:[\
{id:"minecraft:marker",Tags:["mcpaint.entity","mcpaint.studio","mcpaint.studio.ui_element","mcpaint.studio.ui_element.child","mcpaint.studio.ui_element.files"]}\
]}

data merge entity @e[type=text_display,tag=mcpaint.studio.ui_element.files,distance=..0.1,limit=1] {transformation:{scale:[0.625f,0.625f,0.625f]},start_interpolation:0,interpolation_duration:5}

execute as @e[type=text_display,tag=mcpaint.studio.ui_element.files,distance=..0.1,limit=1] run function mcpaint:studio/internal/ui/spawn_element/apply_values