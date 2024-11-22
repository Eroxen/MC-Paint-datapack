execute store result score #custom_painting.item.pixel_colour mcpaint.calc run data get storage mcpaint:calc internal.custom_painting.generate_item_canvas.queue[0] 1
data remove storage mcpaint:calc internal.custom_painting.generate_item_canvas.queue[0]

execute if score #custom_painting.item.pixel_colour mcpaint.calc matches -1 run function mcpaint:custom_painting/internal/item/canvas/empty_pixel
execute unless score #custom_painting.item.pixel_colour mcpaint.calc matches -1 run function mcpaint:custom_painting/internal/item/canvas/full_pixel

execute if data storage mcpaint:calc internal.custom_painting.generate_item_canvas.queue[0] run function mcpaint:custom_painting/internal/item/canvas/loop