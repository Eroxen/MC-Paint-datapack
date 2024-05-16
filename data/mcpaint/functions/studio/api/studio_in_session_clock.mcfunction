#####################################################################
# studio/api/studio_in_session_clock.mcfunction
# written by Eroxen
#
# Called every second on a studio that is in session with a player.
#####################################################################

scoreboard players operation #reference mcpaint.session = @s mcpaint.session

execute unless entity @a[tag=mcpaint.player.in_session,distance=..32,predicate=mcpaint:same_session] run function mcpaint:studio/internal/session/stop_as_marker