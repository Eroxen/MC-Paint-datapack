#####################################################################
# settings/api/trigger_client.mcfunction
# written by Eroxen
#
# Opens the client settings menu.
#####################################################################

execute unless predicate mcpaint:permission/change_client_settings run scoreboard players reset @s mcpaint.settings
execute unless predicate mcpaint:permission/change_client_settings run scoreboard players enable @s mcpaint.settings
execute unless predicate mcpaint:permission/change_client_settings run return run tellraw @s {"translate":"mcpaint.error.no_permission","color":"red"}

execute if score @s mcpaint.settings matches 1 run function mcpaint:settings/internal/client/open_menu
execute if score @s mcpaint.settings matches 2.. run function mcpaint:settings/internal/client/decode

scoreboard players reset @s mcpaint.settings
scoreboard players enable @s mcpaint.settings