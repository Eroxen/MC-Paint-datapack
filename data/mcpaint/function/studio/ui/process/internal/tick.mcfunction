data modify storage mcpaint:calc internal.studio.ui.data set from entity @s data

function mcpaint:studio/ui/process/internal/call_tick_function with storage mcpaint:calc internal.studio.ui.data.tick
execute unless entity @s run return 0

execute store result score #studio.ui_element.value mcpaint.calc run data get storage mcpaint:calc internal.studio.ui.data.bar.steps 1
execute store result score #studio.ui_element.max mcpaint.calc run data get storage mcpaint:calc internal.studio.ui.data.bar.total_steps 1
scoreboard players add #studio.ui_element.value mcpaint.calc 1
scoreboard players set #studio.ui_element.level mcpaint.calc 56
scoreboard players operation #studio.ui_element.level mcpaint.calc *= #studio.ui_element.value mcpaint.calc
scoreboard players operation #studio.ui_element.level mcpaint.calc /= #studio.ui_element.max mcpaint.calc
execute if score #studio.ui_element.level mcpaint.calc matches 57.. run scoreboard players set #studio.ui_element.level mcpaint.calc 56
execute store result storage mcpaint:calc internal.studio.ui.data.bar.steps int 1 run scoreboard players get #studio.ui_element.value mcpaint.calc
execute store result storage mcpaint:calc internal.studio.ui.data.bar.level int 1 run scoreboard players get #studio.ui_element.level mcpaint.calc

function mcpaint:studio/ui/process/internal/update_bar with storage mcpaint:calc internal.studio.ui.data.bar

data modify entity @s data set from storage mcpaint:calc internal.studio.ui.data