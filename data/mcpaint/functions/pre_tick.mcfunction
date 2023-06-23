execute if score #reload_phase mcpaint.calc matches 1 run scoreboard players set #reload_finished mcpaint.calc 1
execute if score #reload_phase mcpaint.calc matches 0 unless score #initial_setup_finished mcpaint.calc matches 1 if entity @a run function mcpaint:setup/initial


execute unless score #reload_finished mcpaint.calc matches 1 run schedule function mcpaint:pre_tick 1t replace
execute if score #reload_finished mcpaint.calc matches 1 run schedule function mcpaint:tick 1t replace