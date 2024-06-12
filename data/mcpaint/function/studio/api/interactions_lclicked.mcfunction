#####################################################################
# studio/api/interactions_lclicked.mcfunction
# written by Eroxen
#
# Called when one of the four interactions is left-clicked,
# as the interaction at the marker.
#####################################################################

execute on attacker if entity @s[tag=mcpaint.player.in_session] if entity @e[type=marker,tag=mcpaint.studio.marker,tag=mcpaint.studio.in_session,distance=..0.1] if score @s mcpaint.session = @e[type=marker,tag=mcpaint.studio.marker,tag=mcpaint.studio.in_session,distance=..0.1,limit=1] mcpaint.session run return run function mcpaint:studio/internal/session/stop_as_player

execute on attacker if entity @e[type=marker,tag=mcpaint.studio.marker,tag=!mcpaint.studio.in_session,distance=..0.1,limit=1] run return run function mcpaint:studio/internal/mine