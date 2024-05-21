data modify storage mcpaint:calc api.canvas.canvas set from storage mcpaint:calc internal.studio.data.canvas

scoreboard players set #studio.event.canvas_changed mcpaint.calc 0
scoreboard players set #studio.event.applied mcpaint.calc 0

execute if data storage mcpaint:calc internal.studio.event{event:"set_pixel"} run function mcpaint:studio/internal/event/set_pixel
execute if data storage mcpaint:calc internal.studio.event{event:"set_pixel"} run scoreboard players operation #studio.session.canvas_changed mcpaint.calc = #canvas.set_pixel.changed mcpaint.calc
execute if score #studio.session.canvas_changed mcpaint.calc matches 1 run scoreboard players set #studio.event.applied mcpaint.calc 1