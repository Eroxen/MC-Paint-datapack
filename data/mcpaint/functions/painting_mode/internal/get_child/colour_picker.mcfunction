execute if score ui_u mcpaint.calc matches 63..937 if score ui_v mcpaint.calc matches 843..969 run data modify storage mcpaint:calc painter_tick.intersect merge value {clickable:1b,child:{button:"red",slider:1b}}
execute if score ui_u mcpaint.calc matches 63..937 if score ui_v mcpaint.calc matches 656..781 run data modify storage mcpaint:calc painter_tick.intersect merge value {clickable:1b,child:{button:"green",slider:1b}}
execute if score ui_u mcpaint.calc matches 63..937 if score ui_v mcpaint.calc matches 469..594 run data modify storage mcpaint:calc painter_tick.intersect merge value {clickable:1b,child:{button:"blue",slider:1b}}
execute if score ui_u mcpaint.calc matches 250..438 if score ui_v mcpaint.calc matches 63..250 run data modify storage mcpaint:calc painter_tick.intersect merge value {clickable:1b,child:{button:"bg",can_dye:1b}}
execute if score ui_u mcpaint.calc matches 125..313 if score ui_v mcpaint.calc matches 187..375 run data modify storage mcpaint:calc painter_tick.intersect merge value {clickable:1b,child:{button:"fg",can_dye:1b}}
execute if score ui_u mcpaint.calc matches 125..250 if score ui_v mcpaint.calc matches 63..186 run data modify storage mcpaint:calc painter_tick.intersect merge value {clickable:1b,child:{button:"switch_fg_bg"}}
execute if score ui_u mcpaint.calc matches 562..688 if score ui_v mcpaint.calc matches 63..375 run data modify storage mcpaint:calc painter_tick.intersect merge value {clickable:1b,child:{button:"transparant"}}

execute if data storage mcpaint:calc painter_tick.intersect.child{slider:1b} run scoreboard players operation ui.slider_value mcpaint.calc = ui_u mcpaint.calc
execute if data storage mcpaint:calc painter_tick.intersect.child{slider:1b} run scoreboard players remove ui.slider_value mcpaint.calc 63
execute if data storage mcpaint:calc painter_tick.intersect.child{slider:1b} run scoreboard players set #temp.op mcpaint.calc 32
execute if data storage mcpaint:calc painter_tick.intersect.child{slider:1b} run scoreboard players operation ui.slider_value mcpaint.calc *= #temp.op mcpaint.calc
execute if data storage mcpaint:calc painter_tick.intersect.child{slider:1b} run scoreboard players set #temp.op mcpaint.calc 875
execute if data storage mcpaint:calc painter_tick.intersect.child{slider:1b} run scoreboard players operation ui.slider_value mcpaint.calc /= #temp.op mcpaint.calc
execute if data storage mcpaint:calc painter_tick.intersect.child{slider:1b} store result storage mcpaint:calc painter_tick.intersect.child.slider_value int 1 run scoreboard players get ui.slider_value mcpaint.calc