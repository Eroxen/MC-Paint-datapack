execute if score ui_u mcpaint.calc matches 1000..2000 if score ui_v mcpaint.calc matches ..300 run data modify storage mcpaint:calc painter_tick.intersect merge value {clickable:1b,child:{button:"cancel"}}
execute if score ui_u mcpaint.calc matches 0..1000 if score ui_v mcpaint.calc matches ..300 run data modify storage mcpaint:calc painter_tick.intersect merge value {clickable:1b,child:{button:"ok"}}

execute if score ui_u mcpaint.calc matches 1175..1300 if score ui_v mcpaint.calc matches 1130..1300 run data modify storage mcpaint:calc painter_tick.intersect merge value {clickable:1b,child:{button:"block_width",direction:1}}
execute if score ui_u mcpaint.calc matches 700..830 if score ui_v mcpaint.calc matches 1130..1300 run data modify storage mcpaint:calc painter_tick.intersect merge value {clickable:1b,child:{button:"block_width",direction:-1}}

execute if score ui_u mcpaint.calc matches 1175..1300 if score ui_v mcpaint.calc matches 910..1080 run data modify storage mcpaint:calc painter_tick.intersect merge value {clickable:1b,child:{button:"pixel_width",direction:1}}
execute if score ui_u mcpaint.calc matches 700..830 if score ui_v mcpaint.calc matches 910..1080 run data modify storage mcpaint:calc painter_tick.intersect merge value {clickable:1b,child:{button:"pixel_width",direction:-1}}

execute if score ui_u mcpaint.calc matches 150..330 if score ui_v mcpaint.calc matches 770..900 run data modify storage mcpaint:calc painter_tick.intersect merge value {clickable:1b,child:{button:"block_height",direction:1}}
execute if score ui_u mcpaint.calc matches 150..330 if score ui_v mcpaint.calc matches 420..545 run data modify storage mcpaint:calc painter_tick.intersect merge value {clickable:1b,child:{button:"block_height",direction:-1}}

execute if score ui_u mcpaint.calc matches 500..670 if score ui_v mcpaint.calc matches 770..900 run data modify storage mcpaint:calc painter_tick.intersect merge value {clickable:1b,child:{button:"pixel_height",direction:1}}
execute if score ui_u mcpaint.calc matches 500..670 if score ui_v mcpaint.calc matches 420..545 run data modify storage mcpaint:calc painter_tick.intersect merge value {clickable:1b,child:{button:"pixel_height",direction:-1}}

execute if score ui_u mcpaint.calc matches 1630..1940 if score ui_v mcpaint.calc matches 1430..1740 run data modify storage mcpaint:calc painter_tick.intersect merge value {clickable:1b,child:{button:"filename"}}