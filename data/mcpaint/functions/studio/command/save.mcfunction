data modify storage mcpaint:calc filepath set value {author:[I;0,0,0,0],name:""}
execute if data entity @s data.painter.UUID run data modify storage mcpaint:calc filepath.author set from entity @s data.painter.UUID
execute if data storage mcpaint:calc painter_command.filename run data modify entity @s data.filename set from storage mcpaint:calc painter_command.filename
execute if data entity @s data.filename run data modify storage mcpaint:calc filepath.name set from entity @s data.filename

data modify storage mcpaint:database write_file set value {canvas:{}}
data modify storage mcpaint:database write_file.canvas.colour_array set from entity @s data.canvas.colour_array
data modify storage mcpaint:database write_file.canvas.resolved_rows set from entity @s data.canvas.resolved_rows
data modify storage mcpaint:database write_file.canvas.resolved_text set from entity @s data.canvas.resolved_text
data modify storage mcpaint:database write_file.canvas.width_px set from entity @s data.canvas.width_px
data modify storage mcpaint:database write_file.canvas.height_px set from entity @s data.canvas.height_px
data modify storage mcpaint:database write_file.canvas.width_blocks set from entity @s data.canvas.width_blocks
data modify storage mcpaint:database write_file.canvas.height_blocks set from entity @s data.canvas.height_blocks
function mcpaint:database/write_file

data modify storage mcpaint:calc message set value '{"translate":"mcpaint.message.saved_as","extra":[{"text":"\\""},{"nbt":"search.author.name","storage":"mcpaint:database"},{"text":"\\"->\\""},{"nbt":"search.work.name","storage":"mcpaint:database"},{"text":"\\""}]}'
function mcpaint:studio/send_message_to_painter
data modify entity @s data.unsaved_changes set value 0b
execute as @e[type=marker,tag=mcpaint.studio.ui_controller,distance=..0.1,limit=1] run function mcpaint:studio/ui/dynamic_elements