execute store result score selected_page mcpaint.calc run data get storage mcpaint:calc computer_page.selected_page
execute store result score total_pages mcpaint.calc run data get storage mcpaint:calc computer_page.total_pages

scoreboard players operation selected_page mcpaint.calc += add_page mcpaint.calc

scoreboard players set valid mcpaint.calc 0
execute if score selected_page mcpaint.calc matches 0.. if score selected_page mcpaint.calc < total_pages mcpaint.calc run scoreboard players set valid mcpaint.calc 1

execute if score valid mcpaint.calc matches 1 store result entity @s data.computer_page.selected_page int 1 run scoreboard players get selected_page mcpaint.calc
execute if score valid mcpaint.calc matches 1 run function mcpaint:block/computer/files/update_data