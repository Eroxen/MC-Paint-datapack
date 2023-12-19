data modify storage mcpaint:calc api.canvas.set_pixel set from storage mcpaint:calc painter_command
function mcpaint:studio/command/set_pixel
execute if data storage mcpaint:calc set_pixel{changed:1b} run data modify storage mcpaint:calc historical_event set value {command:"set_pixel"}
execute if data storage mcpaint:calc set_pixel{changed:1b} run data modify storage mcpaint:calc historical_event.colour set from storage mcpaint:calc set_pixel.colour
execute if data storage mcpaint:calc set_pixel{changed:1b} run data modify storage mcpaint:calc historical_event.previous_colour set from storage mcpaint:calc set_pixel.previous_colour
execute if data storage mcpaint:calc set_pixel{changed:1b} run data modify storage mcpaint:calc historical_event.u set from storage mcpaint:calc set_pixel.u
execute if data storage mcpaint:calc set_pixel{changed:1b} run data modify storage mcpaint:calc historical_event.v set from storage mcpaint:calc set_pixel.v
execute if data storage mcpaint:calc set_pixel{changed:1b} run data remove entity @s data.history.redo
execute if data storage mcpaint:calc set_pixel{changed:1b} run function mcpaint:studio/add_history