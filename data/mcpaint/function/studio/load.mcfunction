data modify storage mcpaint:calc internal.studio set value {tools:{registry:[],default:{index:{tool:0,subtool:0}},properties:{}}}

scoreboard players set #studio.tools.max_subtool_rows mcpaint.calc 0
scoreboard players set #studio.tools.n_registered mcpaint.calc 0
scoreboard players set #studio.ui.pixel_density mcpaint.calc 64

### count tools & subtool rows ###
scoreboard players set #studio.tools.register_phase mcpaint.calc 1
function #mcpaint:register_studio_tools

### calculate size of tool window ###
data modify storage mcpaint:calc internal.studio.tools.window set value {definition:{name:"tools",size:[1000,0],origin:[500,-47]},toolname_transform:{key:"toolname_transform",relative:{translation:[0.15625f,0.925f,0.01f]}},anchored_pos:{anchor:[0f,0.5f],offset:[-1.250f,0f]}}
scoreboard players set #studio.tools.double_rows mcpaint.calc -1
scoreboard players operation #studio.tools.double_rows mcpaint.calc += #studio.tools.n_registered mcpaint.calc
scoreboard players operation #studio.tools.temp mcpaint.calc = #studio.tools.max_subtool_rows mcpaint.calc
scoreboard players add #studio.tools.temp mcpaint.calc 1
scoreboard players operation #studio.tools.temp mcpaint.calc /= #const.2 mcpaint.calc
scoreboard players operation #studio.tools.double_rows mcpaint.calc > #studio.tools.temp mcpaint.calc

scoreboard players set #studio.tools.window_height mcpaint.calc 3125
scoreboard players operation #studio.tools.window_height mcpaint.calc *= #studio.tools.double_rows mcpaint.calc
scoreboard players add #studio.tools.window_height mcpaint.calc 5625
execute store result storage mcpaint:calc internal.studio.tools.window.definition.size[1] int 0.1 run scoreboard players get #studio.tools.window_height mcpaint.calc
execute store result storage mcpaint:calc internal.studio.tools.window.anchored_pos.offset[1] float -0.00005 run scoreboard players get #studio.tools.window_height mcpaint.calc

scoreboard players set #studio.tools.temp mcpaint.calc -2600
scoreboard players operation #studio.tools.temp mcpaint.calc += #studio.tools.window_height mcpaint.calc
execute store result storage mcpaint:calc internal.studio.tools.window.toolname_transform.relative.translation[1] float 0.0001 run scoreboard players get #studio.tools.temp mcpaint.calc

### generate tool text ###
data modify storage mcpaint:calc internal.studio.tools.window.tool_text_rows set value []
scoreboard players set #studio.tools.register_phase mcpaint.calc 2
function #mcpaint:register_studio_tools

data modify storage mcpaint:calc internal.studio.tools.default.properties set from storage mcpaint:calc internal.studio.tools.registry[0].properties
data modify storage mcpaint:calc internal.studio.tools.default.properties merge from storage mcpaint:calc internal.studio.tools.registry[0].subtools[0].properties

### generate text rows ###
data modify storage mcpaint:calc internal.studio.tools.window.text_rows set value ['{"text":"\\u1001\\u0400\\u1062","font":"mcpaint:studio_ui","extra":[{"storage":"mcpaint:calc","nbt":"internal.studio.ui.data.tool_text_rows[0]","interpret":true},{"text":"\\n"}]}']
scoreboard players set #studio.tools.i mcpaint.calc 1
scoreboard players set #studio.tools.j mcpaint.calc 1
data modify storage mcpaint:calc internal.studio.tools.macro set value {i:1,j:0,j1:1}
execute if score #studio.tools.i mcpaint.calc <= #studio.tools.double_rows mcpaint.calc run function mcpaint:studio/internal/tools/register/generate_double_rows with storage mcpaint:calc internal.studio.tools.macro
data modify storage mcpaint:calc internal.studio.tools.window.text_rows append value '{"text":"\\u1001\\u0401"}'