data modify storage mcpaint:calc internal.studio.data.canvas set from entity @e[type=marker,tag=mcpaint.studio.marker,distance=..0.1,limit=1] data.canvas
data modify storage mcpaint:calc api.canvas.canvas set from storage mcpaint:calc internal.studio.data.canvas

scoreboard players set #studio.event.canvas_changed mcpaint.calc 0
scoreboard players set #studio.event.applied mcpaint.calc 0

execute if data storage mcpaint:calc internal.studio.event{event:"set_pixel"} run function mcpaint:studio/internal/event/set_pixel
execute if data storage mcpaint:calc internal.studio.event{event:"set_pixel"} run scoreboard players operation #studio.event.canvas_changed mcpaint.calc = #canvas.set_pixel.changed mcpaint.calc

execute if score #studio.event.canvas_changed mcpaint.calc matches 1 as @e[type=marker,tag=mcpaint.studio.marker,distance=..0.1,limit=1] run function mcpaint:studio/api/update_canvas
execute if score #studio.event.canvas_changed mcpaint.calc matches 1 run scoreboard players set #studio.event.applied mcpaint.calc 1