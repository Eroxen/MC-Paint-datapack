tag @s add mcpaint.painting_mode
scoreboard players operation @s mcpaint.attention_link = .new mcpaint.attention_link
data modify storage mcpaint:calc join_studio.player_finished set value 1b
function mcpaint:painting_mode/players_changed

execute if predicate mcpaint:holding_pro_brush_offhand unless predicate mcpaint:holding_pro_brush run function mcpaint:item/swap_hands