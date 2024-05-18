#####################################################################
# studio/ui/tools/api/spawn.mcfunction
# written by Eroxen
#
# Executed as the studio marker.
# Opens the tool window.
#####################################################################

data modify storage mcpaint:calc internal.studio.anchored_pos set value {anchor:[0f,0.5f],offset:[-1.250f,-0.750f]}
function mcpaint:studio/internal/ui/spawn_element/anchored_pos
scoreboard players set #studio.ui_element.layer mcpaint.calc 0

data modify storage mcpaint:calc internal.studio.ui.definition set value {name:"tools",size:[1000,4500],origin:[500,-47]}
function mcpaint:studio/internal/ui/spawn_element/init_values

### init data ###
data modify storage mcpaint:calc internal.studio.ui.data merge value {text_rows:[\
'{"text":"\\u1001\\u0400\\u1062","font":"mcpaint:studio_ui","extra":[{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.tool_text_rows[0]","interpret":true}]}',\
'{"text":""}',\
'{"text":"\\u1001\\u0402\\u1062","font":"mcpaint:studio_ui","extra":[{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.tool_text_rows[1]","interpret":true},{"text":"\\u2005"},{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.subtool_text_rows[0]","interpret":true}]}',\
'{"text":"\\u2026","font":"mcpaint:studio_ui","extra":[{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.subtool_text_rows[1]","interpret":true}]}',\
'{"text":"\\u1001\\u0402\\u1062","font":"mcpaint:studio_ui","extra":[{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.tool_text_rows[2]","interpret":true},{"text":"\\u2005"},{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.subtool_text_rows[2]","interpret":true}]}',\
'{"text":"\\u2026","font":"mcpaint:studio_ui","extra":[{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.subtool_text_rows[3]","interpret":true}]}',\
'{"text":"\\u1001\\u0402\\u1062","font":"mcpaint:studio_ui","extra":[{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.tool_text_rows[2]","interpret":true},{"text":"\\u2005"},{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.subtool_text_rows[2]","interpret":true}]}',\
'{"text":"\\u2026","font":"mcpaint:studio_ui","extra":[{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.subtool_text_rows[3]","interpret":true}]}',\
'{"text":"\\u1001\\u0402\\u1062","font":"mcpaint:studio_ui","extra":[{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.tool_text_rows[2]","interpret":true},{"text":"\\u2005"},{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.subtool_text_rows[2]","interpret":true}]}',\
'{"text":"\\u2026","font":"mcpaint:studio_ui","extra":[{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.subtool_text_rows[3]","interpret":true}]}',\
'{"text":"\\u1001\\u0402\\u1062","font":"mcpaint:studio_ui","extra":[{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.tool_text_rows[2]","interpret":true},{"text":"\\u2005"},{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.subtool_text_rows[2]","interpret":true}]}',\
'{"text":"\\u2026","font":"mcpaint:studio_ui","extra":[{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.subtool_text_rows[3]","interpret":true}]}',\
'{"text":"\\u1001\\u0402\\u1062","font":"mcpaint:studio_ui","extra":[{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.tool_text_rows[2]","interpret":true},{"text":"\\u2005"},{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.subtool_text_rows[2]","interpret":true}]}',\
'{"text":"\\u2026","font":"mcpaint:studio_ui","extra":[{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.subtool_text_rows[3]","interpret":true}]}',\
'{"text":"\\u1001\\u0402\\u1062","font":"mcpaint:studio_ui","extra":[{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.tool_text_rows[2]","interpret":true},{"text":"\\u2005"},{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.subtool_text_rows[2]","interpret":true}]}',\
'{"text":"\\u2026","font":"mcpaint:studio_ui","extra":[{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.subtool_text_rows[3]","interpret":true}]}',\
'{"text":"\\u1001\\u0402\\u1062","font":"mcpaint:studio_ui","extra":[{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.tool_text_rows[2]","interpret":true},{"text":"\\u2005"},{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.subtool_text_rows[2]","interpret":true}]}',\
'{"text":"\\u2026","font":"mcpaint:studio_ui","extra":[{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.subtool_text_rows[3]","interpret":true}]}',\
'{"text":"\\u1001\\u0401","font":"mcpaint:studio_ui"}'\
],tool_text_rows:['{"text":"\\u0404","font":"mcpaint:studio_ui"}','{"text":"\\u0404","font":"mcpaint:studio_ui"}','{"text":"\\u0404","font":"mcpaint:studio_ui"}'],\
subtool_text_rows:['{"text":"\\u0403","font":"mcpaint:studio_ui"}','{"text":"\\u0403","font":"mcpaint:studio_ui"}','{"text":"\\u0403","font":"mcpaint:studio_ui"}','{"text":"\\u0403","font":"mcpaint:studio_ui"}']}

function mcpaint:studio/ui/tools/internal/summon with storage mcpaint:calc internal.studio.ui.spawn