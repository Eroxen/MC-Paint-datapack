execute as @e[type=marker,tag=mcpaint.util.reload_text_displays.marker] at @s run function mcpaint:util/reload_text_displays/internal/tick
execute if entity @e[type=marker,tag=mcpaint.util.reload_text_displays.marker] run schedule function mcpaint:util/reload_text_displays/internal/clock 1t replace