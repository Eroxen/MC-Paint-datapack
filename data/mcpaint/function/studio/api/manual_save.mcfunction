#####################################################################
# studio/api/manual_save.mcfunction
# written by Eroxen
#
# Saves the current canvas to the database.
#
# Macro arguments:
# - name: painting name
#####################################################################

execute unless entity @s[tag=mcpaint.player.in_session] run return run tellraw @s {"text": "You are not in a session with a studio.","color": "red"}
scoreboard players operation #reference mcpaint.session = @s mcpaint.session
$data modify storage mcpaint:calc internal.database.filepath set value {name:"$(name)"}
data modify storage mcpaint:calc internal.database.filepath.author set from entity @s UUID
execute anchored eyes positioned ^ ^ ^ as @e[type=marker,tag=mcpaint.studio.marker,tag=mcpaint.studio.in_session,distance=..16,predicate=mcpaint:same_session,limit=1] run function mcpaint:studio/internal/database/manual_save