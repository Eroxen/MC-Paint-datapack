data modify storage mcpaint:calc horizontal_direction set value "north"
execute if entity @s[y_rotation=45..135] run data modify storage mcpaint:calc horizontal_direction set value "east"
execute if entity @s[y_rotation=135..225] run data modify storage mcpaint:calc horizontal_direction set value "south"
execute if entity @s[y_rotation=225..315] run data modify storage mcpaint:calc horizontal_direction set value "west"