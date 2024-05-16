data modify storage mcpaint:calc internal.studio.inverse_event set from storage mcpaint:calc internal.studio.event

data modify storage mcpaint:calc api.canvas.set_pixel set from storage mcpaint:calc internal.studio.event.parameters
function mcpaint:canvas/api/set_pixel
data modify storage mcpaint:calc internal.studio.inverse_event.parameters.colour set from storage mcpaint:calc api.canvas.set_pixel.previous_colour