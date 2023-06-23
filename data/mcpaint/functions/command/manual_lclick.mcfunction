data modify storage mcpaint:calc force_painter_tick set value {left_click:1b}
execute at @s rotated as @s anchored eyes positioned ^ ^ ^ run function mcpaint:painting_mode/player_tick
data remove storage mcpaint:calc force_painter_tick