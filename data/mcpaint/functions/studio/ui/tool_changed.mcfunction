execute if data storage mcpaint:calc ui{selected_tool:1} run data modify storage mcpaint:calc ui.selected_tool_data set from storage mcpaint:calc default_studio_data.tools[0]
execute if data storage mcpaint:calc ui{selected_tool:1} run data modify storage mcpaint:calc ui.selected_subtool set from storage mcpaint:calc ui.selected_subtools[0]
execute if data storage mcpaint:calc ui{selected_tool:2} run data modify storage mcpaint:calc ui.selected_tool_data set from storage mcpaint:calc default_studio_data.tools[1]
execute if data storage mcpaint:calc ui{selected_tool:2} run data modify storage mcpaint:calc ui.selected_subtool set from storage mcpaint:calc ui.selected_subtools[1]

function mcpaint:studio/ui/subtool_changed