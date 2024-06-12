data modify storage mcpaint:calc internal.studio.ui.data.tool_text_rows set from storage mcpaint:calc internal.studio.tools.window.tool_text_rows
$data modify storage mcpaint:calc internal.studio.tool set from storage mcpaint:calc internal.studio.tools.registry[$(tool)]

$data modify storage mcpaint:calc internal.studio.ui.data.tool_text_rows[$(tool)] set from storage mcpaint:calc internal.studio.tool.icons[1]
data modify storage mcpaint:calc internal.studio.ui.data.toolname_text set from storage mcpaint:calc internal.studio.tool.name
data modify storage mcpaint:calc internal.studio.ui.data.subtool_text_rows set from storage mcpaint:calc internal.studio.tool.subtool_text_rows
data modify storage mcpaint:calc internal.studio.ui.data.subtool_icons set from storage mcpaint:calc internal.studio.tool.subtool_icons

$data modify storage mcpaint:calc internal.studio.ui.data.subtool_icons[$(subtool)] set from storage mcpaint:calc internal.studio.tool.subtools[$(subtool)].icons[1]
data modify storage mcpaint:calc internal.studio.ui.data.subtool_rows set from storage mcpaint:calc internal.studio.tool.subtool_rows
data modify storage mcpaint:calc internal.studio.ui.data.subtools_per_row set from storage mcpaint:calc internal.studio.tool.subtools_per_row
execute store result storage mcpaint:calc internal.studio.ui.data.n_subtools int 1 run data get storage mcpaint:calc internal.studio.tool.subtools

data modify storage mcpaint:calc internal.studio.ui.data.tool.properties set from storage mcpaint:calc internal.studio.tool.properties
$data modify storage mcpaint:calc internal.studio.ui.data.tool.properties merge from storage mcpaint:calc internal.studio.tool.subtools[$(subtool)].properties
