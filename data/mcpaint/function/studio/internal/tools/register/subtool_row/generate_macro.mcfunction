data modify storage mcpaint:calc internal.studio.tools.macro set value {}

data modify storage mcpaint:calc internal.studio.tools.macro merge value {1a:'"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.subtool_icons[',1c:']","interpret":true'}
execute store result storage mcpaint:calc internal.studio.tools.macro.1b int 1 run scoreboard players get #studio.tools.j mcpaint.calc
scoreboard players add #studio.tools.j mcpaint.calc 1
execute if score #studio.tools.j mcpaint.calc > #studio.tool.n_subtools mcpaint.calc run data modify storage mcpaint:calc internal.studio.tools.macro merge value {1a:'"text":"\\\\u0405\\\\u1001"',1b:'',1c:''}
execute if score #studio.tool.subtools_per_row mcpaint.calc matches ..1 run return 0

data modify storage mcpaint:calc internal.studio.tools.macro merge value {2a:'"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.subtool_icons[',2c:']","interpret":true'}
execute store result storage mcpaint:calc internal.studio.tools.macro.2b int 1 run scoreboard players get #studio.tools.j mcpaint.calc
scoreboard players add #studio.tools.j mcpaint.calc 1
execute if score #studio.tools.j mcpaint.calc > #studio.tool.n_subtools mcpaint.calc run data modify storage mcpaint:calc internal.studio.tools.macro merge value {2a:'"text":"\\\\u0405\\\\u1001"',2b:'',2c:''}
execute if score #studio.tool.subtools_per_row mcpaint.calc matches ..2 run return 0

data modify storage mcpaint:calc internal.studio.tools.macro merge value {3a:'"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.subtool_icons[',3c:']","interpret":true'}
execute store result storage mcpaint:calc internal.studio.tools.macro.3b int 1 run scoreboard players get #studio.tools.j mcpaint.calc
scoreboard players add #studio.tools.j mcpaint.calc 1
execute if score #studio.tools.j mcpaint.calc > #studio.tool.n_subtools mcpaint.calc run data modify storage mcpaint:calc internal.studio.tools.macro merge value {3a:'"text":"\\\\u0405\\\\u1001"',3b:'',3c:''}

execute if score #studio.tool.subtools_per_row mcpaint.calc matches ..3 run return 0