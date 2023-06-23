data modify storage mcpaint:calc canvas set from storage mcpaint:calc painter_ping_studio.responder.data.canvas
function mcpaint:canvas/get_info

data modify storage mcpaint:calc ui set from storage mcpaint:calc painter_ping_studio.responder.data.ui.canvas
execute store result score ui_x_0 mcpaint.calc run data get storage mcpaint:calc ui.position[0] 1
execute store result score ui_y_0 mcpaint.calc run data get storage mcpaint:calc ui.position[1] 1
execute store result score ui_x_1 mcpaint.calc run data get storage mcpaint:calc ui.size[0] 1
execute store result score ui_y_1 mcpaint.calc run data get storage mcpaint:calc ui.size[1] 1


scoreboard players operation canvas_u mcpaint.calc = ui_y_0 mcpaint.calc
scoreboard players operation canvas_u mcpaint.calc -= screenspace_y mcpaint.calc
scoreboard players operation canvas_u mcpaint.calc += ui_y_1 mcpaint.calc
scoreboard players operation canvas_u mcpaint.calc *= canvas_height_px mcpaint.calc
scoreboard players operation canvas_u mcpaint.calc /= canvas_height_blocks mcpaint.calc
execute if data storage mcpaint:calc painter_tick.selected_tool{name:"pen",subtool:{offset:1b}} run scoreboard players remove canvas_u mcpaint.calc 500
scoreboard players operation canvas_u mcpaint.calc *= canvas_height_blocks mcpaint.calc
scoreboard players operation canvas_u mcpaint.calc /= ui_y_1 mcpaint.calc

scoreboard players operation canvas_v mcpaint.calc = screenspace_x mcpaint.calc
scoreboard players operation canvas_v mcpaint.calc -= ui_x_0 mcpaint.calc
scoreboard players operation canvas_v mcpaint.calc *= canvas_width_px mcpaint.calc
scoreboard players operation canvas_v mcpaint.calc /= canvas_width_blocks mcpaint.calc
execute if data storage mcpaint:calc painter_tick.selected_tool{name:"pen",subtool:{offset:1b}} run scoreboard players remove canvas_v mcpaint.calc 500
scoreboard players operation canvas_v mcpaint.calc *= canvas_width_blocks mcpaint.calc
scoreboard players operation canvas_v mcpaint.calc /= ui_x_1 mcpaint.calc

execute if data storage mcpaint:calc painter_tick.selected_tool{name:"pen",subtool:{command:"set_pixel"}} run data modify storage mcpaint:calc painter_command set value {command:"set_pixel",u:0,v:0,colour:0}
execute if data storage mcpaint:calc painter_tick.selected_tool{name:"pen",subtool:{command:"set_pixels"}} run data modify storage mcpaint:calc painter_command set value {command:"set_pixels",u:0,v:0,colour:0}
execute if data storage mcpaint:calc painter_tick.selected_tool{name:"pen",subtool:{command:"set_pixels"}} run data modify storage mcpaint:calc painter_command.pixels set from storage mcpaint:calc painter_tick.selected_tool.subtool.pixels
execute if data storage mcpaint:calc painter_tick.selected_tool{name:"pen"} store result storage mcpaint:calc painter_command.u int 1 run scoreboard players get canvas_u mcpaint.calc
execute if data storage mcpaint:calc painter_tick.selected_tool{name:"pen"} store result storage mcpaint:calc painter_command.v int 1 run scoreboard players get canvas_v mcpaint.calc
execute if data storage mcpaint:calc painter_tick.selected_tool{name:"pen"} run data modify storage mcpaint:calc painter_command.colour set from storage mcpaint:calc painter_ping_studio.responder.data.ui.colour_picker.ink_colour

execute if data storage mcpaint:calc painter_tick.selected_tool{name:"colour_picker"} run data modify storage mcpaint:calc painter_command set value {command:"get_colour_from_canvas",u:0,v:0}
execute if data storage mcpaint:calc painter_tick.selected_tool{name:"colour_picker"} store result storage mcpaint:calc painter_command.u int 1 run scoreboard players get canvas_u mcpaint.calc
execute if data storage mcpaint:calc painter_tick.selected_tool{name:"colour_picker"} store result storage mcpaint:calc painter_command.v int 1 run scoreboard players get canvas_v mcpaint.calc