scoreboard players set #click_advancements_work mcpaint.calc 0
advancement grant @a only mcpaint:trigger/test_click_advancements
execute if score #click_advancements_work mcpaint.calc matches 0 run scoreboard players set interaction_detection mcpaint.config 1

scoreboard players set #reload_phase mcpaint.calc 1