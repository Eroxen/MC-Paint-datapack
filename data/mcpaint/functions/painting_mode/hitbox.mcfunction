execute if data entity @s interaction store success score different mcpaint.calc run data modify entity @s interaction.player set from storage mcpaint:calc painter_tick.player_UUID
execute if data entity @s interaction if score different mcpaint.calc matches 0 run data modify storage mcpaint:calc painter_tick.right_click set value 1b
execute if data entity @s interaction run data remove entity @s interaction

execute if data entity @s attack store success score different mcpaint.calc run data modify entity @s attack.player set from storage mcpaint:calc painter_tick.player_UUID
execute if data entity @s attack if score different mcpaint.calc matches 0 run data modify storage mcpaint:calc painter_tick.left_click set value 1b
execute if data entity @s attack run data remove entity @s attack