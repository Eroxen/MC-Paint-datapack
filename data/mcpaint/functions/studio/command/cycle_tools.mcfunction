data modify storage mcpaint:calc ui set from entity @s data.ui.tools

execute store result score selected_tool mcpaint.calc run data get storage mcpaint:calc ui.selected_tool 1
execute store result score max mcpaint.calc run data get storage mcpaint:calc default_studio_data.tools

scoreboard players add selected_tool mcpaint.calc 1
execute if score selected_tool mcpaint.calc > max mcpaint.calc run scoreboard players set selected_tool mcpaint.calc 1
execute store result storage mcpaint:calc ui.selected_tool int 1 run scoreboard players get selected_tool mcpaint.calc
function mcpaint:studio/ui/tool_changed

data modify entity @s data.ui.tools set from storage mcpaint:calc ui
function mcpaint:studio/ui/sync

