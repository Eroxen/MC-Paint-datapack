execute if data storage mcpaint:calc historical_event{command:"set_pixel"} run data modify storage mcpaint:calc api.canvas.set_pixel set value {}
execute if data storage mcpaint:calc historical_event{command:"set_pixel"} run data modify storage mcpaint:calc api.canvas.set_pixel.u set from storage mcpaint:calc historical_event.u
execute if data storage mcpaint:calc historical_event{command:"set_pixel"} run data modify storage mcpaint:calc api.canvas.set_pixel.v set from storage mcpaint:calc historical_event.v
execute if data storage mcpaint:calc historical_event{command:"set_pixel"} run data modify storage mcpaint:calc api.canvas.set_pixel.colour set from storage mcpaint:calc historical_event.previous_colour
execute if data storage mcpaint:calc historical_event{command:"set_pixel"} run function mcpaint:studio/command/set_pixel
execute if data storage mcpaint:calc historical_event{command:"set_pixel"} run data modify storage mcpaint:calc historical_event.colour set from storage mcpaint:calc api.canvas.set_pixel.colour
execute if data storage mcpaint:calc historical_event{command:"set_pixel"} run data modify storage mcpaint:calc historical_event.previous_colour set from storage mcpaint:calc api.canvas.set_pixel.previous_colour
execute if data storage mcpaint:calc historical_event{command:"set_pixel"} run data modify storage mcpaint:calc inv_historical_event set from storage mcpaint:calc historical_event

execute if data storage mcpaint:calc historical_event{command:"set_pixels"} run data modify storage mcpaint:calc api.canvas.set_pixels set value {}
execute if data storage mcpaint:calc historical_event{command:"set_pixels"} run data modify storage mcpaint:calc api.canvas.set_pixels.u set from storage mcpaint:calc historical_event.u
execute if data storage mcpaint:calc historical_event{command:"set_pixels"} run data modify storage mcpaint:calc api.canvas.set_pixels.v set from storage mcpaint:calc historical_event.v
execute if data storage mcpaint:calc historical_event{command:"set_pixels"} run data modify storage mcpaint:calc api.canvas.set_pixels.pixels set from storage mcpaint:calc historical_event.pixels
execute if data storage mcpaint:calc historical_event{command:"set_pixels"} run function mcpaint:studio/command/set_pixels
execute if data storage mcpaint:calc historical_event{command:"set_pixels"} run data modify storage mcpaint:calc historical_event.pixels set from storage mcpaint:calc api.canvas.set_pixels.previous_pixels
execute if data storage mcpaint:calc historical_event{command:"set_pixels"} run data modify storage mcpaint:calc inv_historical_event set from storage mcpaint:calc historical_event