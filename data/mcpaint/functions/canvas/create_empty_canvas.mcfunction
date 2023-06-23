data modify storage mcpaint:calc canvas set value {colour_array:[],resolved_rows:[],resolved_text:''}

data modify storage mcpaint:calc empty_canvas set value {array:[],element:-1}
scoreboard players operation i mcpaint.calc = canvas_width_px mcpaint.calc
execute if score i mcpaint.calc matches 1.. run function mcpaint:canvas/create_empty_canvas_loop

data modify storage mcpaint:calc empty_canvas.element set from storage mcpaint:calc empty_canvas.array
data modify storage mcpaint:calc empty_canvas.array set value []
scoreboard players operation i mcpaint.calc = canvas_height_px mcpaint.calc
execute if score i mcpaint.calc matches 1.. run function mcpaint:canvas/create_empty_canvas_loop

data modify storage mcpaint:calc canvas.colour_array set from storage mcpaint:calc empty_canvas.array
execute store result storage mcpaint:calc canvas.width_px int 1 run scoreboard players get canvas_width_px mcpaint.calc
execute store result storage mcpaint:calc canvas.height_px int 1 run scoreboard players get canvas_height_px mcpaint.calc
execute store result storage mcpaint:calc canvas.width_blocks int 1 run scoreboard players get canvas_width_blocks mcpaint.calc
execute store result storage mcpaint:calc canvas.height_blocks int 1 run scoreboard players get canvas_height_blocks mcpaint.calc
function mcpaint:canvas/colour_array_to_resolved_rows_all