data modify storage mcpaint:calc api.canvas.set_pixel set from storage mcpaint:calc painter_command
function mcpaint:studio/command/set_pixel

execute unless score #canvas.set_pixel.changed mcpaint.calc matches 1 run return 0
data modify storage mcpaint:calc historical_event set value {command:"set_pixel"}
data modify storage mcpaint:calc historical_event.colour set from storage mcpaint:calc api.canvas.set_pixel.colour
data modify storage mcpaint:calc historical_event.previous_colour set from storage mcpaint:calc api.canvas.set_pixel.previous_colour
data modify storage mcpaint:calc historical_event.u set from storage mcpaint:calc api.canvas.set_pixel.u
data modify storage mcpaint:calc historical_event.v set from storage mcpaint:calc api.canvas.set_pixel.v
data remove entity @s data.history.redo
function mcpaint:studio/add_history