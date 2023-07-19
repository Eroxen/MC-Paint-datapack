scoreboard players set ui.child mcpaint.calc -1
execute if score ui_u mcpaint.calc matches 250..500 run scoreboard players set ui.child mcpaint.calc 1
execute if score ui_u mcpaint.calc matches 250..500 run scoreboard players set #temp.op mcpaint.calc 250
execute if score ui_u mcpaint.calc matches 94..219 run scoreboard players set ui.child mcpaint.calc 2
execute if score ui_u mcpaint.calc matches 94..219 run scoreboard players set #temp.op mcpaint.calc 125

scoreboard players set ui.child.child mcpaint.calc 1000
scoreboard players operation ui.child.child mcpaint.calc -= ui_v mcpaint.calc
scoreboard players operation ui.child.child mcpaint.calc /= #temp.op mcpaint.calc
scoreboard players add ui.child.child mcpaint.calc 1

### tool column ###
execute if score ui.child mcpaint.calc matches 1 unless score ui.child.child mcpaint.calc matches 1..2 run return 0
execute if score ui.child mcpaint.calc matches 1 run data modify storage mcpaint:calc painter_tick.intersect merge value {clickable:1b,child:{name:"tool"}}

### subtool column ###
execute if score ui.child mcpaint.calc matches 2 store result score #temp.max mcpaint.calc run data get storage mcpaint:calc painter_tick.studio.data.ui.tools.selected_tool_data.subtools
execute if score ui.child mcpaint.calc matches 2 if score ui.child.child mcpaint.calc > #temp.max mcpaint.calc run return 0
execute if score ui.child mcpaint.calc matches 2 run data modify storage mcpaint:calc painter_tick.intersect merge value {clickable:1b,child:{name:"subtool"}}

execute store result storage mcpaint:calc painter_tick.intersect.child.child int 1 run scoreboard players get ui.child.child mcpaint.calc