scoreboard players set #intersect_ui_hbox mcpaint.calc 0
execute store result score ui_x_0 mcpaint.calc run data get storage mcpaint:calc ui.position[0] 1
execute store result score ui_y_0 mcpaint.calc run data get storage mcpaint:calc ui.position[1] 1
execute store result score ui_x_1 mcpaint.calc run data get storage mcpaint:calc ui.size[0] 1
execute store result score ui_y_1 mcpaint.calc run data get storage mcpaint:calc ui.size[1] 1
scoreboard players operation ui_x_1 mcpaint.calc += ui_x_0 mcpaint.calc
scoreboard players operation ui_y_1 mcpaint.calc += ui_y_0 mcpaint.calc
execute if score screenspace_x mcpaint.calc >= ui_x_0 mcpaint.calc if score screenspace_x mcpaint.calc < ui_x_1 mcpaint.calc if score screenspace_y mcpaint.calc >= ui_y_0 mcpaint.calc if score screenspace_y mcpaint.calc < ui_y_1 mcpaint.calc run scoreboard players set #intersect_ui_hbox mcpaint.calc 1
execute if score #intersect_ui_hbox mcpaint.calc matches 0 run return 0

scoreboard players operation ui_u mcpaint.calc = screenspace_x mcpaint.calc
scoreboard players operation ui_v mcpaint.calc = screenspace_y mcpaint.calc
scoreboard players operation ui_u mcpaint.calc -= ui_x_0 mcpaint.calc
scoreboard players operation ui_v mcpaint.calc -= ui_y_0 mcpaint.calc