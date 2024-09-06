data modify storage mcpaint:calc internal.studio.inverse_event set from storage mcpaint:calc internal.studio.event

data modify storage mcpaint:calc api.canvas.set_pixels set from storage mcpaint:calc internal.studio.event.parameters
function mcpaint:canvas/api/set_pixels
data modify storage mcpaint:calc internal.studio.inverse_event.parameters.pixels set from storage mcpaint:calc api.canvas.set_pixels.previous_pixels
scoreboard players operation #studio.session.canvas_changed mcpaint.calc = #canvas.set_pixels.changed mcpaint.calc