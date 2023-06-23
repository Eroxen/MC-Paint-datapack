data modify entity @s data.unsaved_changes set value 1b
execute as @e[type=marker,tag=mcpaint.studio.ui_controller,distance=..0.1,limit=1] run function mcpaint:studio/ui/dynamic_elements