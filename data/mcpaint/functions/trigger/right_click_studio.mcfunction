data modify storage mcpaint:calc interactor set from entity @s {}
data modify storage mcpaint:calc join_studio set value {player_willing:0b,studio_willing:0b,player_finished:0b,studio_finished:0b}
data modify storage mcpaint:calc join_studio.player_UUID set from storage mcpaint:calc interactor.UUID
execute if predicate mcpaint:can_use_studio unless predicate mcpaint:painting_mode run data modify storage mcpaint:calc join_studio.player_willing set value 1b

execute if predicate mcpaint:can_use_studio unless predicate mcpaint:painting_mode as @e[type=interaction,tag=mcpaint.studio.interaction,distance=..16] if data entity @s interaction at @s run function mcpaint:studio/interaction_get_right_clicked

execute if data storage mcpaint:calc join_studio{player_willing:1b,studio_willing:1b,player_finished:0b,studio_finished:1b} run function mcpaint:painting_mode/join

advancement revoke @s only mcpaint:trigger/right_click_studio

execute if entity @s[tag=mcpaint.player.message.credit] run function mcpaint:credit_message