#####################################################################
# studio/ui/tools/api/spawn.mcfunction
# written by Eroxen
#
# Executed as the studio marker.
# Opens the tool window.
#####################################################################

data modify storage mcpaint:calc internal.studio.anchored_pos set from storage mcpaint:calc internal.studio.tools.window.anchored_pos
function mcpaint:studio/internal/ui/spawn_element/anchored_pos
scoreboard players set #studio.ui_element.layer mcpaint.calc 0

data modify storage mcpaint:calc internal.studio.ui.definition set from storage mcpaint:calc internal.studio.tools.window.definition
function mcpaint:studio/internal/ui/spawn_element/init_values
function mcpaint:studio/internal/ui/spawn_element/additional_transform with storage mcpaint:calc internal.studio.tools.window.toolname_transform

### init data ###
data modify storage mcpaint:calc internal.studio.ui.data.tool set from storage mcpaint:calc internal.studio.data.tool
function mcpaint:studio/ui/tools/internal/set_tool_text with storage mcpaint:calc internal.studio.ui.data.tool
data modify storage mcpaint:calc internal.studio.ui.data.subtool_text_rows set from storage mcpaint:calc internal.studio.tools.registry[0].subtool_text_rows

function mcpaint:studio/ui/tools/internal/summon with storage mcpaint:calc internal.studio.ui.spawn