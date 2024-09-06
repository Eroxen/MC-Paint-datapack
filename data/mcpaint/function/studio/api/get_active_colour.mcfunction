#####################################################################
# studio/api/get_active_colour.mcfunction
# written by Eroxen
#
# Called by a player that is in session with a studio.
# Gets the active colour.
#
# Storage output:
# - mcpaint:calc api.studio.active_colour: int, -1 if transparent
#####################################################################

data modify storage mcpaint:calc api.studio.active_colour set value -1
execute unless entity @s[tag=mcpaint.player.in_session] run return fail
scoreboard players operation #reference mcpaint.session = @s mcpaint.session
execute unless predicate mcpaint:permission/use_studio run return fail
execute anchored eyes positioned ^ ^ ^ unless entity @e[type=marker,tag=mcpaint.studio.marker,tag=mcpaint.studio.in_session,distance=..16,predicate=mcpaint:same_session,limit=1] run return fail
execute anchored eyes positioned ^ ^ ^ as @e[type=marker,tag=mcpaint.studio.marker,tag=mcpaint.studio.in_session,distance=..16,predicate=mcpaint:same_session,limit=1] run data modify storage mcpaint:calc api.studio.active_colour set from entity @s data.colour.selected