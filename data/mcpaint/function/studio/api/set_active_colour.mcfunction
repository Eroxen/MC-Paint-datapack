#####################################################################
# studio/api/set_active_colour.mcfunction
# written by Eroxen
#
# Called by a player that is in session with a studio.
# Sets the active colour.
#
# Storage input:
# - mcpaint:calc api.studio.active_colour: int
#
# Scoreboard output:
# - #studio.changed mcpaint.calc: whether or not the active colour changes
#####################################################################

execute unless entity @s[tag=mcpaint.player.in_session] run return fail
scoreboard players operation #reference mcpaint.session = @s mcpaint.session
execute unless predicate mcpaint:permission/use_studio run return fail
execute anchored eyes positioned ^ ^ ^ unless entity @e[type=marker,tag=mcpaint.studio.marker,tag=mcpaint.studio.in_session,distance=..16,predicate=mcpaint:same_session,limit=1] run return fail
execute anchored eyes positioned ^ ^ ^ as @e[type=marker,tag=mcpaint.studio.marker,tag=mcpaint.studio.in_session,distance=..16,predicate=mcpaint:same_session,limit=1] at @s run function mcpaint:studio/internal/set_active_colour