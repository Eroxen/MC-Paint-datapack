function mcpaint:entity/interaction/verify_lclick

execute if score verified_lclick mcpaint.calc matches 1 align xyz positioned ~0.5 ~0.5 ~0.5 run tag @e[type=marker,tag=mcpaint.computer.marker,distance=..0.1,limit=1] add mcpaint.computer.marker.targeted