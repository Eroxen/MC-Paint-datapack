execute if data storage mcpaint:calc painter_tick.intersect.child{name:"tool"} store result score #current mcpaint.calc run data get storage mcpaint:calc painter_tick.studio.data.ui.tools.selected_tool
execute if data storage mcpaint:calc painter_tick.intersect.child{name:"subtool"} store result score #current mcpaint.calc run data get storage mcpaint:calc painter_tick.studio.data.ui.tools.selected_subtool

execute if score ui.child.child mcpaint.calc = #current mcpaint.calc run return 0

execute if data storage mcpaint:calc painter_tick.intersect.child{name:"tool"} run data modify storage mcpaint:calc painter_command set value {command:"tools",set:"tool"}
execute if data storage mcpaint:calc painter_tick.intersect.child{name:"subtool"} run data modify storage mcpaint:calc painter_command set value {command:"tools",set:"subtool"}

execute if data storage mcpaint:calc painter_command run data modify storage mcpaint:calc painter_command.value set from storage mcpaint:calc painter_tick.intersect.child.child