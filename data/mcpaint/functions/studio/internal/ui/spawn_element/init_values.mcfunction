data modify storage mcpaint:calc internal.studio.ui.spawn set value {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0f,0f,0f]}}
data modify storage mcpaint:calc internal.studio.ui.spawn.rotation set from entity @s Rotation

data modify storage mcpaint:calc internal.studio.ui.data set value {}
data modify storage mcpaint:calc internal.studio.ui.data.definition set from storage mcpaint:calc internal.studio.ui.definition

execute store result score #studio.ui_element.size.u mcpaint.calc run data get storage mcpaint:calc internal.studio.ui.data.definition.size[0] 1
execute store result score #studio.ui_element.size.v mcpaint.calc run data get storage mcpaint:calc internal.studio.ui.data.definition.size[1] 1
execute store result score #studio.ui_element.origin.u mcpaint.calc run data get storage mcpaint:calc internal.studio.ui.data.definition.origin[0] 1
execute store result score #studio.ui_element.origin.v mcpaint.calc run data get storage mcpaint:calc internal.studio.ui.data.definition.origin[1] 1

scoreboard players operation #studio.ui_element.translation.u mcpaint.calc = #studio.ui_element.pos.u mcpaint.calc
scoreboard players operation #studio.ui_element.translation.u mcpaint.calc += #studio.ui_element.origin.u mcpaint.calc
scoreboard players remove #studio.ui_element.translation.u mcpaint.calc 500
scoreboard players operation #studio.ui_element.translation.v mcpaint.calc = #studio.ui_element.pos.v mcpaint.calc
scoreboard players operation #studio.ui_element.translation.v mcpaint.calc += #studio.ui_element.origin.v mcpaint.calc
scoreboard players remove #studio.ui_element.translation.v mcpaint.calc 500
scoreboard players operation #studio.ui_element.translation.z mcpaint.calc = #studio.ui_element.layer mcpaint.calc
scoreboard players remove #studio.ui_element.translation.z mcpaint.calc 7
execute store result storage mcpaint:calc internal.studio.ui.spawn.transformation.translation[0] float 0.001 run scoreboard players get #studio.ui_element.translation.u mcpaint.calc
execute store result storage mcpaint:calc internal.studio.ui.spawn.transformation.translation[1] float 0.001 run scoreboard players get #studio.ui_element.translation.v mcpaint.calc
execute store result storage mcpaint:calc internal.studio.ui.spawn.transformation.translation[2] float 0.0625 run scoreboard players get #studio.ui_element.translation.z mcpaint.calc