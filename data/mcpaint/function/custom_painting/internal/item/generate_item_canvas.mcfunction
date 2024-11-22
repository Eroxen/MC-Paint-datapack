data modify storage mcpaint:calc api.canvas.resize_grid set value {output_size:{width:12, height:12}}
execute if data storage mcpaint:calc api.database.features{width_blocks:1} run data modify storage mcpaint:calc api.canvas.resize_grid.output_size.width set value 8
execute if data storage mcpaint:calc api.database.features{height_blocks:1} run data modify storage mcpaint:calc api.canvas.resize_grid.output_size.height set value 8
data modify storage mcpaint:calc api.canvas.resize_grid.input set from storage mcpaint:calc api.canvas.canvas.colour_array
function mcpaint:canvas/api/resize_grid

data modify storage mcpaint:calc internal.custom_painting.generate_item_canvas set value {queue:[],flags:[],colors:[]}
data modify storage mcpaint:calc internal.custom_painting.generate_item_canvas.queue append from storage mcpaint:calc api.canvas.resize_grid.output[][]

execute if data storage mcpaint:calc internal.custom_painting.generate_item_canvas.queue[0] run function mcpaint:custom_painting/internal/item/canvas/loop
data modify storage mcpaint:calc api.database.work.cached_data.item_canvas set value {}
data modify storage mcpaint:calc api.database.work.cached_data.item_canvas.flags set from storage mcpaint:calc internal.custom_painting.generate_item_canvas.flags
data modify storage mcpaint:calc api.database.work.cached_data.item_canvas.colors set from storage mcpaint:calc internal.custom_painting.generate_item_canvas.colors
function mcpaint:database/api/save_cached_data with storage mcpaint:calc internal.database.filepath