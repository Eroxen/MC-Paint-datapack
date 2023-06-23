advancement revoke @s only mcpaint:trigger/lclick_interaction
execute unless score interaction_detection mcpaint.config matches 0 run return 0
execute at @s positioned ^ ^ ^4 run function mcpaint:entity/interaction/player_lclicked