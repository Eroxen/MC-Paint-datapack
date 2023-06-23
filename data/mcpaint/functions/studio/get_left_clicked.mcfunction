execute unless data entity @s data{unsaved_changes:1b} run tag @s add mcpaint.studio.marker.kill
execute unless data entity @s data{unsaved_changes:1b} run tag @s add mcpaint.marker.ticking

execute if data entity @s data{unsaved_changes:1b} store result score current_gametime mcpaint.calc run time query gametime
execute if data entity @s data{unsaved_changes:1b} if data entity @s data.damage.last_time store result score last_gametime mcpaint.calc run data get entity @s data.damage.last_time 1
execute if data entity @s data{unsaved_changes:1b} if data entity @s data.damage.last_time run scoreboard players operation last_gametime mcpaint.calc -= current_gametime mcpaint.calc
execute if data entity @s data{unsaved_changes:1b} if data entity @s data.damage.last_time if score last_gametime mcpaint.calc matches ..-100 run data remove entity @s data.damage
execute if data entity @s data{unsaved_changes:1b} unless data entity @s data.damage run data modify entity @s data.damage set value {hits:0}
execute if data entity @s data{unsaved_changes:1b} store result entity @s data.damage.last_time int 1 run scoreboard players get current_gametime mcpaint.calc
execute if data entity @s data{unsaved_changes:1b} store result score hits mcpaint.calc run data get entity @s data.damage.hits 1
execute if data entity @s data{unsaved_changes:1b} run scoreboard players add hits mcpaint.calc 1
execute if data entity @s data{unsaved_changes:1b} store result entity @s data.damage.hits int 1 run scoreboard players get hits mcpaint.calc
execute if data entity @s data{unsaved_changes:1b} run data modify entity @s data.damage.progress_message set value '{"score":{"name":"hits","objective":"mcpaint.calc"},"extra":[{"text":"/5"}]}'
execute if data entity @s data{unsaved_changes:1b} if score hits mcpaint.calc matches 5.. run tag @s add mcpaint.studio.marker.kill
execute if data entity @s data{unsaved_changes:1b} if score hits mcpaint.calc matches 5.. run tag @s add mcpaint.marker.ticking