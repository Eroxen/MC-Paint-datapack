execute unless score b64.max_iter mcpaint.config matches 1..1000 run scoreboard players set b64.max_iter mcpaint.config 250

execute unless score canvas.async.max_iter mcpaint.config matches 1..100 run scoreboard players set canvas.async.max_iter mcpaint.config 8

# 0: advancements, 1: ticking
execute unless score interaction_detection mcpaint.config matches 0..1 run scoreboard players set interaction_detection mcpaint.config 0

execute unless score send_egg_chat mcpaint.config matches 0..1 run scoreboard players set send_egg_chat mcpaint.config 1