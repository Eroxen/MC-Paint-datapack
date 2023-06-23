scoreboard players set #verified_rclick mcpaint.calc 0

execute store result score #interaction_time mcpaint.calc run data get entity @s interaction.timestamp 1
scoreboard players operation #interaction_time mcpaint.calc -= #current_time mcpaint.calc

data modify storage mcpaint:calc UUID set from storage mcpaint:calc interactor.UUID
execute store success score #different mcpaint.calc run data modify storage mcpaint:calc UUID set from entity @s interaction.player

execute if score #interaction_time mcpaint.calc matches -2..0 if score #different mcpaint.calc matches 0 run scoreboard players set #verified_rclick mcpaint.calc 1

execute if score #interaction_time mcpaint.calc matches ..-3 run data remove entity @s interaction
execute if score #verified_rclick mcpaint.calc matches 1 if score #rclick_responder mcpaint.calc matches 0 run tag @s add mcpaint.clickable_interaction.rclick_responder
execute if score #verified_rclick mcpaint.calc matches 1 run scoreboard players set #rclick_responder mcpaint.calc 1