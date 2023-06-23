execute unless data storage mcpaint:calc canvas.resolved_rows run function mcpaint:canvas/colour_array_to_resolved_rows_all
execute unless data storage mcpaint:calc canvas.resolved_text_size store result storage mcpaint:calc canvas.resolved_text_size int 1 run data get storage mcpaint:calc canvas.resolved_text
execute unless data storage mcpaint:calc canvas.width_px store result storage mcpaint:calc canvas.width_px int 1 run data get storage mcpaint:calc canvas.colour_array[0]
execute unless data storage mcpaint:calc canvas.height_px store result storage mcpaint:calc canvas.height_px int 1 run data get storage mcpaint:calc canvas.colour_array
execute unless data storage mcpaint:calc canvas.width_blocks run data modify storage mcpaint:calc canvas.width_blocks set value 1
execute unless data storage mcpaint:calc canvas.height_blocks run data modify storage mcpaint:calc canvas.height_blocks set value 1

execute store result score canvas_width_px mcpaint.calc run data get storage mcpaint:calc canvas.width_px 1
execute store result score canvas_height_px mcpaint.calc run data get storage mcpaint:calc canvas.height_px 1
execute store result score canvas_width_blocks mcpaint.calc run data get storage mcpaint:calc canvas.width_blocks 1
execute store result score canvas_height_blocks mcpaint.calc run data get storage mcpaint:calc canvas.height_blocks 1