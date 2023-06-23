function mcpaint:entity/interaction/verify_rclick

execute if score verified_rclick mcpaint.calc matches 1 align xyz positioned ~0.5 ~0.5 ~0.5 run tag @e[type=marker,tag=mcpaint.computer.marker,tag=!mcpaint.computer.marker.has_active_task,distance=..0.1,limit=1] add mcpaint.computer.marker.targeted