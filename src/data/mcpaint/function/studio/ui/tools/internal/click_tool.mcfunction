scoreboard players operation #studio.ui_element.selected mcpaint.calc = #studio.ui_element.focused_child mcpaint.calc
scoreboard players operation #studio.ui_element.selected mcpaint.calc %= #const.1000 mcpaint.calc
execute store result storage mcpaint:calc internal.studio.ui.data.tool.index.tool int 1 run scoreboard players get #studio.ui_element.selected mcpaint.calc
function mcpaint:studio/ui/tools/internal/set_tool_text with storage mcpaint:calc internal.studio.ui.data.tool.index
execute on vehicle run data modify entity @s text set value '{"storage":"mcpaint:calc","nbt":"internal.studio.tools.window.text_rows[]","separator":"\\n","interpret":true}'
data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.tools.toolname,distance=..0.1,limit=1] text set from storage mcpaint:calc internal.studio.ui.data.toolname_text

data modify storage mcpaint:calc internal.studio.data.tool set from storage mcpaint:calc internal.studio.ui.data.tool