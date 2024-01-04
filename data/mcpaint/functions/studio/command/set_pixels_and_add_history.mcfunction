data modify storage mcpaint:calc api.canvas.set_pixels set from storage mcpaint:calc painter_command
function mcpaint:studio/command/set_pixels

execute unless score #canvas.set_pixels.changed mcpaint.calc matches 1 run return 0
data modify storage mcpaint:calc historical_event set value {command:"set_pixels"}
data modify storage mcpaint:calc historical_event.pixels set from storage mcpaint:calc api.canvas.set_pixels.previous_pixels
data modify storage mcpaint:calc historical_event.u set from storage mcpaint:calc api.canvas.set_pixels.u
data modify storage mcpaint:calc historical_event.v set from storage mcpaint:calc api.canvas.set_pixels.v
data remove entity @s data.history.redo
function mcpaint:studio/add_history