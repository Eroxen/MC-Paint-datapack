execute store result score #studio.ui_element.temp.val mcpaint.calc run data get storage mcpaint:calc internal.studio.temp.additional_transform.transform.translation[0] 1000
execute store result score #studio.ui_element.temp.delta mcpaint.calc run data get storage mcpaint:calc internal.studio.temp.additional_transform.relative.translation[0] 1000
scoreboard players operation #studio.ui_element.temp.val mcpaint.calc += #studio.ui_element.temp.delta mcpaint.calc
execute store result storage mcpaint:calc internal.studio.temp.additional_transform.transform.translation[0] float 0.001 run scoreboard players get #studio.ui_element.temp.val mcpaint.calc

execute store result score #studio.ui_element.temp.val mcpaint.calc run data get storage mcpaint:calc internal.studio.temp.additional_transform.transform.translation[1] 1000
execute store result score #studio.ui_element.temp.delta mcpaint.calc run data get storage mcpaint:calc internal.studio.temp.additional_transform.relative.translation[1] 1000
scoreboard players operation #studio.ui_element.temp.val mcpaint.calc += #studio.ui_element.temp.delta mcpaint.calc
execute store result storage mcpaint:calc internal.studio.temp.additional_transform.transform.translation[1] float 0.001 run scoreboard players get #studio.ui_element.temp.val mcpaint.calc

execute store result score #studio.ui_element.temp.val mcpaint.calc run data get storage mcpaint:calc internal.studio.temp.additional_transform.transform.translation[2] 1000
execute store result score #studio.ui_element.temp.delta mcpaint.calc run data get storage mcpaint:calc internal.studio.temp.additional_transform.relative.translation[2] 1000
scoreboard players operation #studio.ui_element.temp.val mcpaint.calc += #studio.ui_element.temp.delta mcpaint.calc
execute store result storage mcpaint:calc internal.studio.temp.additional_transform.transform.translation[2] float 0.001 run scoreboard players get #studio.ui_element.temp.val mcpaint.calc