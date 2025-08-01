### read values ###
execute store result score #canvas.set_pixels.u mcpaint.calc run data get storage mcpaint:calc internal.canvas.set_pixels.pixels[0].u 1
execute store result score #canvas.set_pixels.v mcpaint.calc run data get storage mcpaint:calc internal.canvas.set_pixels.pixels[0].v 1
scoreboard players operation #canvas.set_pixels.u mcpaint.calc += #canvas.set_pixels.origin.u mcpaint.calc
scoreboard players operation #canvas.set_pixels.v mcpaint.calc += #canvas.set_pixels.origin.v mcpaint.calc
execute store result score #canvas.set_pixels.colour mcpaint.calc run data get storage mcpaint:calc internal.canvas.set_pixels.pixels[0].colour 1
execute unless data storage mcpaint:calc internal.canvas.set_pixels.pixels[0].colour run scoreboard players operation #canvas.set_pixels.colour mcpaint.calc = #canvas.set_pixels.base_colour mcpaint.calc

### save last pixel, remove array entry ###
data modify storage mcpaint:calc internal.canvas.set_pixels.last_pixel set from storage mcpaint:calc internal.canvas.set_pixels.pixels[0]
data remove storage mcpaint:calc internal.canvas.set_pixels.pixels[0]

### continue if pixel is outside canvas ###
execute if score #canvas.set_pixels.u mcpaint.calc matches 0.. if score #canvas.set_pixels.u mcpaint.calc < #canvas.height_px mcpaint.calc if score #canvas.set_pixels.v mcpaint.calc matches 0.. if score #canvas.set_pixels.v mcpaint.calc < #canvas.width_px mcpaint.calc run scoreboard players set #canvas.set_pixels.inside_canvas mcpaint.calc 1
execute if score #canvas.set_pixels.inside_canvas mcpaint.calc matches 0 if data storage mcpaint:calc internal.canvas.set_pixels.pixels[0] run function mcpaint:canvas/internal/set_pixels/next_uv