data modify storage mcpaint:calc api.canvas.canvas set from entity @s data.canvas

execute if data storage mcpaint:calc painter_command{command:"set_pixels"} run function mcpaint:studio/command/set_pixels_and_add_history

execute if data storage mcpaint:calc painter_command{command:"set_pixel"} run function mcpaint:studio/command/set_pixel_and_add_history

execute if data storage mcpaint:calc painter_command{command:"colour_picker"} run function mcpaint:studio/ui/colour_picker
execute if data storage mcpaint:calc painter_command{command:"tools"} run function mcpaint:studio/ui/tools
execute if data storage mcpaint:calc painter_command{command:"cycle_tools"} run function mcpaint:studio/command/cycle_tools
execute if data storage mcpaint:calc painter_command{command:"cycle_subtools"} run function mcpaint:studio/command/cycle_subtools

execute if data storage mcpaint:calc painter_command{command:"get_colour_from_canvas"} run data modify storage mcpaint:calc get_pixel set from storage mcpaint:calc painter_command
execute if data storage mcpaint:calc painter_command{command:"get_colour_from_canvas"} run function mcpaint:canvas/get_pixel
execute if data storage mcpaint:calc painter_command{command:"get_colour_from_canvas"} run data modify storage mcpaint:calc painter_command merge value {u:-1,v:-1}
execute if data storage mcpaint:calc painter_command{command:"get_colour_from_canvas"} run data modify storage mcpaint:calc painter_command.colour_from_canvas set from storage mcpaint:calc get_pixel.colour
execute if data storage mcpaint:calc painter_command{command:"get_colour_from_canvas"} run function mcpaint:studio/ui/colour_picker

execute if data storage mcpaint:calc painter_command{command:"hover_file_menu"} run data modify entity @s data.ui.file_menu.hover set from storage mcpaint:calc painter_command.i
execute if data storage mcpaint:calc painter_command{command:"hover_file_menu"} run data modify entity @s data.ui.file_menu.lines set from entity @s data.ui.file_menu.unselected_lines
execute if data storage mcpaint:calc painter_command{command:"hover_file_menu",i:0} run data modify entity @s data.ui.file_menu.lines[0] set from entity @s data.ui.file_menu.selected_lines[0]
execute if data storage mcpaint:calc painter_command{command:"hover_file_menu",i:1} run data modify entity @s data.ui.file_menu.lines[1] set from entity @s data.ui.file_menu.selected_lines[1]
execute if data storage mcpaint:calc painter_command{command:"hover_file_menu",i:2} run data modify entity @s data.ui.file_menu.lines[2] set from entity @s data.ui.file_menu.selected_lines[2]
execute if data storage mcpaint:calc painter_command{command:"hover_file_menu",i:3} run data modify entity @s data.ui.file_menu.lines[3] set from entity @s data.ui.file_menu.selected_lines[3]
execute if data storage mcpaint:calc painter_command{command:"hover_file_menu",i:4} run data modify entity @s data.ui.file_menu.lines[4] set from entity @s data.ui.file_menu.selected_lines[4]
execute if data storage mcpaint:calc painter_command{command:"hover_file_menu"} as @e[type=marker,tag=mcpaint.studio.ui_controller,distance=..0.1,limit=1] run function mcpaint:studio/ui/dynamic_elements
execute if data storage mcpaint:calc painter_command{command:"unhover_file_menu"} run data remove entity @s data.ui.file_menu.hover
execute if data storage mcpaint:calc painter_command{command:"unhover_file_menu"} run data modify entity @s data.ui.file_menu.lines set from entity @s data.ui.file_menu.unselected_lines
execute if data storage mcpaint:calc painter_command{command:"unhover_file_menu"} as @e[type=marker,tag=mcpaint.studio.ui_controller,distance=..0.1,limit=1] run function mcpaint:studio/ui/dynamic_elements

execute if data storage mcpaint:calc painter_command{command:"save"} run function mcpaint:studio/command/save

execute if data storage mcpaint:calc painter_command{command:"open_new_file_popup"} run function mcpaint:studio/popup/open_new_file
execute if data storage mcpaint:calc painter_command{command:"popup.cancel"} run function mcpaint:studio/popup/cancel
execute if data storage mcpaint:calc painter_command{command:"popup.new_file.update"} run data modify entity @s data.popups[0] set from storage mcpaint:calc popup
execute if data storage mcpaint:calc painter_command{command:"popup.new_file.update"} run function mcpaint:studio/popup/update_new_file
execute if data storage mcpaint:calc painter_command{command:"popup.new_file.ok"} run function mcpaint:studio/command/new_file


execute if data storage mcpaint:calc painter_command{command:"open_load_popup"} run function mcpaint:studio/popup/open_load
execute if data storage mcpaint:calc painter_command{command:"popup.load.switch_page"} run function mcpaint:studio/command/load_popup_switch_page
execute if data storage mcpaint:calc painter_command{command:"popup.load.select_work"} run function mcpaint:studio/popup/load_select_work
execute if data storage mcpaint:calc painter_command{command:"popup.load.ok"} run data modify storage mcpaint:calc new_painter_command set value {command:"load"}
execute if data storage mcpaint:calc painter_command{command:"popup.load.ok"} run data modify storage mcpaint:calc new_painter_command.filename set from storage mcpaint:calc popup.filename
execute if data storage mcpaint:calc painter_command{command:"popup.load.ok"} run function mcpaint:studio/popup/close_all
execute if data storage mcpaint:calc painter_command{command:"popup.load.ok"} run data modify storage mcpaint:calc painter_command set from storage mcpaint:calc new_painter_command
execute if data storage mcpaint:calc painter_command{command:"load"} run function mcpaint:studio/command/load

execute if data storage mcpaint:calc painter_command{command:"export"} run function mcpaint:studio/command/export

execute if data storage mcpaint:calc painter_command{command:"undo"} if data entity @s data.history.undo[0] run function mcpaint:studio/command/undo
execute if data storage mcpaint:calc painter_command{command:"redo"} if data entity @s data.history.redo[0] run function mcpaint:studio/command/redo