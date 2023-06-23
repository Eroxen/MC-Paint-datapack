tag @s add mcpaint.studio.marker.has_painter
tag @s add mcpaint.marker.ticking
data modify entity @s data.painter set value {in_range:1b}
data modify entity @s data.painter.UUID set from storage mcpaint:calc join_studio.player_UUID
data modify storage mcpaint:calc join_studio.studio_finished set value 1b

function mcpaint:studio/ui/open

execute rotated as @s run function mcpaint:studio/kill_interactions

#data modify entity @e[type=item_display,tag=mcpaint.studio.item_display,distance=..0.1,limit=1] Glowing set value 1b

execute if data entity @s data.filesize_warning store result score bytes mcpaint.calc run data get entity @s data.canvas.resolved_text_size 1
execute if data entity @s data.filesize_warning if score bytes mcpaint.calc matches 40001.. run function mcpaint:studio/send_filesize_warning