data modify storage mcpaint:calc set_pixels set from storage mcpaint:calc painter_command
function mcpaint:studio/command/set_pixels
execute if data storage mcpaint:calc set_pixels{changed_any:1b} run data modify storage mcpaint:calc historical_event set value {command:"set_pixels"}
execute if data storage mcpaint:calc set_pixels{changed_any:1b} run data modify storage mcpaint:calc historical_event.pixels set from storage mcpaint:calc set_pixels.previous
execute if data storage mcpaint:calc set_pixels{changed_any:1b} run data modify storage mcpaint:calc historical_event.u set from storage mcpaint:calc set_pixels.u
execute if data storage mcpaint:calc set_pixels{changed_any:1b} run data modify storage mcpaint:calc historical_event.v set from storage mcpaint:calc set_pixels.v
execute if data storage mcpaint:calc set_pixels{changed_any:1b} run data remove entity @s data.history.redo
execute if data storage mcpaint:calc set_pixels{changed_any:1b} run function mcpaint:studio/add_history