function mcpaint:studio/popup/unrender

data modify storage mcpaint:calc popup set from entity @s data.popups[0]

execute store result score base_x mcpaint.calc run data get storage mcpaint:calc popup.position[0] 1
execute store result score base_y mcpaint.calc run data get storage mcpaint:calc popup.position[1] 1

execute if data storage mcpaint:calc popup{type:"new_file"} run function mcpaint:studio/popup/render_new_file

execute if data storage mcpaint:calc popup{type:"load"} run function mcpaint:studio/popup/render_load