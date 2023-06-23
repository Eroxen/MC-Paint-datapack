scoreboard players set #verified_lclick mcpaint.calc 0

execute store result score #attack_time mcpaint.calc run data get entity @s attack.timestamp 1
scoreboard players operation #attack_time mcpaint.calc -= #current_time mcpaint.calc

data modify storage mcpaint:calc UUID set from storage mcpaint:calc interactor.UUID
execute store success score #different mcpaint.calc run data modify storage mcpaint:calc UUID set from entity @s attack.player

execute if score #attack_time mcpaint.calc matches -2..0 if score #different mcpaint.calc matches 0 run scoreboard players set #verified_lclick mcpaint.calc 1

execute if score #attack_time mcpaint.calc matches ..-3 run data remove entity @s attack
execute if score #verified_lclick mcpaint.calc matches 1 if score #lclick_responder mcpaint.calc matches 0 run tag @s add mcpaint.clickable_interaction.lclick_responder
execute if score #verified_lclick mcpaint.calc matches 1 run scoreboard players set #lclick_responder mcpaint.calc 1