#####################################################################
# custom_painting/api/manual_give.mcfunction
# written by Eroxen
#
# Gives a painting with the executing player as the author.
#
# Macro arguments:
# - name: painting name
#####################################################################

$data modify storage mcpaint:calc internal.database.filepath set value {name:"$(name)"}
data modify storage mcpaint:calc internal.database.filepath.author set from entity @s UUID
function mcpaint:custom_painting/api/give with storage mcpaint:calc internal.database.filepath
execute if score #database.found mcpaint.calc matches 0 run return run tellraw @s {"text": "Not found.","color": "red"}