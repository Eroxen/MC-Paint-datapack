execute if score ui_u mcpaint.calc matches 1000..2000 if score ui_v mcpaint.calc matches ..320 run data modify storage mcpaint:calc painter_tick.intersect merge value {clickable:1b,child:{button:"cancel"}}
execute if score ui_u mcpaint.calc matches 0..1000 if score ui_v mcpaint.calc matches ..320 run data modify storage mcpaint:calc painter_tick.intersect merge value {clickable:1b,child:{button:"ok"}}

execute if score ui_u mcpaint.calc matches 400..560 if score ui_v mcpaint.calc matches 430..670 run data modify storage mcpaint:calc painter_tick.intersect merge value {clickable:1b,child:{button:"switch_page",direction:1}}
execute if score ui_u mcpaint.calc matches 100..250 if score ui_v mcpaint.calc matches 430..670 run data modify storage mcpaint:calc painter_tick.intersect merge value {clickable:1b,child:{button:"switch_page",direction:-1}}

execute if score ui_u mcpaint.calc matches 640..1930 if score ui_v mcpaint.calc matches 420..1670 run data modify storage mcpaint:calc painter_tick.intersect merge value {clickable:1b,child:{button:"select_work"}}