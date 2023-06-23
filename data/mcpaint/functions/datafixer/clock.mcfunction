scoreboard players set #datafixer.found_outdated mcpaint.calc 0

execute as @e[type=interaction,tag=mcpaint.studio.interaction,predicate=mcpaint:out_of_date,limit=10] run function mcpaint:datafixer/entrypoint/studio_interaction
execute as @e[type=interaction,tag=mcpaint.custom_painting.interaction,predicate=mcpaint:out_of_date,limit=10] run function mcpaint:datafixer/entrypoint/custom_painting_interaction
execute as @e[type=interaction,tag=mcpaint.computer.interaction,predicate=mcpaint:out_of_date,limit=10] run function mcpaint:datafixer/entrypoint/computer_interaction


execute if score #datafixer.found_outdated mcpaint.calc matches 1 run schedule function mcpaint:datafixer/clock 2t replace
execute if score #datafixer.found_outdated mcpaint.calc matches 0 run schedule function mcpaint:datafixer/clock 10s replace