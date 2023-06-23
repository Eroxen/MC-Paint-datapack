data modify storage mcpaint:calc different set from entity @s data.painter.UUID
execute store success score different mcpaint.calc run data modify storage mcpaint:calc different set from storage mcpaint:calc painter_tick.player_UUID

execute if score different mcpaint.calc matches 0 if data storage mcpaint:calc painter_ping_studio{command:0b} run data modify storage mcpaint:calc painter_ping_studio.response set value 1b
execute if score different mcpaint.calc matches 0 if data storage mcpaint:calc painter_ping_studio{command:0b} run data modify storage mcpaint:calc painter_ping_studio.responder set from entity @s {}
execute if score different mcpaint.calc matches 0 if data storage mcpaint:calc painter_ping_studio{command:0b} run data modify entity @s data.painter.in_range set value 1b
execute if score different mcpaint.calc matches 0 if data storage mcpaint:calc painter_ping_studio{command:1b} run function mcpaint:studio/follow_command