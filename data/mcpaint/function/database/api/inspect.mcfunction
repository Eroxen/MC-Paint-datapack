#####################################################################
# database/api/inspect.mcfunction
# written by Eroxen
#
# Lists all authors in the database in chat.
#####################################################################

scoreboard players set #database.authors mcpaint.calc 0
execute store result score #database.authors mcpaint.calc run data get storage mcpaint:database authors
tellraw @s [{"text":"Database contains ","color":"light_purple"},{"score":{"name":"#database.authors","objective":"mcpaint.calc"}},{"text":" authors."}]
data modify storage mcpaint:calc internal.database.inspect set value {}
scoreboard players set #database.i mcpaint.calc 0
execute if score #database.authors mcpaint.calc matches 1.. run function mcpaint:database/internal/inspect/loop