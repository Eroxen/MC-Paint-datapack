$execute rotated $(y_rotation) $(x_rotation) positioned ^ ^ ^-0.49 run summon item_display ~ ~ ~ {Rotation:$(rotation),Tags:["mcpaint.entity","mcpaint.custom_painting","mcpaint.custom_painting.item_display","mcpaint.custom_painting.item_display.new"],item_display:"fixed",item:$(background_item),transformation:$(background_transform),width:$(width)f,height:$(height)f,view_range:0.66f,Passengers:[\
{id:"minecraft:text_display",Rotation:$(rotation),Tags:["mcpaint.entity","mcpaint.custom_painting","mcpaint.custom_painting.text_display","mcpaint.custom_painting.text_display.canvas","mcpaint.entity.text_display.reload"],transformation:$(canvas_transform),background:0,line_width:10000,width:$(width)f,height:$(height)f,view_range:0.4f}]}
$execute rotated $(y_rotation) $(x_rotation) positioned ^ ^ ^-0.49 as @e[type=item_display,tag=mcpaint.custom_painting.item_display.new,distance=..0.1,limit=1] run function mcpaint:custom_painting/internal/spawn/init