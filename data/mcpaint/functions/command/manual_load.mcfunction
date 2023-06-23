data modify storage mcpaint:calc painter_ping_studio set value {response:0b,command:1b}
data modify storage mcpaint:calc painter_command set value {command:"load"}
execute if data entity @s SelectedItem{id:"minecraft:writable_book"} if data entity @s SelectedItem.tag.pages[0] run data modify storage mcpaint:calc painter_command.filename set from entity @s SelectedItem.tag.pages[0]
data modify storage mcpaint:calc painter_ping_studio.player_UUID set from entity @s UUID
execute as @e[type=marker,tag=mcpaint.studio.marker.has_painter,distance=..16] at @s run function mcpaint:studio/get_pinged