data modify storage mcpaint:calc popup.page_texts[-1] append from storage mcpaint:calc all_works_names[0]
data remove storage mcpaint:calc all_works_names[0]
scoreboard players add i mcpaint.calc 1
execute if score i mcpaint.calc matches 8 if data storage mcpaint:calc all_works_names[0] run data modify storage mcpaint:calc popup.page_texts append value []
execute if score i mcpaint.calc matches 8 run scoreboard players set i mcpaint.calc 0

execute if data storage mcpaint:calc all_works_names[0] run function mcpaint:studio/popup/open_load_loop