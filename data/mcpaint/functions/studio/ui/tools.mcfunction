data modify storage mcpaint:calc ui set from entity @s data.ui.tools

execute if data storage mcpaint:calc painter_command{set:"tool"} run data modify storage mcpaint:calc ui.selected_tool set from storage mcpaint:calc painter_command.value
execute if data storage mcpaint:calc painter_command{set:"tool"} run function mcpaint:studio/ui/tool_changed

execute if data storage mcpaint:calc painter_command{set:"subtool"} run data modify storage mcpaint:calc ui.selected_subtool set from storage mcpaint:calc painter_command.value
execute if data storage mcpaint:calc painter_command{set:"subtool"} run function mcpaint:studio/ui/subtool_changed

data modify entity @s data.ui.tools set from storage mcpaint:calc ui
function mcpaint:studio/ui/sync