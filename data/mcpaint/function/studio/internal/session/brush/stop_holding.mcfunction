tag @s remove mcpaint.studio.session.brush_held
execute as @e[type=text_display,tag=mcpaint.studio.text_display.highlightable.text_opacity,distance=..0.1] run data modify entity @s text_opacity set value -100b
execute as @e[type=text_display,tag=mcpaint.studio.text_display.highlightable.see_through,distance=..0.1] run data modify entity @s see_through set value 0b