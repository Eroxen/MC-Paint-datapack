data modify storage mcpaint:calc egg_tracking set value {stop:0b}

execute if data storage mcpaint:calc egg_tracking{stop:0b} align x align y align z if entity @e[type=painting,dx=0,dy=0,dz=0] run function mcpaint:egg/found_painting
execute if data storage mcpaint:calc egg_tracking{stop:0b} positioned ^ ^ ^0.25 align x align y align z if entity @e[type=painting,dx=0,dy=0,dz=0] run function mcpaint:egg/found_painting
execute if data storage mcpaint:calc egg_tracking{stop:0b} positioned ^ ^ ^0.5 align x align y align z if entity @e[type=painting,dx=0,dy=0,dz=0] run function mcpaint:egg/found_painting
execute if data storage mcpaint:calc egg_tracking{stop:0b} positioned ^ ^ ^0.75 align x align y align z if entity @e[type=painting,dx=0,dy=0,dz=0] run function mcpaint:egg/found_painting