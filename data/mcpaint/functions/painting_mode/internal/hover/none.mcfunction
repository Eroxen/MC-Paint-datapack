execute if data storage mcpaint:calc painter_tick.studio.data.ui.file_menu.hover unless data storage mcpaint:calc painter_tick.intersect{element:"file_menu"} run data modify storage mcpaint:calc painter_command set value {command:"unhover_file_menu"}

execute if data storage mcpaint:calc painter_command as @e[type=marker,tag=mcpaint.studio.marker.has_painter,distance=..16,predicate=mcpaint:attention_link,limit=1] at @s run function mcpaint:studio/follow_command