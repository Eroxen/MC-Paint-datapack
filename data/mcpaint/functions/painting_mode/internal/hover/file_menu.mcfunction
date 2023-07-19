scoreboard players set #temp.hover_now mcpaint.calc -1
execute if data storage mcpaint:calc ui.hover store result score #temp.hover_now mcpaint.calc run data get storage mcpaint:calc ui.hover 1
execute unless score ui.child mcpaint.calc = #temp.hover_now mcpaint.calc run data modify storage mcpaint:calc painter_command set value {command:"hover_file_menu",i:0}
execute unless score ui.child mcpaint.calc = #temp.hover_now mcpaint.calc run function mcpaint:painting_mode/sound/scroll
execute unless score ui.child mcpaint.calc = #temp.hover_now mcpaint.calc run data modify storage mcpaint:calc painter_command.i set from storage mcpaint:calc painter_tick.intersect.child