function mcpaint:item/swap_hands

execute unless data storage mcpaint:calc painter_command unless score @s mcpaint.sneak matches 1.. if data storage mcpaint:calc painter_tick.studio.data.history.undo[0] run data modify storage mcpaint:calc painter_command set value {command:"undo"}
execute unless data storage mcpaint:calc painter_command if score @s mcpaint.sneak matches 1.. if data storage mcpaint:calc painter_tick.studio.data.history.redo[0] run data modify storage mcpaint:calc painter_command set value {command:"redo"}

execute if data storage mcpaint:calc painter_command run scoreboard players set #pro_brush_shortcut mcpaint.calc 1
execute if data storage mcpaint:calc painter_command as @e[type=marker,tag=mcpaint.studio.marker.has_painter,distance=..16,predicate=mcpaint:attention_link,limit=1] at @s run function mcpaint:studio/follow_command