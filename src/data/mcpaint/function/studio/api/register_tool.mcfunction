#####################################################################
# studio/api/register_tool.mcfunction
# written by Eroxen
#
# Registers a tool.
#
# Storage input:
# - mcpaint:calc api.studio.register_tool:
#   - id: (string) id of the tool
#   - name: (textComponent) name of the tool
#   - subtool_rows: (int) amount of rows that all subtools take up
#   - icons: (textComponent[2]): icon for when the tool is deselected and when it is selected
#####################################################################

execute if score #studio.tools.register_phase mcpaint.calc matches 1 run function mcpaint:studio/internal/tools/register/phase_1
execute if score #studio.tools.register_phase mcpaint.calc matches 2 run function mcpaint:studio/internal/tools/register/phase_2