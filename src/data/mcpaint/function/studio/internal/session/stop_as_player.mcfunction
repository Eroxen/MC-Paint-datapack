execute at @s run playsound minecraft:entity.item_frame.add_item block @s

scoreboard players operation #reference mcpaint.session = @s mcpaint.session
tag @s remove mcpaint.player.in_session
scoreboard players reset @s mcpaint.session
clear @s *[minecraft:custom_data~{mcpaint:{brush:true}}]

execute as @e[type=marker,tag=mcpaint.studio.marker,tag=mcpaint.studio.in_session,predicate=mcpaint:same_session,limit=1] at @s run function mcpaint:studio/internal/session/stop_as_marker