execute on target unless predicate mcpaint:can_use_studio run return 0
execute on target if predicate mcpaint:painting_mode run return 0

data modify storage mcpaint:calc join_studio set value {player_willing:1b,studio_willing:0b,player_finished:0b,studio_finished:0b}
execute on target run data modify storage mcpaint:calc join_studio.player_UUID set from storage mcpaint:calc interactor.UUID

execute positioned ~ ~1 ~ align x align y align z positioned ~0.5 ~0.5 ~0.5 as @e[type=marker,tag=mcpaint.studio.marker,distance=..0.1,limit=1] run function mcpaint:studio/get_right_clicked

execute on target if data storage mcpaint:calc join_studio{player_willing:1b,studio_willing:1b,player_finished:0b,studio_finished:1b} run function mcpaint:painting_mode/join

execute on target if entity @s[tag=mcpaint.player.message.credit] run function mcpaint:credit_message