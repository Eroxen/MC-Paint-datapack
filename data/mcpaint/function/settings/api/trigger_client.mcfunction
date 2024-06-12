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
execute if score @s mcpaint.settings matches 10000..19999 run function mcpaint:settings/internal/client/click_menu
execute if score @s mcpaint.settings matches 20000..29999 run function mcpaint:settings/internal/client/click_other

scoreboard players reset @s mcpaint.settings
scoreboard players enable @s mcpaint.settings