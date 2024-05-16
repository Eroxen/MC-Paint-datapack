execute store result score #studio.ui_element.pos.u mcpaint.calc run data get storage mcpaint:calc internal.studio.anchored_pos.anchor[0] 1000
scoreboard players operation #studio.ui_element.pos.u mcpaint.calc *= #studio.width mcpaint.calc
execute if score #studio.width mcpaint.calc matches 3.. run scoreboard players remove #studio.ui_element.pos.u mcpaint.calc 1000
execute store result score #studio.ui_element.pos.temp mcpaint.calc run data get storage mcpaint:calc internal.studio.anchored_pos.offset[0] 1000
scoreboard players operation #studio.ui_element.pos.u mcpaint.calc += #studio.ui_element.pos.temp mcpaint.calc

execute store result score #studio.ui_element.pos.v mcpaint.calc run data get storage mcpaint:calc internal.studio.anchored_pos.anchor[1] 1000
scoreboard players operation #studio.ui_element.pos.v mcpaint.calc *= #studio.height mcpaint.calc
execute store result score #studio.ui_element.pos.temp mcpaint.calc run data get storage mcpaint:calc internal.studio.anchored_pos.offset[1] 1000
scoreboard players operation #studio.ui_element.pos.v mcpaint.calc += #studio.ui_element.pos.temp mcpaint.calc

execute if data storage mcpaint:calc internal.studio.anchored_pos.min_v store result score #studio.ui_element.pos.temp mcpaint.calc run data get storage mcpaint:calc internal.studio.anchored_pos.min_v 1000
execute if data storage mcpaint:calc internal.studio.anchored_pos.min_v run scoreboard players operation #studio.ui_element.pos.v mcpaint.calc > #studio.ui_element.pos.temp mcpaint.calc