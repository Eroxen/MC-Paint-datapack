data modify storage mcpaint:calc ui set from entity @s data.ui.tools

execute store result score selected_subtool mcpaint.calc run data get storage mcpaint:calc ui.selected_subtool 1
execute store result score max mcpaint.calc run data get storage mcpaint:calc ui.selected_tool_data.subtools

scoreboard players add selected_subtool mcpaint.calc 1
execute if score selected_subtool mcpaint.calc > max mcpaint.calc run scoreboard players set selected_subtool mcpaint.calc 1
execute if score max mcpaint.calc matches 0 run scoreboard players set selected_subtool mcpaint.calc 0
execute store result storage mcpaint:calc ui.selected_subtool int 1 run scoreboard players get selected_subtool mcpaint.calc
function mcpaint:studio/ui/subtool_changed

data modify entity @s data.ui.tools set from storage mcpaint:calc ui
function mcpaint:studio/ui/sync

