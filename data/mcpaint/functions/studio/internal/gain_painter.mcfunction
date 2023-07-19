tag @s add mcpaint.studio.marker.has_painter
tag @s add mcpaint.marker.ticking
scoreboard players add .new mcpaint.attention_link 1
scoreboard players operation @s mcpaint.attention_link = .new mcpaint.attention_link
data modify entity @s data.painter.UUID set from storage mcpaint:calc join_studio.player_UUID
data modify storage mcpaint:calc join_studio.studio_finished set value 1b

function mcpaint:studio/ui/open

execute rotated as @s run function mcpaint:studio/kill_interactions

execute if data entity @s data.filesize_warning store result score bytes mcpaint.calc run data get entity @s data.canvas.resolved_text_size 1
execute if data entity @s data.filesize_warning if score bytes mcpaint.calc matches 40001.. run function mcpaint:studio/send_filesize_warning