data modify storage mcpaint:calc internal.custom_painting.generate_item_canvas.flags append value 1b
execute store result storage mcpaint:calc api.util.colour.int int 1 run scoreboard players get #custom_painting.item.pixel_colour mcpaint.calc
function mcpaint:util/colour/api/int_to_potion
data modify storage mcpaint:calc internal.custom_painting.generate_item_canvas.colors append from storage mcpaint:calc api.util.colour.potion