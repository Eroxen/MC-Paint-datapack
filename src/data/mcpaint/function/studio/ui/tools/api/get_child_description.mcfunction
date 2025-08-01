#####################################################################
# studio/ui/tools/api/get_child_description.mcfunction
# written by Eroxen
#
# Executed as the studio marker.
# Retrieves the textual description of the child element.
#
# Scoreboard input:
# - #studio.ui_element.focused_child mcpaint.calc: child id
#
# Children:
# 100i: tool with index i
#####################################################################

scoreboard players operation #studio.ui_element.i mcpaint.calc = #studio.ui_element.focused_child mcpaint.calc
scoreboard players operation #studio.ui_element.i mcpaint.calc %= #const.1000 mcpaint.calc
data modify storage mcpaint:calc internal.studio.tools.macro set value {i:0}
execute store result storage mcpaint:calc internal.studio.tools.macro.i int 1 run scoreboard players get #studio.ui_element.i mcpaint.calc

execute if score #studio.ui_element.focused_child mcpaint.calc matches 1000..1999 run function mcpaint:studio/ui/tools/internal/get_tool_description with storage mcpaint:calc internal.studio.tools.macro