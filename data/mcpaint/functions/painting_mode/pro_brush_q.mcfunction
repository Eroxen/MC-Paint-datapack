data modify storage mcpaint:calc UUID set from entity @e[type=item,predicate=mcpaint:pro_brush_item,distance=..1,limit=1] Thrower
execute store success score different mcpaint.calc run data modify storage mcpaint:calc UUID set from entity @s UUID
execute if score different mcpaint.calc matches 1 run return 0

data modify storage mcpaint:calc painter_tick.selected_tool set from storage mcpaint:calc painter_tick.studio.data.ui.tools.selected_tool_data
data modify storage mcpaint:calc painter_tick.selected_tool.subtool set from storage mcpaint:calc painter_tick.studio.data.ui.tools.selected_subtool_data

execute as @e[type=item,predicate=mcpaint:pro_brush_item,distance=..1,limit=1] run function mcpaint:item/return_to_thrower

execute unless score @s mcpaint.sneak matches 1.. run data modify storage mcpaint:calc painter_command set value {command:"cycle_tools"}
execute unless score @s mcpaint.sneak matches 1.. run function mcpaint:painting_mode/sound/scroll
execute if score @s mcpaint.sneak matches 1.. if data storage mcpaint:calc painter_tick.selected_tool.subtool run data modify storage mcpaint:calc painter_command set value {command:"cycle_subtools"}
execute if score @s mcpaint.sneak matches 1.. if data storage mcpaint:calc painter_tick.selected_tool.subtool run function mcpaint:painting_mode/sound/scroll

execute if data storage mcpaint:calc painter_command run scoreboard players set #pro_brush_shortcut mcpaint.calc 1
execute if data storage mcpaint:calc painter_command as @e[type=marker,tag=mcpaint.studio.marker.has_painter,distance=..16,predicate=mcpaint:attention_link,limit=1] at @s run function mcpaint:studio/follow_command