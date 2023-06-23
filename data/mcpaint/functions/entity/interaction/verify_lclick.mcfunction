scoreboard players set verified_lclick mcpaint.calc 0

execute store result score interaction_time mcpaint.calc run data get entity @s attack.timestamp 1
execute store result score current_time mcpaint.calc run time query gametime
scoreboard players operation interaction_time mcpaint.calc -= current_time mcpaint.calc

data modify storage mcpaint:calc UUID set from storage mcpaint:calc interactor.UUID
execute store success score different mcpaint.calc run data modify storage mcpaint:calc UUID set from entity @s attack.player

execute if score interaction_time mcpaint.calc matches -4..0 if score different mcpaint.calc matches 0 run scoreboard players set verified_lclick mcpaint.calc 1

execute if score interaction_time mcpaint.calc matches ..-5 run data remove entity @s attack
execute if score verified_lclick mcpaint.calc matches 1 run data remove entity @s attack