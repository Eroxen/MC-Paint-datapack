scoreboard players set #studio.ui_element.temp mcpaint.calc 0
execute as @e[type=marker,tag=mcpaint.studio.marker,distance=..0.1,limit=1] if data entity @s data.filepath.author if data entity @s data.filepath.name run scoreboard players set #studio.ui_element.temp mcpaint.calc 1
execute if score #studio.ui_element.temp mcpaint.calc matches 0 run tellraw @p[predicate=mcpaint:same_session] {"translate":"mcpaint.error.not_saved_yet","color":"red"}
execute if score #studio.ui_element.temp mcpaint.calc matches 0 run return run execute as @e[type=marker,tag=mcpaint.studio.marker,distance=..0.1,limit=1] run function mcpaint:studio/ui/save_as/api/spawn

execute as @p[predicate=mcpaint:same_session] unless predicate mcpaint:can_craft_custom_painting run return run tellraw @s {"translate":"mcpaint.error.cannot_craft_custom_painting","color":"red","with":[{"translate":"item.minecraft.painting"}]}
execute as @p[predicate=mcpaint:same_session] run function mcpaint:custom_painting/api/give with entity @e[type=marker,tag=mcpaint.studio.marker,distance=..0.1,limit=1] data.filepath
execute if score #database.found mcpaint.calc matches 1 as @p[predicate=mcpaint:same_session] unless entity @s[gamemode=creative] run clear @s painting 1