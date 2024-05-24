data modify storage mcpaint:calc internal.studio.ui.data set from entity @s data

data modify storage mcpaint:calc internal.studio.ui.data.filepath set from storage mcpaint:calc internal.studio.data.filepath
data modify storage mcpaint:calc internal.studio.ui.data.filename_text_parts.name set from storage mcpaint:calc internal.studio.ui.data.filepath.name
data modify storage mcpaint:calc internal.studio.ui.data.filename_text_parts.height set from storage mcpaint:calc internal.studio.data.canvas.height_px
data modify storage mcpaint:calc internal.studio.ui.data.filename_text_parts.width set from storage mcpaint:calc internal.studio.data.canvas.width_px
execute if data storage mcpaint:calc internal.studio.data{unsaved_changes:0b} run data modify storage mcpaint:calc internal.studio.ui.data.filename_text_parts.save_indicator set value ""
data modify entity @e[type=text_display,tag=mcpaint.studio.ui_element.file_menu.filename,distance=..0.1,limit=1] text set from storage mcpaint:calc internal.studio.ui.data.filename_text

data modify entity @s data set from storage mcpaint:calc internal.studio.ui.data