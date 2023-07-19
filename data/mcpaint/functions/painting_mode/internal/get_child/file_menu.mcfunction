scoreboard players set ui.child mcpaint.calc -1
scoreboard players set #temp.op mcpaint.calc 125
scoreboard players operation ui.child mcpaint.calc = ui_y_1 mcpaint.calc
scoreboard players operation ui.child mcpaint.calc -= ui_y_0 mcpaint.calc
scoreboard players operation ui.child mcpaint.calc -= ui_v mcpaint.calc
scoreboard players operation ui.child mcpaint.calc /= #temp.op mcpaint.calc
execute store result storage mcpaint:calc painter_tick.intersect.child int 1 run scoreboard players get ui.child mcpaint.calc