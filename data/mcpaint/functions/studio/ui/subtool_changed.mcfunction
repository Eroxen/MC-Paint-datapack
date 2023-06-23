execute if data storage mcpaint:calc ui{selected_tool:1} run data modify storage mcpaint:calc ui.selected_subtools[0] set from storage mcpaint:calc ui.selected_subtool
execute if data storage mcpaint:calc ui{selected_tool:2} run data modify storage mcpaint:calc ui.selected_subtools[1] set from storage mcpaint:calc ui.selected_subtool

execute if data storage mcpaint:calc ui{selected_subtool:0} run data remove storage mcpaint:calc ui.selected_subtool_data
execute if data storage mcpaint:calc ui{selected_subtool:1} run data modify storage mcpaint:calc ui.selected_subtool_data set from storage mcpaint:calc ui.selected_tool_data.subtools[0]
execute if data storage mcpaint:calc ui{selected_subtool:2} run data modify storage mcpaint:calc ui.selected_subtool_data set from storage mcpaint:calc ui.selected_tool_data.subtools[1]
execute if data storage mcpaint:calc ui{selected_subtool:3} run data modify storage mcpaint:calc ui.selected_subtool_data set from storage mcpaint:calc ui.selected_tool_data.subtools[2]
execute if data storage mcpaint:calc ui{selected_subtool:4} run data modify storage mcpaint:calc ui.selected_subtool_data set from storage mcpaint:calc ui.selected_tool_data.subtools[3]
execute if data storage mcpaint:calc ui{selected_subtool:5} run data modify storage mcpaint:calc ui.selected_subtool_data set from storage mcpaint:calc ui.selected_tool_data.subtools[4]
execute if data storage mcpaint:calc ui{selected_subtool:6} run data modify storage mcpaint:calc ui.selected_subtool_data set from storage mcpaint:calc ui.selected_tool_data.subtools[5]
execute if data storage mcpaint:calc ui{selected_subtool:7} run data modify storage mcpaint:calc ui.selected_subtool_data set from storage mcpaint:calc ui.selected_tool_data.subtools[6]
execute if data storage mcpaint:calc ui{selected_subtool:8} run data modify storage mcpaint:calc ui.selected_subtool_data set from storage mcpaint:calc ui.selected_tool_data.subtools[7]