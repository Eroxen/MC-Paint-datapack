#####################################################################
# studio/api/interactions_rclicked.mcfunction
# written by Eroxen
#
# Called when one of the four interactions is right-clicked,
# as the interaction at the marker.
#####################################################################

execute on target if predicate mcpaint:permission/use_studio unless entity @s[tag=mcpaint.player.in_session] unless items entity @s weapon.mainhand * if entity @e[type=marker,tag=mcpaint.studio.marker,distance=..0.1] unless entity @e[type=marker,tag=mcpaint.studio.marker,tag=mcpaint.studio.in_session,distance=..0.1] run return run function mcpaint:studio/internal/session/start_as_player

execute on target if entity @s[tag=mcpaint.player.in_session] if entity @e[type=marker,tag=mcpaint.studio.marker,tag=mcpaint.studio.in_session,distance=..0.1] if score @s mcpaint.session = @e[type=marker,tag=mcpaint.studio.marker,tag=mcpaint.studio.in_session,distance=..0.1,limit=1] mcpaint.session run return run function mcpaint:studio/internal/session/player_click_studio